.class public Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;
.super Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.source "RotationWatcherController.java"


# instance fields
.field public final mToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;Landroid/os/IBinder;)V
    .locals 0

    .line 191
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V

    .line 192
    iput-object p3, p0, Lcom/android/server/wm/RotationWatcherController$ProposedRotationListener;->mToken:Landroid/os/IBinder;

    return-void
.end method
