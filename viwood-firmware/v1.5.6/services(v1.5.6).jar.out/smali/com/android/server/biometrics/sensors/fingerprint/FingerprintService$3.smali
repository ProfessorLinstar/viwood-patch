.class public Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;
.super Ljava/lang/Object;
.source "FingerprintService.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1220
    iput-object p2, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 1225
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService$3;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    if-nez p2, :cond_0

    .line 1227
    const-string p0, "FingerprintService"

    const-string p1, "Sync virtual enrollments failed"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
