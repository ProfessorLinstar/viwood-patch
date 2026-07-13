.class public Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;
.super Ljava/lang/Object;
.source "InternalCleanupClient.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V
    .locals 0

    .line 118
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 2

    .line 121
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove onClientFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", success: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Biometrics/InternalCleanupClient"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    iget-object p1, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p1}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$fgetmUnknownHALTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 123
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    iget-object p1, p0, Lcom/android/server/biometrics/sensors/BaseClientMonitor;->mCallback:Lcom/android/server/biometrics/sensors/ClientMonitorCallback;

    invoke-interface {p1, p0, p2}, Lcom/android/server/biometrics/sensors/ClientMonitorCallback;->onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V

    return-void

    .line 125
    :cond_0
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/InternalCleanupClient$2;->this$0:Lcom/android/server/biometrics/sensors/InternalCleanupClient;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/InternalCleanupClient;->-$$Nest$mstartCleanupUnknownHalTemplates(Lcom/android/server/biometrics/sensors/InternalCleanupClient;)V

    return-void
.end method
