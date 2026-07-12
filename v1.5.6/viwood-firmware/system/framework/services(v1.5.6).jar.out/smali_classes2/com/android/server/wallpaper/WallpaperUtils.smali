.class public abstract Lcom/android/server/wallpaper/WallpaperUtils;
.super Ljava/lang/Object;
.source "WallpaperUtils.java"


# static fields
.field public static final sPerUserFiles:[Ljava/lang/String;

.field public static sWallpaperId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 36
    const-string/jumbo v0, "wallpaper_lock"

    const-string/jumbo v1, "wallpaper_info.xml"

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    const-string/jumbo v4, "wallpaper_lock_orig"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public static getCurrentWallpaperId()I
    .locals 1

    .line 67
    sget v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    return v0
.end method

.method public static getWallpaperDir(I)Ljava/io/File;
    .locals 0

    .line 49
    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method public static getWallpaperFiles(I)Ljava/util/List;
    .locals 4

    .line 79
    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperUtils;->getWallpaperDir(I)Ljava/io/File;

    move-result-object p0

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 81
    :goto_0
    sget-object v2, Lcom/android/server/wallpaper/WallpaperUtils;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 82
    new-instance v3, Ljava/io/File;

    aget-object v2, v2, v1

    invoke-direct {v3, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static makeWallpaperIdLocked()I
    .locals 1

    .line 58
    :cond_0
    sget v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    if-eqz v0, :cond_0

    return v0
.end method

.method public static setCurrentWallpaperId(I)V
    .locals 0

    .line 75
    sput p0, Lcom/android/server/wallpaper/WallpaperUtils;->sWallpaperId:I

    return-void
.end method
