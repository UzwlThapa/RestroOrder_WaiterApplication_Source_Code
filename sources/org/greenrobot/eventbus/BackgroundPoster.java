package org.greenrobot.eventbus;

import android.util.Log;

/* JADX INFO: loaded from: classes.dex */
final class BackgroundPoster implements Runnable {
    private final EventBus eventBus;
    private volatile boolean executorRunning;
    private final PendingPostQueue queue = new PendingPostQueue();

    BackgroundPoster(EventBus eventBus) {
        this.eventBus = eventBus;
    }

    public void enqueue(Subscription subscription, Object event) {
        PendingPost pendingPost = PendingPost.obtainPendingPost(subscription, event);
        synchronized (this) {
            this.queue.enqueue(pendingPost);
            if (!this.executorRunning) {
                this.executorRunning = true;
                this.eventBus.getExecutorService().execute(this);
            }
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        PendingPost pendingPost;
        while (true) {
            try {
                pendingPost = this.queue.poll(1000);
            } catch (InterruptedException e) {
                Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                return;
            } finally {
                this.executorRunning = false;
            }
            if (pendingPost == null) {
                synchronized (this) {
                    pendingPost = this.queue.poll();
                    if (pendingPost == null) {
                        this.executorRunning = false;
                        return;
                    }
                    Log.w("Event", Thread.currentThread().getName() + " was interruppted", e);
                    return;
                }
            }
            this.eventBus.invokeSubscriber(pendingPost);
        }
    }
}
