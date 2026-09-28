package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
@TargetApi(19)
class TransitionSetKitKat extends TransitionKitKat implements TransitionSetImpl {
    private android.transition.TransitionSet mTransitionSet = new android.transition.TransitionSet();

    public TransitionSetKitKat(TransitionInterface transition) {
        init(transition, this.mTransitionSet);
    }

    @Override // android.support.transition.TransitionSetImpl
    public int getOrdering() {
        return this.mTransitionSet.getOrdering();
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetKitKat setOrdering(int ordering) {
        this.mTransitionSet.setOrdering(ordering);
        return this;
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetKitKat addTransition(TransitionImpl transition) {
        this.mTransitionSet.addTransition(((TransitionKitKat) transition).mTransition);
        return this;
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetKitKat removeTransition(TransitionImpl transition) {
        this.mTransitionSet.removeTransition(((TransitionKitKat) transition).mTransition);
        return this;
    }
}
