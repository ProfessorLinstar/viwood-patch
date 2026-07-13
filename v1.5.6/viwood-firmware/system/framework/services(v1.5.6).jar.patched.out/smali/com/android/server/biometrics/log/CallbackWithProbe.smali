.class public Lcom/android/server/biometrics/log/CallbackWithProbe;
.super Ljava/lang/Object;
.source "CallbackWithProbe.java"

# interfaces
.implements Lcom/android/server/biometrics/sensors/ClientMonitorCallback;


# instance fields
.field public final mProbe:Lcom/android/server/biometrics/log/Probe;

.field public final mStartWithClient:Z


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/log/Probe;Z)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/Probe;

    .line 37
    iput-boolean p2, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    return-void
.end method


# virtual methods
.method public getProbe()Lcom/android/server/biometrics/log/Probe;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/Probe;

    return-object p0
.end method

.method public onClientFinished(Lcom/android/server/biometrics/sensors/BaseClientMonitor;Z)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/Probe;

    invoke-interface {p0}, Lcom/android/server/biometrics/log/Probe;->destroy()V

    return-void
.end method

.method public onClientStarted(Lcom/android/server/biometrics/sensors/BaseClientMonitor;)V
    .locals 0

    .line 42
    iget-boolean p1, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mStartWithClient:Z

    if-eqz p1, :cond_0

    .line 43
    iget-object p0, p0, Lcom/android/server/biometrics/log/CallbackWithProbe;->mProbe:Lcom/android/server/biometrics/log/Probe;

    invoke-interface {p0}, Lcom/android/server/biometrics/log/Probe;->enable()V

    :cond_0
    return-void
.end method
