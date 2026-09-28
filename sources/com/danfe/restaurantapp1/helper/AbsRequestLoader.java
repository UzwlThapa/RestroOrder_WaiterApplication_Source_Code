package com.danfe.restaurantapp1.helper;

import android.content.Context;
import com.danfe.restaurantapp1.helper.CustomCallback;
import com.danfe.restaurantapp1.helper.Util;
import retrofit.Callback;
import retrofit.RequestInterceptor;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.android.AndroidLog;
import retrofit.client.OkClient;

/* JADX INFO: loaded from: classes.dex */
public abstract class AbsRequestLoader<D, T> extends AsyncTaskLoaderEx<D> implements CustomCallback.CallbackInterface<T> {
    public String BaseURL;
    T data;
    public String errorMessage;
    public boolean hasError;
    public RestAdapter restAdapter;
    public String token;

    public abstract void onRequestFailure();

    public abstract void onRequestSuccess(T t);

    public AbsRequestLoader(Context context) {
        super(context);
        this.hasError = false;
        this.BaseURL = "";
        this.BaseURL = Util.getBaseUrl(context);
        this.restAdapter = new RestAdapter.Builder().setEndpoint(this.BaseURL).setLogLevel(RestAdapter.LogLevel.FULL).setClient(new OkClient()).setRequestInterceptor(new RequestInterceptor() { // from class: com.danfe.restaurantapp1.helper.AbsRequestLoader.1
            @Override // retrofit.RequestInterceptor
            public void intercept(RequestInterceptor.RequestFacade requestFacade) {
                requestFacade.addHeader("Authorization", "enter");
            }
        }).setLog(new AndroidLog("api-debug")).build();
    }

    public boolean hasError() {
        return this.hasError;
    }

    public void setHasError(boolean hasError) {
        this.hasError = hasError;
    }

    public String getErrorMessage() {
        return this.errorMessage;
    }

    public void setErrorMessage(String errorMessage) {
        this.errorMessage = errorMessage;
    }

    public String getToken() {
        return this.token;
    }

    public RestAdapter getRestAdapter() {
        return this.restAdapter;
    }

    public Callback<T> getCustomCallback() {
        return new CustomCallback(this).getCallback();
    }

    public T getResponseData() {
        return this.data;
    }

    public void setResponseData(T data) {
        this.data = data;
    }

    @Override // com.danfe.restaurantapp1.helper.CustomCallback.CallbackInterface
    public void onCallbackSuccess(T result) {
        setHasError(false);
        onRequestSuccess(result);
    }

    @Override // com.danfe.restaurantapp1.helper.CustomCallback.CallbackInterface
    public void onCallbackFailure(RetrofitError error) {
        setHasError(true);
        setErrorMessage(Util.Api.getErrorMessage(error));
        onRequestFailure();
    }
}
