package com.danfe.restaurantapp1.helper;

import retrofit.Callback;
import retrofit.RetrofitError;
import retrofit.client.Response;

/* JADX INFO: loaded from: classes.dex */
public class CustomCallback<T> {
    public CallbackInterface callback;

    public interface CallbackInterface<T> {
        void onCallbackFailure(RetrofitError retrofitError);

        void onCallbackSuccess(T t);
    }

    public CustomCallback(CallbackInterface callback) {
        this.callback = callback;
    }

    public Callback<T> getCallback() {
        return new Callback<T>() { // from class: com.danfe.restaurantapp1.helper.CustomCallback.1
            @Override // retrofit.Callback
            public void success(T t, Response response) {
                CustomCallback.this.callback.onCallbackSuccess(t);
            }

            @Override // retrofit.Callback
            public void failure(RetrofitError error) {
                CustomCallback.this.callback.onCallbackFailure(error);
            }
        };
    }
}
