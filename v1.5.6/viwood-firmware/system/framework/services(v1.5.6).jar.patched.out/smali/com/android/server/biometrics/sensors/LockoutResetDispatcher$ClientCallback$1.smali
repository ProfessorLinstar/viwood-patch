.class public Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;
.super Landroid/os/IRemoteCallback$Stub;
.source "LockoutResetDispatcher.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V
    .locals 0

    .line 66
    iput-object p1, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-direct {p0}, Landroid/os/IRemoteCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public sendResult(Landroid/os/Bundle;)V
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback$1;->this$0:Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;

    invoke-static {p0}, Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;->-$$Nest$mreleaseWakelock(Lcom/android/server/biometrics/sensors/LockoutResetDispatcher$ClientCallback;)V

    return-void
.end method
