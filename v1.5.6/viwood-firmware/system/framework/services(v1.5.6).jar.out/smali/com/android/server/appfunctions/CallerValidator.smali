.class public interface abstract Lcom/android/server/appfunctions/CallerValidator;
.super Ljava/lang/Object;
.source "CallerValidator.java"


# virtual methods
.method public abstract validateCallingPackage(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract verifyCallerCanExecuteAppFunction(IILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/infra/AndroidFuture;
.end method

.method public abstract verifyEnterprisePolicyIsAllowed(Landroid/os/UserHandle;Landroid/os/UserHandle;)Z
.end method

.method public abstract verifyTargetUserHandle(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/os/UserHandle;
.end method
