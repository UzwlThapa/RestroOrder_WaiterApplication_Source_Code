package com.danfe.restaurantapp1.helper;

import android.content.Context;
import android.support.v4.content.AsyncTaskLoader;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncTaskLoaderEx<T> extends AsyncTaskLoader<T> {
    T mData;

    public AsyncTaskLoaderEx(Context context) {
        super(context);
    }

    @Override // android.support.v4.content.Loader
    public void deliverResult(T data) {
        if (isReset() && data != null) {
            onReleaseResources(data);
        }
        T oldData = this.mData;
        this.mData = data;
        if (isStarted()) {
            super.deliverResult(data);
        }
        if (oldData != null) {
            onReleaseResources(oldData);
        }
    }

    @Override // android.support.v4.content.Loader
    protected void onStartLoading() {
        super.onStartLoading();
        if (this.mData != null) {
            deliverResult(this.mData);
        }
        if (takeContentChanged() || this.mData == null) {
            forceLoad();
        }
    }

    @Override // android.support.v4.content.Loader
    protected void onStopLoading() {
        cancelLoad();
    }

    @Override // android.support.v4.content.AsyncTaskLoader
    public void onCanceled(T data) {
        super.onCanceled(data);
        onReleaseResources(data);
    }

    @Override // android.support.v4.content.Loader
    protected void onReset() {
        super.onReset();
        onStopLoading();
        if (this.mData != null) {
            onReleaseResources(this.mData);
            this.mData = null;
        }
    }

    protected void onReleaseResources(T data) {
    }
}
