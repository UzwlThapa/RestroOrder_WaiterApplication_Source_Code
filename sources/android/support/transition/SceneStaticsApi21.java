package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(21)
@TargetApi(21)
class SceneStaticsApi21 extends SceneStaticsImpl {
    SceneStaticsApi21() {
    }

    @Override // android.support.transition.SceneStaticsImpl
    public SceneImpl getSceneForLayout(ViewGroup sceneRoot, int layoutId, Context context) {
        SceneApi21 scene = new SceneApi21();
        scene.mScene = android.transition.Scene.getSceneForLayout(sceneRoot, layoutId, context);
        return scene;
    }
}
