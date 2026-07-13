.class public interface abstract Lcom/android/server/autofill/ui/FillUi$Callback;
.super Ljava/lang/Object;
.source "FillUi.java"


# virtual methods
.method public abstract cancelSession()V
.end method

.method public abstract dispatchUnhandledKey(Landroid/view/KeyEvent;)V
.end method

.method public abstract onCanceled()V
.end method

.method public abstract onDatasetPicked(Landroid/service/autofill/Dataset;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResponsePicked(Landroid/service/autofill/FillResponse;)V
.end method

.method public abstract onShown(I)V
.end method

.method public abstract requestHideFillUi()V
.end method

.method public abstract requestHideFillUiWhenDestroyed()V
.end method

.method public abstract requestShowFillUi(IILandroid/view/autofill/IAutofillWindowPresenter;)V
.end method

.method public abstract startIntentSender(Landroid/content/IntentSender;)V
.end method
