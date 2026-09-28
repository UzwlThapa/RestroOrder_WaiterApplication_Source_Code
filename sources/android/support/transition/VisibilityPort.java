package android.support.transition;

import android.animation.Animator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: loaded from: classes.dex */
@RequiresApi(14)
@TargetApi(14)
abstract class VisibilityPort extends TransitionPort {
    private static final String PROPNAME_VISIBILITY = "android:visibility:visibility";
    private static final String PROPNAME_PARENT = "android:visibility:parent";
    private static final String[] sTransitionProperties = {PROPNAME_VISIBILITY, PROPNAME_PARENT};

    VisibilityPort() {
    }

    @Override // android.support.transition.TransitionPort
    public String[] getTransitionProperties() {
        return sTransitionProperties;
    }

    private void captureValues(TransitionValues transitionValues) {
        int visibility = transitionValues.view.getVisibility();
        transitionValues.values.put(PROPNAME_VISIBILITY, Integer.valueOf(visibility));
        transitionValues.values.put(PROPNAME_PARENT, transitionValues.view.getParent());
    }

    @Override // android.support.transition.TransitionPort
    public void captureStartValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    @Override // android.support.transition.TransitionPort
    public void captureEndValues(TransitionValues transitionValues) {
        captureValues(transitionValues);
    }

    public boolean isVisible(TransitionValues values) {
        if (values == null) {
            return false;
        }
        int visibility = ((Integer) values.values.get(PROPNAME_VISIBILITY)).intValue();
        View parent = (View) values.values.get(PROPNAME_PARENT);
        return visibility == 0 && parent != null;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private android.support.transition.VisibilityPort.VisibilityInfo getVisibilityChangeInfo(android.support.transition.TransitionValues r8, android.support.transition.TransitionValues r9) {
        /*
            r7 = this;
            r6 = 0
            r5 = -1
            r4 = 0
            r3 = 1
            android.support.transition.VisibilityPort$VisibilityInfo r0 = new android.support.transition.VisibilityPort$VisibilityInfo
            r0.<init>()
            r0.visibilityChange = r4
            r0.fadeIn = r4
            if (r8 == 0) goto L5a
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.values
            java.lang.String r2 = "android:visibility:visibility"
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r0.startVisibility = r1
            java.util.Map<java.lang.String, java.lang.Object> r1 = r8.values
            java.lang.String r2 = "android:visibility:parent"
            java.lang.Object r1 = r1.get(r2)
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r0.startParent = r1
        L2b:
            if (r9 == 0) goto L5f
            java.util.Map<java.lang.String, java.lang.Object> r1 = r9.values
            java.lang.String r2 = "android:visibility:visibility"
            java.lang.Object r1 = r1.get(r2)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r0.endVisibility = r1
            java.util.Map<java.lang.String, java.lang.Object> r1 = r9.values
            java.lang.String r2 = "android:visibility:parent"
            java.lang.Object r1 = r1.get(r2)
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            r0.endParent = r1
        L49:
            if (r8 == 0) goto L72
            if (r9 == 0) goto L72
            int r1 = r0.startVisibility
            int r2 = r0.endVisibility
            if (r1 != r2) goto L64
            android.view.ViewGroup r1 = r0.startParent
            android.view.ViewGroup r2 = r0.endParent
            if (r1 != r2) goto L64
        L59:
            return r0
        L5a:
            r0.startVisibility = r5
            r0.startParent = r6
            goto L2b
        L5f:
            r0.endVisibility = r5
            r0.endParent = r6
            goto L49
        L64:
            int r1 = r0.startVisibility
            int r2 = r0.endVisibility
            if (r1 == r2) goto L82
            int r1 = r0.startVisibility
            if (r1 != 0) goto L79
            r0.fadeIn = r4
            r0.visibilityChange = r3
        L72:
            if (r8 != 0) goto L9a
            r0.fadeIn = r3
            r0.visibilityChange = r3
            goto L59
        L79:
            int r1 = r0.endVisibility
            if (r1 != 0) goto L72
            r0.fadeIn = r3
            r0.visibilityChange = r3
            goto L72
        L82:
            android.view.ViewGroup r1 = r0.startParent
            android.view.ViewGroup r2 = r0.endParent
            if (r1 == r2) goto L72
            android.view.ViewGroup r1 = r0.endParent
            if (r1 != 0) goto L91
            r0.fadeIn = r4
            r0.visibilityChange = r3
            goto L72
        L91:
            android.view.ViewGroup r1 = r0.startParent
            if (r1 != 0) goto L72
            r0.fadeIn = r3
            r0.visibilityChange = r3
            goto L72
        L9a:
            if (r9 != 0) goto L59
            r0.fadeIn = r4
            r0.visibilityChange = r3
            goto L59
        */
        throw new UnsupportedOperationException("Method not decompiled: android.support.transition.VisibilityPort.getVisibilityChangeInfo(android.support.transition.TransitionValues, android.support.transition.TransitionValues):android.support.transition.VisibilityPort$VisibilityInfo");
    }

    @Override // android.support.transition.TransitionPort
    public Animator createAnimator(ViewGroup sceneRoot, TransitionValues startValues, TransitionValues endValues) {
        VisibilityInfo visInfo = getVisibilityChangeInfo(startValues, endValues);
        if (!visInfo.visibilityChange) {
            return null;
        }
        boolean isTarget = false;
        if (this.mTargets.size() > 0 || this.mTargetIds.size() > 0) {
            View startView = startValues != null ? startValues.view : null;
            View endView = endValues != null ? endValues.view : null;
            int startId = startView != null ? startView.getId() : -1;
            int endId = endView != null ? endView.getId() : -1;
            isTarget = isValidTarget(startView, (long) startId) || isValidTarget(endView, (long) endId);
        }
        if (!isTarget && visInfo.startParent == null && visInfo.endParent == null) {
            return null;
        }
        if (visInfo.fadeIn) {
            return onAppear(sceneRoot, startValues, visInfo.startVisibility, endValues, visInfo.endVisibility);
        }
        return onDisappear(sceneRoot, startValues, visInfo.startVisibility, endValues, visInfo.endVisibility);
    }

    public Animator onAppear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        return null;
    }

    public Animator onDisappear(ViewGroup sceneRoot, TransitionValues startValues, int startVisibility, TransitionValues endValues, int endVisibility) {
        return null;
    }

    private static class VisibilityInfo {
        ViewGroup endParent;
        int endVisibility;
        boolean fadeIn;
        ViewGroup startParent;
        int startVisibility;
        boolean visibilityChange;

        VisibilityInfo() {
        }
    }
}
