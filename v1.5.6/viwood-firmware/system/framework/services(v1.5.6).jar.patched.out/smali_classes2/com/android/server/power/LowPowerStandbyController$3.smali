.class public Lcom/android/server/power/LowPowerStandbyController$3;
.super Landroid/content/BroadcastReceiver;
.source "LowPowerStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$3;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$3;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p1}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmLock(Lcom/android/server/power/LowPowerStandbyController;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 207
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$3;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$menqueueNotifyAllowlistChangedLocked(Lcom/android/server/power/LowPowerStandbyController;)V

    .line 208
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
