.class public final Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;
.super Ljava/lang/Object;
.source "WallpaperController.java"


# instance fields
.field public mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

.field public mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 1115
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 1117
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1120
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopHideWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    .line 1121
    iput-object v0, p0, Lcom/android/server/wm/WallpaperController$FindWallpaperTargetResult$TopWallpaper;->mTopShowWhenLockedWallpaper:Lcom/android/server/wm/WindowState;

    return-void
.end method
