.class public Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;
.super Lcom/android/server/wm/RotationWatcherController$RotationWatcher;
.source "RotationWatcherController.java"


# instance fields
.field public final mDisplayId:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;I)V
    .locals 0

    .line 180
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/RotationWatcherController$RotationWatcher;-><init>(Lcom/android/server/wm/WindowManagerService;Landroid/view/IRotationWatcher;)V

    .line 181
    iput p3, p0, Lcom/android/server/wm/RotationWatcherController$DisplayRotationWatcher;->mDisplayId:I

    return-void
.end method
