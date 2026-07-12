.class public abstract Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.super Ljava/lang/Object;
.source "RotationWatcherController.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mOwnerUid:I

.field public final mWatcher:Landroid/view/IRotationWatcher;

.field public final mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V
    .locals 1

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 199
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mOwnerUid:I

    .line 202
    iput-object p1, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    .line 203
    iput-object p2, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowManagerService;->removeRotationWatcher(Landroid/view/IRotationWatcher;)V

    return-void
.end method

.method public notifyRotation(I)V
    .locals 0

    .line 208
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {p0, p1}, Landroid/view/IRotationWatcher;->onRotationChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public unlinkToDeath()V
    .locals 2

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;->mWatcher:Landroid/view/IRotationWatcher;

    invoke-interface {v0}, Landroid/view/IRotationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
