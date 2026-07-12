.class public Lcom/android/server/net/NetworkPolicyManagerService$4;
.super Landroid/app/UidObserver;
.source "NetworkPolicyManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 0

    .line 1232
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0}, Landroid/app/UidObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final isUidStateChangeRelevant(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;IJI)Z
    .locals 4

    .line 1242
    iget-wide v0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procStateSeq:J

    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    return v3

    :cond_0
    cmp-long p3, p3, v0

    const/4 p4, 0x0

    if-gtz p3, :cond_1

    return p4

    .line 1250
    :cond_1
    iget p3, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->procState:I

    const/4 v0, 0x3

    if-le p3, v0, :cond_b

    if-gt p2, v0, :cond_2

    goto :goto_4

    :cond_2
    const/4 v0, 0x5

    if-gt p3, v0, :cond_3

    move v1, v3

    goto :goto_0

    :cond_3
    move v1, p4

    :goto_0
    if-gt p2, v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_4
    move v0, p4

    :goto_1
    if-eq v1, v0, :cond_5

    return v3

    :cond_5
    const/16 v0, 0xc

    if-lt p3, v0, :cond_6

    move v1, v3

    goto :goto_2

    :cond_6
    move v1, p4

    :goto_2
    if-lt p2, v0, :cond_7

    move v2, v3

    goto :goto_3

    :cond_7
    move v2, p4

    :goto_3
    if-eq v1, v2, :cond_8

    return v3

    .line 1273
    :cond_8
    iget-object v1, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v1}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUseDifferentDelaysForBackgroundChain(Lcom/android/server/net/NetworkPolicyManagerService;)Z

    move-result v1

    if-eqz v1, :cond_9

    if-lt p2, v0, :cond_9

    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1275
    invoke-static {v0, p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetBackgroundTransitioningDelay(Lcom/android/server/net/NetworkPolicyManagerService;I)J

    move-result-wide v0

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    .line 1276
    invoke-static {p0, p3}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$mgetBackgroundTransitioningDelay(Lcom/android/server/net/NetworkPolicyManagerService;I)J

    move-result-wide p2

    cmp-long p0, v0, p2

    if-gez p0, :cond_9

    return v3

    .line 1283
    :cond_9
    iget p0, p1, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->capability:I

    and-int/lit8 p0, p0, 0x28

    and-int/lit8 p1, p5, 0x28

    if-eq p0, p1, :cond_a

    return v3

    :cond_a
    return p4

    :cond_b
    :goto_4
    return v3
.end method

.method public onUidGone(IZ)V
    .locals 1

    .line 1310
    iget-object p2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {p2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object p2

    monitor-enter p2

    .line 1311
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1312
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1313
    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 p2, 0x65

    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception p0

    .line 1312
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onUidStateChanged(IIJI)V
    .locals 8

    .line 1292
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1293
    :try_start_0
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    if-nez v0, :cond_0

    .line 1295
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;

    const/4 v2, 0x0

    invoke-direct {v0, v2}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;-><init>(Lcom/android/server/net/NetworkPolicyManagerService-IA;)V

    .line 1296
    iget-object v2, p0, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->-$$Nest$fgetmUidStateCallbackInfos(Lcom/android/server/net/NetworkPolicyManagerService;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    move-object v2, p0

    move v4, p2

    move-wide v5, p3

    move v7, p5

    move-object v3, v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 1298
    :goto_0
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$4;->isUidStateChangeRelevant(Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;IJI)Z

    move-result p0

    move-object p2, v2

    move-object v2, v3

    if-eqz p0, :cond_1

    move v3, p1

    .line 1299
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->update(IIJI)V

    .line 1300
    iget-boolean p0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    if-nez p0, :cond_1

    .line 1301
    iget-object p0, p2, Lcom/android/server/net/NetworkPolicyManagerService$4;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object p0, p0, Lcom/android/server/net/NetworkPolicyManagerService;->mUidEventHandler:Landroid/os/Handler;

    const/16 p1, 0x64

    const/4 p2, 0x0

    invoke-virtual {p0, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    .line 1302
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    const/4 p0, 0x1

    .line 1303
    iput-boolean p0, v2, Lcom/android/server/net/NetworkPolicyManagerService$UidStateCallbackInfo;->isPending:Z

    .line 1306
    :cond_1
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
