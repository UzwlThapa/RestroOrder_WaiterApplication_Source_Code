package android.support.transition;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(19)
@TargetApi(19)
class SceneStaticsKitKat extends SceneStaticsImpl {
    SceneStaticsKitKat() {
    }

    @Override // android.support.transition.SceneStaticsImpl
    public SceneImpl getSceneForLayout(ViewGroup sceneRoot, int layoutId, Context context) {
        SceneKitKat scene = new SceneKitKat();
        scene.mScene = android.transition.Scene.getSceneForLayout(sceneRoot, layoutId, context);
        return scene;
    }
}
