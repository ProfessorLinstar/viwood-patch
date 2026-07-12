.class public Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;
.super Lcom/android/server/biometrics/sensors/BaseClientMonitor;
.source "InvalidationRequesterClient.java"


# instance fields
.field public final mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

.field public final mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

.field public final mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmUtils(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)Lcom/android/server/biometrics/sensors/BiometricUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;Lcom/android/server/biometrics/sensors/BiometricUtils;)V
    .locals 10

    .line 81
    invoke-virtual {p1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move v4, p2

    move v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 80
    invoke-direct/range {v0 .. v9}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;-><init>(Landroid/content/Context;Landroid/os/IBinder;Lcom/android/server/biometrics/sensors/ClientMonitorCallbackConverter;ILjava/lang/String;IILcom/android/server/biometrics/log/BiometricLogger;Lcom/android/server/biometrics/log/BiometricContext;)V

    .line 67
    new-instance p2, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;

    invoke-direct {p2, p0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;-><init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V

    iput-object p2, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    .line 82
    const-class p2, Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/biometrics/BiometricManager;

    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    move-object/from16 p1, p6

    .line 83
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    return-void
.end method


# virtual methods
.method public getProtoEnum()I
    .locals 0

    .line 0
    const/16 p0, 0xe

    return p0
.end method

.method public start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->start(Lcom/android/server/biometrics/sensors/ClientMonitorCallback;)V

    .line 90
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mUtils:Lcom/android/server/biometrics/sensors/BiometricUtils;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 91
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mBiometricManager:Landroid/hardware/biometrics/BiometricManager;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v0

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getSensorId()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->mInvalidationCallback:Landroid/hardware/biometrics/IInvalidationCallback;

    invoke-virtual {p1, v0, v1, p0}, Landroid/hardware/biometrics/BiometricManager;->invalidateAuthenticatorIds(IILandroid/hardware/biometrics/IInvalidationCallback;)V

    return-void
.end method
