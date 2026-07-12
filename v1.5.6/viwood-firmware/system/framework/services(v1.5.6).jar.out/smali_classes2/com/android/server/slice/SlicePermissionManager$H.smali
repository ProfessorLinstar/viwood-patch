.class public final Lcom/android/server/slice/SlicePermissionManager$H;
.super Landroid/os/Handler;
.source "SlicePermissionManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/slice/SlicePermissionManager;


# direct methods
.method public constructor <init>(Lcom/android/server/slice/SlicePermissionManager;Landroid/os/Looper;)V
    .locals 0

    .line 388
    iput-object p1, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    .line 389
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 394
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 413
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedProviders(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 407
    :cond_1
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {v0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 408
    :try_start_1
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmCachedClients(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArrayMap;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 404
    :cond_2
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/slice/SlicePermissionManager$PkgUser;

    invoke-static {p0, p1}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$mhandleRemove(Lcom/android/server/slice/SlicePermissionManager;Lcom/android/server/slice/SlicePermissionManager$PkgUser;)V

    return-void

    .line 401
    :cond_3
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-virtual {p0}, Lcom/android/server/slice/SlicePermissionManager;->handlePersist()V

    return-void

    .line 396
    :cond_4
    iget-object v0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    monitor-enter v0

    .line 397
    :try_start_2
    iget-object p0, p0, Lcom/android/server/slice/SlicePermissionManager$H;->this$0:Lcom/android/server/slice/SlicePermissionManager;

    invoke-static {p0}, Lcom/android/server/slice/SlicePermissionManager;->-$$Nest$fgetmDirty(Lcom/android/server/slice/SlicePermissionManager;)Landroid/util/ArraySet;

    move-result-object p0

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/slice/DirtyTracker$Persistable;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 398
    monitor-exit v0

    return-void

    :catchall_2
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw p0
.end method
