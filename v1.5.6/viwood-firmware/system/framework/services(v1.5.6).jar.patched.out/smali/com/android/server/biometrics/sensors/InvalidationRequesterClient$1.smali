.class public Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;
.super Landroid/hardware/biometrics/IInvalidationCallback$Stub;
.source "InvalidationRequesterClient.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-direct {p0}, Landroid/hardware/biometrics/IInvalidationCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 4

    .line 71
    iget-object v0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-static {v0}, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;->-$$Nest$fgetmUtils(Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;)Lcom/android/server/biometrics/sensors/BiometricUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-virtual {v1}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    invoke-virtual {v2}, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->getTargetUserId()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/biometrics/sensors/BiometricUtils;->setInvalidationInProgress(Landroid/content/Context;IZ)V

    .line 73
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InvalidationRequesterClient$1;->this$0:Lcom/android/server/biometrics/sensors/InvalidationRequesterClient;

    iget-object v0, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    const/4 v1, 0x1

    invoke-interface {v0, p0, v1}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void
.end method
