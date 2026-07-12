.class public final Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
.super Ljava/lang/Object;
.source "WallpaperDisplayHelper.java"


# instance fields
.field public final mDisplayId:I

.field public mHeight:I

.field public final mPadding:Landroid/graphics/Rect;

.field public mWidth:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 46
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 47
    iput v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    .line 48
    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mPadding:Landroid/graphics/Rect;

    .line 51
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mDisplayId:I

    return-void
.end method
