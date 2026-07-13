.class public Lcom/android/server/power/LowPowerStandbyController$2;
.super Landroid/content/BroadcastReceiver;
.source "LowPowerStandbyController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public constructor <init>(Lcom/android/server/power/LowPowerStandbyController;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$2;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 184
    const-string p1, "android.intent.extra.REPLACING"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 188
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 189
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 191
    :goto_0
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$2;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p2}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$fgetmLock(Lcom/android/server/power/LowPowerStandbyController;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/LowPowerStandbyController$2;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-virtual {v0}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    move-result-object v0

    .line 193
    invoke-virtual {v0}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 194
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$2;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    invoke-static {p0}, Lcom/android/server/power/LowPowerStandbyController;->-$$Nest$menqueueNotifyAllowlistChangedLocked(Lcom/android/server/power/LowPowerStandbyController;)V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 196
    :cond_2
    :goto_1
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
