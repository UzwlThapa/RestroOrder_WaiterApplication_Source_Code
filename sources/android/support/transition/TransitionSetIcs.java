package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@TargetApi(14)
class TransitionSetIcs extends TransitionIcs implements TransitionSetImpl {
    private TransitionSetPort mTransitionSet = new TransitionSetPort();

    public TransitionSetIcs(TransitionInterface transition) {
        init(transition, this.mTransitionSet);
    }

    @Override // android.support.transition.TransitionSetImpl
    public int getOrdering() {
        return this.mTransitionSet.getOrdering();
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetIcs setOrdering(int ordering) {
        this.mTransitionSet.setOrdering(ordering);
        return this;
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetIcs addTransition(TransitionImpl transition) {
        this.mTransitionSet.addTransition(((TransitionIcs) transition).mTransition);
        return this;
    }

    @Override // android.support.transition.TransitionSetImpl
    public TransitionSetIcs removeTransition(TransitionImpl transition) {
        this.mTransitionSet.removeTransition(((TransitionIcs) transition).mTransition);
        return this;
    }
}
