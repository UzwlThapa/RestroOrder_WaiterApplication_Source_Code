package android.support.transition;

import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@TargetApi(14)
class TransitionManagerStaticsIcs extends TransitionManagerStaticsImpl {
    TransitionManagerStaticsIcs() {
    }

    @Override // android.support.transition.TransitionManagerStaticsImpl
    public void go(SceneImpl scene) {
        TransitionManagerPort.go(((SceneIcs) scene).mScene);
    }

    @Override // android.support.transition.TransitionManagerStaticsImpl
    public void go(SceneImpl scene, TransitionImpl transition) {
        TransitionManagerPort.go(((SceneIcs) scene).mScene, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }

    @Override // android.support.transition.TransitionManagerStaticsImpl
    public void beginDelayedTransition(ViewGroup sceneRoot) {
        TransitionManagerPort.beginDelayedTransition(sceneRoot);
    }

    @Override // android.support.transition.TransitionManagerStaticsImpl
    public void beginDelayedTransition(ViewGroup sceneRoot, TransitionImpl transition) {
        TransitionManagerPort.beginDelayedTransition(sceneRoot, transition == null ? null : ((TransitionIcs) transition).mTransition);
    }
}
