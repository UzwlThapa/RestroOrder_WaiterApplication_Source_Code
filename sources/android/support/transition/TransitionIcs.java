package android.support.transition;

import android.animation.Animator;
import android.animation.TimeInterpolator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.transition.TransitionPort;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@TargetApi(14)
class TransitionIcs extends TransitionImpl {
    private CompatListener mCompatListener;
    TransitionInterface mExternalTransition;
    TransitionPort mTransition;

    TransitionIcs() {
    }

    @Override // android.support.transition.TransitionImpl
    public void init(TransitionInterface external, Object internal) {
        this.mExternalTransition = external;
        if (internal == null) {
            this.mTransition = new TransitionWrapper(external);
        } else {
            this.mTransition = (TransitionPort) internal;
        }
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl addListener(TransitionInterfaceListener listener) {
        if (this.mCompatListener == null) {
            this.mCompatListener = new CompatListener();
            this.mTransition.addListener(this.mCompatListener);
        }
        this.mCompatListener.addListener(listener);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl removeListener(TransitionInterfaceListener listener) {
        if (this.mCompatListener != null) {
            this.mCompatListener.removeListener(listener);
            if (this.mCompatListener.isEmpty()) {
                this.mTransition.removeListener(this.mCompatListener);
                this.mCompatListener = null;
            }
        }
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl addTarget(View target) {
        this.mTransition.addTarget(target);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl addTarget(int targetId) {
        this.mTransition.addTarget(targetId);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public void captureEndValues(TransitionValues transitionValues) {
        this.mTransition.captureEndValues(transitionValues);
    }

    @Override // android.support.transition.TransitionImpl
    public void captureStartValues(TransitionValues transitionValues) {
        this.mTransition.captureStartValues(transitionValues);
    }

    @Override // android.support.transition.TransitionImpl
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        return this.mTransition.createAnimator(sceneRoot, startValues, endValues);
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeChildren(View target, boolean exclude) {
        this.mTransition.excludeChildren(target, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeChildren(int targetId, boolean exclude) {
        this.mTransition.excludeChildren(targetId, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeChildren(Class type, boolean exclude) {
        this.mTransition.excludeChildren(type, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeTarget(View target, boolean exclude) {
        this.mTransition.excludeTarget(target, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeTarget(int targetId, boolean exclude) {
        this.mTransition.excludeTarget(targetId, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl excludeTarget(Class type, boolean exclude) {
        this.mTransition.excludeTarget(type, exclude);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public long getDuration() {
        return this.mTransition.getDuration();
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl setDuration(long duration) {
        this.mTransition.setDuration(duration);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TimeInterpolator getInterpolator() {
        return this.mTransition.getInterpolator();
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl setInterpolator(TimeInterpolator interpolator) {
        this.mTransition.setInterpolator(interpolator);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public String getName() {
        return this.mTransition.getName();
    }

    @Override // android.support.transition.TransitionImpl
    public long getStartDelay() {
        return this.mTransition.getStartDelay();
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl setStartDelay(long startDelay) {
        this.mTransition.setStartDelay(startDelay);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public List<Integer> getTargetIds() {
        return this.mTransition.getTargetIds();
    }

    @Override // android.support.transition.TransitionImpl
    public List<View> getTargets() {
        return this.mTransition.getTargets();
    }

    @Override // android.support.transition.TransitionImpl
    public String[] getTransitionProperties() {
        return this.mTransition.getTransitionProperties();
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionValues getTransitionValues(View view, boolean start) {
        return this.mTransition.getTransitionValues(view, start);
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl removeTarget(View target) {
        this.mTransition.removeTarget(target);
        return this;
    }

    @Override // android.support.transition.TransitionImpl
    public TransitionImpl removeTarget(int targetId) {
        this.mTransition.removeTarget(targetId);
        return this;
    }

    public String toString() {
        return this.mTransition.toString();
    }

    private static class TransitionWrapper extends TransitionPort {
        private TransitionInterface mTransition;

        public TransitionWrapper(TransitionInterface transition) {
            this.mTransition = transition;
        }

        @Override // android.support.transition.TransitionPort
        public void captureStartValues(TransitionValues transitionValues) {
            this.mTransition.captureStartValues(transitionValues);
        }

        @Override // android.support.transition.TransitionPort
        public void captureEndValues(TransitionValues transitionValues) {
            this.mTransition.captureEndValues(transitionValues);
        }

        @Override // android.support.transition.TransitionPort
        public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
            return this.mTransition.createAnimator(sceneRoot, startValues, endValues);
        }
    }

    private class CompatListener implements TransitionPort.TransitionListener {
        private final ArrayList<TransitionInterfaceListener> mListeners = new ArrayList<>();

        CompatListener() {
        }

        public void addListener(TransitionInterfaceListener listener) {
            this.mListeners.add(listener);
        }

        public void removeListener(TransitionInterfaceListener listener) {
            this.mListeners.remove(listener);
        }

        public boolean isEmpty() {
            return this.mListeners.isEmpty();
        }

        @Override // android.support.transition.TransitionPort.TransitionListener
        public void onTransitionStart(TransitionPort transition) {
            for (TransitionInterfaceListener listener : this.mListeners) {
                listener.onTransitionStart(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override // android.support.transition.TransitionPort.TransitionListener
        public void onTransitionEnd(TransitionPort transition) {
            for (TransitionInterfaceListener listener : this.mListeners) {
                listener.onTransitionEnd(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override // android.support.transition.TransitionPort.TransitionListener
        public void onTransitionCancel(TransitionPort transition) {
            for (TransitionInterfaceListener listener : this.mListeners) {
                listener.onTransitionCancel(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override // android.support.transition.TransitionPort.TransitionListener
        public void onTransitionPause(TransitionPort transition) {
            for (TransitionInterfaceListener listener : this.mListeners) {
                listener.onTransitionPause(TransitionIcs.this.mExternalTransition);
            }
        }

        @Override // android.support.transition.TransitionPort.TransitionListener
        public void onTransitionResume(TransitionPort transition) {
            for (TransitionInterfaceListener listener : this.mListeners) {
                listener.onTransitionResume(TransitionIcs.this.mExternalTransition);
            }
        }
    }
}
