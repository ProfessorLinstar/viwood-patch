.class public Lcom/android/server/media/MediaRouter2ServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "MediaRouter2ServiceImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;


# direct methods
.method public static synthetic $r8$lambda$qAWYHpsEJf192Tfv_KOCmVmOo6k(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;->-$$Nest$mupdateDiscoveryPreferenceOnHandler(Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/MediaRouter2ServiceImpl;)V
    .locals 0

    .line 163
    iput-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 166
    iget-object p1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmLock(Lcom/android/server/media/MediaRouter2ServiceImpl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 167
    :try_start_0
    iget-object p2, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {p2}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/server/media/MediaRouter2ServiceImpl$1;->this$0:Lcom/android/server/media/MediaRouter2ServiceImpl;

    invoke-static {v1}, Lcom/android/server/media/MediaRouter2ServiceImpl;->-$$Nest$fgetmUserRecords(Lcom/android/server/media/MediaRouter2ServiceImpl;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;

    iget-object v1, v1, Lcom/android/server/media/MediaRouter2ServiceImpl$UserRecord;->mHandler:Lcom/android/server/media/MediaRouter2ServiceImpl$UserHandler;

    .line 170
    new-instance v2, Lcom/android/server/media/MediaRouter2ServiceImpl$1$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/media/MediaRouter2ServiceImpl$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v2, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 173
    :cond_0
    monitor-exit p1

    return-void

    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
