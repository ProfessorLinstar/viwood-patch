.class public interface abstract Lcom/android/server/autofill/RemoteAugmentedAutofillService$RemoteAugmentedAutofillServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteAugmentedAutofillService.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# virtual methods
.method public abstract logAugmentedAutofillAuthenticationSelected(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract logAugmentedAutofillSelected(ILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method public abstract logAugmentedAutofillShown(ILandroid/os/Bundle;)V
.end method

.method public abstract resetLastResponse()V
.end method

.method public abstract setLastResponse(I)V
.end method
