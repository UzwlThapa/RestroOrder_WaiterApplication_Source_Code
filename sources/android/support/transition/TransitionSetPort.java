package android.support.transition;

import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.transition.TransitionPort;
import android.util.AndroidRuntimeException;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@TargetApi(14)
class TransitionSetPort extends TransitionPort {
    public static final int ORDERING_SEQUENTIAL = 1;
    public static final int ORDERING_TOGETHER = 0;
    int mCurrentListeners;
    ArrayList<TransitionPort> mTransitions = new ArrayList<>();
    boolean mStarted = false;
    private boolean mPlayTogether = true;

    public int getOrdering() {
        return this.mPlayTogether ? 0 : 1;
    }

    public TransitionSetPort setOrdering(int ordering) {
        switch (ordering) {
            case 0:
                this.mPlayTogether = true;
                return this;
            case 1:
                this.mPlayTogether = false;
                return this;
            default:
                throw new AndroidRuntimeException("Invalid parameter for TransitionSet ordering: " + ordering);
        }
    }

    public TransitionSetPort addTransition(TransitionPort transition) {
        if (transition != null) {
            this.mTransitions.add(transition);
            transition.mParent = this;
            if (this.mDuration >= 0) {
                transition.setDuration(this.mDuration);
            }
        }
        return this;
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort setDuration(long duration) {
        super.setDuration(duration);
        if (this.mDuration >= 0) {
            int numTransitions = this.mTransitions.size();
            for (int i = 0; i < numTransitions; i++) {
                this.mTransitions.get(i).setDuration(duration);
            }
        }
        return this;
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort setStartDelay(long startDelay) {
        return (TransitionSetPort) super.setStartDelay(startDelay);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort setInterpolator(TimeInterpolator interpolator) {
        return (TransitionSetPort) super.setInterpolator(interpolator);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort addTarget(View target) {
        return (TransitionSetPort) super.addTarget(target);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort addTarget(int targetId) {
        return (TransitionSetPort) super.addTarget(targetId);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort addListener(TransitionPort.TransitionListener listener) {
        return (TransitionSetPort) super.addListener(listener);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort removeTarget(int targetId) {
        return (TransitionSetPort) super.removeTarget(targetId);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort removeTarget(View target) {
        return (TransitionSetPort) super.removeTarget(target);
    }

    @Override // android.support.transition.TransitionPort
    public TransitionSetPort removeListener(TransitionPort.TransitionListener listener) {
        return (TransitionSetPort) super.removeListener(listener);
    }

    public TransitionSetPort removeTransition(TransitionPort transition) {
        this.mTransitions.remove(transition);
        transition.mParent = null;
        return this;
    }

    private void setupStartEndListeners() {
        TransitionSetListener listener = new TransitionSetListener(this);
        for (TransitionPort childTransition : this.mTransitions) {
            childTransition.addListener(listener);
        }
        this.mCurrentListeners = this.mTransitions.size();
    }

    @Override // android.support.transition.TransitionPort
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void createAnimators(ViewGroup sceneRoot, TransitionValuesMaps startValues, TransitionValuesMaps endValues) {
        for (TransitionPort childTransition : this.mTransitions) {
            childTransition.createAnimators(sceneRoot, startValues, endValues);
        }
    }

    @Override // android.support.transition.TransitionPort
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void runAnimators() {
        if (this.mTransitions.isEmpty()) {
            start();
            end();
            return;
        }
        setupStartEndListeners();
        if (!this.mPlayTogether) {
            for (int i = 1; i < this.mTransitions.size(); i++) {
                TransitionPort previousTransition = this.mTransitions.get(i - 1);
                final TransitionPort nextTransition = this.mTransitions.get(i);
                previousTransition.addListener(new TransitionPort.TransitionListenerAdapter() { // from class: android.support.transition.TransitionSetPort.1
                    @Override // android.support.transition.TransitionPort.TransitionListenerAdapter, android.support.transition.TransitionPort.TransitionListener
                    public void onTransitionEnd(TransitionPort transition) {
                        nextTransition.runAnimators();
                        transition.removeListener(this);
                    }
                });
            }
            TransitionPort firstTransition = this.mTransitions.get(0);
            if (firstTransition != null) {
                firstTransition.runAnimators();
                return;
            }
            return;
        }
        for (TransitionPort childTransition : this.mTransitions) {
            childTransition.runAnimators();
        }
    }

    @Override // android.support.transition.TransitionPort
    public void captureStartValues(TransitionValues transitionValues) {
        int targetId = transitionValues.view.getId();
        if (isValidTarget(transitionValues.view, targetId)) {
            for (TransitionPort childTransition : this.mTransitions) {
                if (childTransition.isValidTarget(transitionValues.view, targetId)) {
                    childTransition.captureStartValues(transitionValues);
                }
            }
        }
    }

    @Override // android.support.transition.TransitionPort
    public void captureEndValues(TransitionValues transitionValues) {
        int targetId = transitionValues.view.getId();
        if (isValidTarget(transitionValues.view, targetId)) {
            for (TransitionPort childTransition : this.mTransitions) {
                if (childTransition.isValidTarget(transitionValues.view, targetId)) {
                    childTransition.captureEndValues(transitionValues);
                }
            }
        }
    }

    @Override // android.support.transition.TransitionPort
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void pause(View sceneRoot) {
        super.pause(sceneRoot);
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            this.mTransitions.get(i).pause(sceneRoot);
        }
    }

    @Override // android.support.transition.TransitionPort
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    public void resume(View sceneRoot) {
        super.resume(sceneRoot);
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            this.mTransitions.get(i).resume(sceneRoot);
        }
    }

    @Override // android.support.transition.TransitionPort
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
    protected void cancel() {
        super.cancel();
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            this.mTransitions.get(i).cancel();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.transition.TransitionPort
    public TransitionSetPort setSceneRoot(ViewGroup sceneRoot) {
        super.setSceneRoot(sceneRoot);
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            this.mTransitions.get(i).setSceneRoot(sceneRoot);
        }
        return this;
    }

    @Override // android.support.transition.TransitionPort
    void setCanRemoveViews(boolean canRemoveViews) {
        super.setCanRemoveViews(canRemoveViews);
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            this.mTransitions.get(i).setCanRemoveViews(canRemoveViews);
        }
    }

    @Override // android.support.transition.TransitionPort
    String toString(String indent) {
        String result = super.toString(indent);
        for (int i = 0; i < this.mTransitions.size(); i++) {
            result = result + "\n" + this.mTransitions.get(i).toString(indent + "  ");
        }
        return result;
    }

    @Override // android.support.transition.TransitionPort
    /* JADX INFO: renamed from: clone, reason: merged with bridge method [inline-methods] */
    public TransitionSetPort mo1clone() {
        TransitionSetPort clone = (TransitionSetPort) super.mo1clone();
        clone.mTransitions = new ArrayList<>();
        int numTransitions = this.mTransitions.size();
        for (int i = 0; i < numTransitions; i++) {
            clone.addTransition(this.mTransitions.get(i).mo1clone());
        }
        return clone;
    }

    static class TransitionSetListener extends TransitionPort.TransitionListenerAdapter {
        TransitionSetPort mTransitionSet;

        TransitionSetListener(TransitionSetPort transitionSet) {
            this.mTransitionSet = transitionSet;
        }

        @Override // android.support.transition.TransitionPort.TransitionListenerAdapter, android.support.transition.TransitionPort.TransitionListener
        public void onTransitionStart(TransitionPort transition) {
            if (!this.mTransitionSet.mStarted) {
                this.mTransitionSet.start();
                this.mTransitionSet.mStarted = true;
            }
        }

        @Override // android.support.transition.TransitionPort.TransitionListenerAdapter, android.support.transition.TransitionPort.TransitionListener
        public void onTransitionEnd(TransitionPort transition) {
            TransitionSetPort transitionSetPort = this.mTransitionSet;
            transitionSetPort.mCurrentListeners--;
            if (this.mTransitionSet.mCurrentListeners == 0) {
                this.mTransitionSet.mStarted = false;
                this.mTransitionSet.end();
            }
            transition.removeListener(this);
        }
    }
}
