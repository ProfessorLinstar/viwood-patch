.class public Lcom/android/server/biometrics/sensors/BaseClientMonitor$1;
.super Ljava/lang/Object;
.source "BaseClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 76
    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientFinished: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 70
    const-string p0, "BaseClientMonitor"

    const-string/jumbo p1, "mCallback onClientStarted: called before set (should not happen)"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
