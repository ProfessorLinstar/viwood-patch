.class public Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;
.super Ljava/lang/Object;
.source "RotationResolverManagerPerUserService.java"

# interfaces
.implements Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# instance fields
.field public final synthetic this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

.field public final synthetic val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;)V
    .locals 0

    .line 124
    iput-object p1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iput-object p2, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 3

    .line 137
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->-$$Nest$fgetmLatencyTracker(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/16 v2, 0x9

    .line 139
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 140
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onFailure(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 140
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onSuccess(I)V
    .locals 3

    .line 128
    iget-object v0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    iget-object v0, v0, Lcom/android/server/infra/AbstractPerUserSystemService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->this$0:Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;

    invoke-static {v1}, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;->-$$Nest$fgetmLatencyTracker(Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/16 v2, 0x9

    .line 130
    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionEnd(I)V

    .line 131
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    iget-object p0, p0, Lcom/android/server/rotationresolver/RotationResolverManagerPerUserService$1;->val$callbackInternal:Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;

    invoke-interface {p0, p1}, Landroid/rotationresolver/RotationResolverInternal$RotationResolverCallbackInternal;->onSuccess(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 131
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
