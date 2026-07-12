.class public Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;
.super Landroid/os/Handler;
.source "AuthStateDenialTimer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/location/contexthub/AuthStateDenialTimer;Landroid/os/Looper;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    .line 87
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 92
    iget-object p1, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    monitor-enter p1

    .line 93
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-static {v0}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->-$$Nest$fgetmCancelled(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 94
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-static {v0}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->-$$Nest$fgetmStopTimeInFuture(Lcom/android/server/location/contexthub/AuthStateDenialTimer;)J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    .line 98
    iget-object p0, p0, Lcom/android/server/location/contexthub/AuthStateDenialTimer$CountDownHandler;->this$0:Lcom/android/server/location/contexthub/AuthStateDenialTimer;

    invoke-virtual {p0}, Lcom/android/server/location/contexthub/AuthStateDenialTimer;->onFinish()V

    goto :goto_0

    :cond_1
    const/4 v2, 0x1

    .line 100
    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 102
    :goto_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
