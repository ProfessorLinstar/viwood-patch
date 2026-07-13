.class public Lcom/android/server/am/AppProfiler$BgHandler;
.super Landroid/os/Handler;
.source "AppProfiler.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/AppProfiler;


# direct methods
.method public constructor <init>(Lcom/android/server/am/AppProfiler;Landroid/os/Looper;)V
    .locals 0

    .line 597
    iput-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    .line 598
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 603
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {v0}, Lcom/android/server/am/AppProfiler;->-$$Nest$fgetmService(Lcom/android/server/am/AppProfiler;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 619
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-static {p0, v1, p1}, Lcom/android/server/am/AppProfiler;->-$$Nest$mhandleMemoryPressureChangedLocked(Lcom/android/server/am/AppProfiler;II)V

    .line 620
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 615
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mstopDeferPss(Lcom/android/server/am/AppProfiler;)V

    return-void

    .line 612
    :cond_2
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mdeferPssForActivityStart(Lcom/android/server/am/AppProfiler;)V

    return-void

    .line 605
    :cond_3
    iget-object p1, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-virtual {p1}, Lcom/android/server/am/AppProfiler;->isProfilingPss()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 606
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectPssInBackground(Lcom/android/server/am/AppProfiler;)V

    return-void

    .line 608
    :cond_4
    iget-object p0, p0, Lcom/android/server/am/AppProfiler$BgHandler;->this$0:Lcom/android/server/am/AppProfiler;

    invoke-static {p0}, Lcom/android/server/am/AppProfiler;->-$$Nest$mcollectRssInBackground(Lcom/android/server/am/AppProfiler;)V

    return-void
.end method
