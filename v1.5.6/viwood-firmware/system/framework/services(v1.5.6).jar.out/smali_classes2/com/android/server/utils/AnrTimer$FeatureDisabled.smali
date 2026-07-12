.class public Lcom/android/server/utils/AnrTimer$FeatureDisabled;
.super Lcom/android/server/utils/AnrTimer$FeatureSwitch;
.source "AnrTimer.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/utils/AnrTimer;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/AnrTimer;)V
    .locals 1

    .line 466
    iput-object p1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/AnrTimer$FeatureSwitch;-><init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/AnrTimer;Lcom/android/server/utils/AnrTimer-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/utils/AnrTimer$FeatureDisabled;-><init>(Lcom/android/server/utils/AnrTimer;)V

    return-void
.end method


# virtual methods
.method public accept(Ljava/lang/Object;)Lcom/android/server/utils/AnrTimer$TimerLock;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public cancel(Ljava/lang/Object;)Z
    .locals 1

    .line 477
    iget-object v0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result p0

    invoke-virtual {v0, p0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    const/4 p0, 0x1

    return p0
.end method

.method public close()V
    .locals 0

    .line 0
    return-void
.end method

.method public discard(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public dump(Landroid/util/IndentingPrintWriter;Z)V
    .locals 5

    .line 508
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmLock(Lcom/android/server/utils/AnrTimer;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    .line 509
    :try_start_0
    const-string/jumbo v0, "started=%d maxStarted=%d running=%d expired=%d errors=%d\n"

    iget-object v1, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v1}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result v1

    .line 510
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmMaxStarted(Lcom/android/server/utils/AnrTimer;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTimerIdMap(Lcom/android/server/utils/AnrTimer;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {v4}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalExpired(Lcom/android/server/utils/AnrTimer;)I

    move-result v4

    .line 511
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmTotalErrors(Lcom/android/server/utils/AnrTimer;)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {v1, v2, v3, v4, p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 509
    invoke-virtual {p1, v0, p0}, Landroid/util/IndentingPrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 512
    monitor-exit p2

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public enabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public release(Lcom/android/server/utils/AnrTimer$TimerLock;)V
    .locals 0

    .line 0
    return-void
.end method

.method public start(Ljava/lang/Object;IIJ)V
    .locals 0

    .line 470
    iget-object p2, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p2}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object p2

    iget-object p3, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p3}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmWhat(Lcom/android/server/utils/AnrTimer;)I

    move-result p3

    invoke-virtual {p2, p3, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 471
    iget-object p0, p0, Lcom/android/server/utils/AnrTimer$FeatureDisabled;->this$0:Lcom/android/server/utils/AnrTimer;

    invoke-static {p0}, Lcom/android/server/utils/AnrTimer;->-$$Nest$fgetmHandler(Lcom/android/server/utils/AnrTimer;)Landroid/os/Handler;

    move-result-object p0

    invoke-virtual {p0, p1, p4, p5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
