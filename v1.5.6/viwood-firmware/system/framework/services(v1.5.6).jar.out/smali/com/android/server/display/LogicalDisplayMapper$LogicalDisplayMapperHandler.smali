.class public Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;
.super Landroid/os/Handler;
.source "LogicalDisplayMapper.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/display/LogicalDisplayMapper;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LogicalDisplayMapper;Landroid/os/Looper;)V
    .locals 1

    .line 1416
    iput-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 1417
    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1422
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    return-void

    .line 1424
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-static {p1}, Lcom/android/server/display/LogicalDisplayMapper;->-$$Nest$fgetmSyncRoot(Lcom/android/server/display/LogicalDisplayMapper;)Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1425
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/LogicalDisplayMapper$LogicalDisplayMapperHandler;->this$0:Lcom/android/server/display/LogicalDisplayMapper;

    invoke-static {p0, v0}, Lcom/android/server/display/LogicalDisplayMapper;->-$$Nest$mfinishStateTransitionLocked(Lcom/android/server/display/LogicalDisplayMapper;Z)V

    .line 1426
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
