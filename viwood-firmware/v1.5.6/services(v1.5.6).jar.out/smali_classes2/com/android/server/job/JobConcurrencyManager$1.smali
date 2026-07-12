.class public Lcom/android/server/job/JobConcurrencyManager$1;
.super Landroid/content/BroadcastReceiver;
.source "JobConcurrencyManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobConcurrencyManager;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobConcurrencyManager;)V
    .locals 0

    .line 572
    iput-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 p1, 0x1

    const/4 v0, 0x0

    .line 575
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :sswitch_1
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_2
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    move v1, p1

    goto :goto_0

    :sswitch_3
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    move v1, v0

    :goto_0
    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 591
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 592
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 593
    :try_start_0
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string p2, "battery saver"

    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 594
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 583
    :pswitch_1
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmPowerManager(Lcom/android/server/job/JobConcurrencyManager;)Landroid/os/PowerManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 584
    iget-object p1, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$fgetmLock(Lcom/android/server/job/JobConcurrencyManager;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 585
    :try_start_1
    iget-object p2, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopUnexemptedJobsForDoze(Lcom/android/server/job/JobConcurrencyManager;)V

    .line 586
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    const-string p2, "deep doze"

    invoke-static {p0, p2}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$mstopOvertimeJobsLocked(Lcom/android/server/job/JobConcurrencyManager;Ljava/lang/String;)V

    .line 587
    monitor-exit p1

    return-void

    :catchall_1
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    :cond_4
    :goto_1
    return-void

    .line 577
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p0, p1}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    return-void

    .line 580
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/job/JobConcurrencyManager$1;->this$0:Lcom/android/server/job/JobConcurrencyManager;

    invoke-static {p0, v0}, Lcom/android/server/job/JobConcurrencyManager;->-$$Nest$monInteractiveStateChanged(Lcom/android/server/job/JobConcurrencyManager;Z)V

    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x33e5d967 -> :sswitch_1
        0x6a0dd473 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
