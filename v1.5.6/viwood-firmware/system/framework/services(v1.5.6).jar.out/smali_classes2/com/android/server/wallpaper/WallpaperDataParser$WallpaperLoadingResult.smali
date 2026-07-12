.class public Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;
.super Ljava/lang/Object;
.source "WallpaperDataParser.java"


# instance fields
.field public final mLockWallpaperData:Lcom/android/server/wallpaper/WallpaperData;

.field public final mSuccess:Z

.field public final mSystemWallpaperData:Lcom/android/server/wallpaper/WallpaperData;


# direct methods
.method public constructor <init>(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;Z)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mSystemWallpaperData:Lcom/android/server/wallpaper/WallpaperData;

    .line 118
    iput-object p2, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mLockWallpaperData:Lcom/android/server/wallpaper/WallpaperData;

    .line 119
    iput-boolean p3, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mSuccess:Z

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;ZLcom/android/server/wallpaper/WallpaperDataParser-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;-><init>(Lcom/android/server/wallpaper/WallpaperData;Lcom/android/server/wallpaper/WallpaperData;Z)V

    return-void
.end method


# virtual methods
.method public getLockWallpaperData()Lcom/android/server/wallpaper/WallpaperData;
    .locals 0

    .line 127
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mLockWallpaperData:Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public getSystemWallpaperData()Lcom/android/server/wallpaper/WallpaperData;
    .locals 0

    .line 123
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mSystemWallpaperData:Lcom/android/server/wallpaper/WallpaperData;

    return-object p0
.end method

.method public success()Z
    .locals 0

    .line 131
    iget-boolean p0, p0, Lcom/android/server/wallpaper/WallpaperDataParser$WallpaperLoadingResult;->mSuccess:Z

    return p0
.end method
