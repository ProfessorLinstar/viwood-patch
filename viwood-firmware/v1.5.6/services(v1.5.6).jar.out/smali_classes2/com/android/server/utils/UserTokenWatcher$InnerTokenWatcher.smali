.class public final Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;
.super Landroid/os/TokenWatcher;
.source "UserTokenWatcher.java"


# instance fields
.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/utils/UserTokenWatcher;


# direct methods
.method public constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    .line 143
    invoke-direct {p0, p3, p4}, Landroid/os/TokenWatcher;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    .line 144
    iput p2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;Lcom/android/server/utils/UserTokenWatcher-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;-><init>(Lcom/android/server/utils/UserTokenWatcher;ILandroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public acquired()V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;

    move-result-object v0

    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/utils/UserTokenWatcher$Callback;->acquired(I)V

    return-void
.end method

.method public released()V
    .locals 3

    .line 156
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->-$$Nest$fgetmCallback(Lcom/android/server/utils/UserTokenWatcher;)Lcom/android/server/utils/UserTokenWatcher$Callback;

    move-result-object v0

    iget v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-interface {v0, v1}, Lcom/android/server/utils/UserTokenWatcher$Callback;->released(I)V

    .line 158
    iget-object v0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v0}, Lcom/android/server/utils/UserTokenWatcher;->-$$Nest$fgetmWatchers(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v0

    monitor-enter v0

    .line 159
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v1}, Lcom/android/server/utils/UserTokenWatcher;->-$$Nest$fgetmWatchers(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/TokenWatcher;

    if-eqz v1, :cond_0

    .line 160
    invoke-virtual {v1}, Landroid/os/TokenWatcher;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->this$0:Lcom/android/server/utils/UserTokenWatcher;

    invoke-static {v1}, Lcom/android/server/utils/UserTokenWatcher;->-$$Nest$fgetmWatchers(Lcom/android/server/utils/UserTokenWatcher;)Landroid/util/SparseArray;

    move-result-object v1

    iget p0, p0, Lcom/android/server/utils/UserTokenWatcher$InnerTokenWatcher;->mUserId:I

    invoke-virtual {v1, p0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 163
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
