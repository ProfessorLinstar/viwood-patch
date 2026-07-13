.class public Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;
.super Landroid/os/Handler;
.source "LowPowerStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/Looper;)V
    .locals 0

    .line 1175
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 1176
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1181
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 p1, 0x5

    if-eq v0, p1, :cond_0

    return-void

    .line 1201
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyStandbyPortsChanged(Lcom/android/server/power/LowPowerStandbyController;)V

    return-void

    .line 1197
    :cond_1
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1198
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmPhoneCallServiceTracker(Lcom/android/server/power/LowPowerStandbyController;)Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/power/LowPowerStandbyController$PhoneCallServiceTracker;->foregroundServiceStateChanged(I)V

    return-void

    .line 1194
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/PowerManager$LowPowerStandbyPolicy;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyPolicyChanged(Lcom/android/server/power/LowPowerStandbyController;Landroid/os/PowerManager$LowPowerStandbyPolicy;)V

    return-void

    .line 1190
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [I

    .line 1191
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyAllowlistChanged(Lcom/android/server/power/LowPowerStandbyController;[I)V

    return-void

    .line 1186
    :cond_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 1187
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0, p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$mnotifyActiveChanged(Lcom/android/server/power/LowPowerStandbyController;Z)V

    return-void

    .line 1183
    :cond_5
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$LowPowerStandbyHandler;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$monStandbyTimeoutExpired(Lcom/android/server/power/LowPowerStandbyController;)V

    return-void
.end method
