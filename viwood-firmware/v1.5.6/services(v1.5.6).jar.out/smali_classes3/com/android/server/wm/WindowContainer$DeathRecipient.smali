.class public Lcom/android/server/wm/WindowContainer$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowContainer.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mOwner:Landroid/os/IBinder;

.field public final mSourceIds:Landroid/util/ArraySet;

.field public final synthetic this$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowContainer;Landroid/os/IBinder;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 440
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    .line 443
    iput-object p2, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public addSourceId(I)V
    .locals 0

    .line 447
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public binderDied()V
    .locals 7

    .line 460
    iget-object v0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 462
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ltz v1, :cond_0

    .line 463
    iget-object v5, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object v6, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    invoke-static {v5, v6}, Lcom/android/server/wm/WindowContainer;->-$$Nest$mremoveLocalInsetsSource(Lcom/android/server/wm/WindowContainer;I)Z

    move-result v5

    or-int/2addr v4, v5

    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 465
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 466
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    invoke-interface {v1, p0, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 467
    iget-object v1, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    invoke-static {v1}, Lcom/android/server/wm/WindowContainer;->-$$Nest$fgetmInsetsOwnerDeathRecipientMap(Lcom/android/server/wm/WindowContainer;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mOwner:Landroid/os/IBinder;

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v4, :cond_1

    .line 468
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->this$0:Lcom/android/server/wm/WindowContainer;

    iget-object p0, p0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz p0, :cond_1

    .line 469
    invoke-virtual {p0}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/InsetsStateController;->updateAboveInsetsState(Z)V

    .line 471
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasSource()Z
    .locals 0

    .line 455
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public removeSourceId(I)V
    .locals 0

    .line 451
    iget-object p0, p0, Lcom/android/server/wm/WindowContainer$DeathRecipient;->mSourceIds:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method
