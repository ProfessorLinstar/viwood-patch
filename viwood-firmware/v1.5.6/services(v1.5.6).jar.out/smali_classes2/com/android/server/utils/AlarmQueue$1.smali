.class public Lcom/android/server/utils/AlarmQueue$1;
.super Ljava/lang/Object;
.source "AlarmQueue.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AlarmQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AlarmQueue;)V
    .locals 0

    .line 100
    iput-object p1, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 103
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 105
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmContext(Lcom/android/server/utils/AlarmQueue;)Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    .line 111
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v1, 0x7530

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmLock(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 117
    :try_start_0
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-nez v0, :cond_1

    .line 118
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmTriggerTimeElapsed(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v3

    .line 121
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmMinTimeBetweenAlarmsMs(Lcom/android/server/utils/AlarmQueue;)J

    move-result-wide v5

    .line 122
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmExactAlarm(Lcom/android/server/utils/AlarmQueue;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 125
    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v6}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v7

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    :cond_2
    const-wide/16 v7, 0x2

    .line 128
    div-long/2addr v5, v7

    iget-object v0, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v0}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmAlarmTag(Lcom/android/server/utils/AlarmQueue;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/utils/AlarmQueue$1;->this$0:Lcom/android/server/utils/AlarmQueue;

    invoke-static {v8}, Lcom/android/server/utils/AlarmQueue;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AlarmQueue;)Landroid/os/Handler;

    move-result-object v9

    const/4 v2, 0x3

    invoke-virtual/range {v1 .. v9}, Landroid/app/AlarmManager;->setWindow(IJJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void

    .line 122
    :goto_0
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
