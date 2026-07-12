.class public Lcom/android/server/wm/WindowManagerFlags;
.super Ljava/lang/Object;
.source "WindowManagerFlags.java"


# instance fields
.field public final mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

.field public final mAodTransition:Z

.field public final mEnsureWallpaperInTransitions:Z

.field public final mInsetsDecoupledConfiguration:Z

.field public final mRespectNonTopVisibleFixedOrientation:Z

.field public final mWallpaperOffsetAsync:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mWallpaperOffsetAsync:Z

    .line 52
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mAllowsScreenSizeDecoupledFromStatusBarAndCutout:Z

    .line 54
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mInsetsDecoupledConfiguration:Z

    .line 57
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mRespectNonTopVisibleFixedOrientation:Z

    const/4 v1, 0x0

    .line 61
    iput-boolean v1, p0, Lcom/android/server/wm/WindowManagerFlags;->mAodTransition:Z

    .line 68
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    const-string v3, "android.hardware.type.watch"

    invoke-interface {v2, v3, v1}, Landroid/content/pm/IPackageManager;->hasSystemFeature(Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    :catchall_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowManagerFlags;->mEnsureWallpaperInTransitions:Z

    return-void
.end method
