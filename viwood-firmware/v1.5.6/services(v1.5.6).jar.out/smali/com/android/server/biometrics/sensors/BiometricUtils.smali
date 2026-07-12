.class public interface abstract Lcom/android/server/biometrics/sensors/BiometricUtils;
.super Ljava/lang/Object;
.source "BiometricUtils.java"


# virtual methods
.method public abstract addBiometricForUser(Landroid/content/Context;ILandroid/hardware/biometrics/BiometricAuthenticator$Identifier;)V
.end method

.method public abstract deleteStateForUser(I)V
.end method

.method public abstract getBiometricsForUser(Landroid/content/Context;I)Ljava/util/List;
.end method

.method public abstract hasValidBiometricUserState(Landroid/content/Context;I)Z
.end method

.method public abstract removeBiometricForUser(Landroid/content/Context;II)V
.end method

.method public abstract setInvalidationInProgress(Landroid/content/Context;IZ)V
.end method
