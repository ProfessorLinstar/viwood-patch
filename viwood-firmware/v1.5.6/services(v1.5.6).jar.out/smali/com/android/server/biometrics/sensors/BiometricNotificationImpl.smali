.class public Lcom/android/server/biometrics/sensors/BiometricNotificationImpl;
.super Ljava/lang/Object;
.source "BiometricNotificationImpl.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/BiometricNotification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public sendFaceEnrollNotification(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFaceEnrollNotification(Landroid/content/Context;)V

    return-void
.end method

.method public sendFpEnrollNotification(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-static {p1}, Lcom/android/server/biometrics/sensors/BiometricNotificationUtils;->showFingerprintEnrollNotification(Landroid/content/Context;)V

    return-void
.end method
