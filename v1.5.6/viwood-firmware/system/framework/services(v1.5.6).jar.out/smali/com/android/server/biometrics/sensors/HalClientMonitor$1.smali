.class public Lcom/android/server/biometrics/sensors/HalClientMonitor$1;
.super Ljava/lang/Object;
.source "HalClientMonitor.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/HalClientMonitor;)V
    .locals 0

    .line 103
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/HalClientMonitor$1;->this$0:Lcom/android/server/biometrics/sensors/HalClientMonitor;

    invoke-virtual {p0}, Lcom/android/server/biometrics/sensors/HalClientMonitor;->unsubscribeBiometricContext()V

    return-void
.end method
