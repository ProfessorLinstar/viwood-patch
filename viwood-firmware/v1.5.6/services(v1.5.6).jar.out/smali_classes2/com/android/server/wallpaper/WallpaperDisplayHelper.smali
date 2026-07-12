.class public Lcom/android/server/wallpaper/WallpaperDisplayHelper;
.super Ljava/lang/Object;
.source "WallpaperDisplayHelper.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "WallpaperDisplayHelper"


# instance fields
.field public final mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

.field public final mDisplayDatas:Landroid/util/SparseArray;

.field public final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field public final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/hardware/display/DisplayManager;Landroid/view/WindowManager;Lcom/android/server/wm/WindowManagerInternal;Landroid/content/res/Resources;)V
    .locals 1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    .line 68
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 69
    iput-object p3, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    .line 74
    new-instance p1, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    invoke-direct {p1, p2, p4}, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;-><init>(Landroid/view/WindowManager;Landroid/content/res/Resources;)V

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-void
.end method


# virtual methods
.method public ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V
    .locals 0

    .line 99
    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->getMaximumSizeDimension(I)I

    move-result p0

    .line 100
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    if-ge p2, p0, :cond_0

    .line 101
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mWidth:I

    .line 103
    :cond_0
    iget p2, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    if-ge p2, p0, :cond_1

    .line 104
    iput p0, p1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;->mHeight:I

    :cond_1
    return-void
.end method

.method public forEachDisplayData(Ljava/util/function/Consumer;)V
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 119
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    .line 120
    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getDefaultDisplayCurrentOrientation()I
    .locals 2

    .line 88
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 89
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 90
    invoke-static {v0}, Landroid/app/WallpaperManager;->getOrientation(Landroid/graphics/Point;)I

    move-result p0

    return p0
.end method

.method public getDefaultDisplayInfo()Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;
    .locals 0

    .line 175
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    return-object p0
.end method

.method public getDefaultDisplayLargestDimension()I
    .locals 4

    .line 165
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    const/4 v0, -0x1

    const/4 v1, 0x0

    .line 167
    :goto_0
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 168
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Point;

    .line 169
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method

.method public getDefaultDisplaySizes()Landroid/util/SparseArray;
    .locals 0

    .line 160
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDefaultDisplayInfo:Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;

    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDefaultDisplayInfo;->defaultDisplaySizes:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    if-nez v0, :cond_0

    .line 80
    new-instance v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;

    invoke-direct {v0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;-><init>(I)V

    .line 81
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperDisplayHelper$DisplayData;I)V

    .line 82
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    .line 129
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 130
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    return-object v0
.end method

.method public getDisplays()[Landroid/view/Display;
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object p0

    return-object p0
.end method

.method public getMaximumSizeDimension(I)I
    .locals 3

    .line 109
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    .line 111
    sget-object v0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x4

    invoke-static {p1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    .line 114
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result p0

    return p0
.end method

.method public isUsableDisplay(II)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->isUsableDisplay(Landroid/view/Display;I)Z

    move-result p0

    return p0
.end method

.method public isUsableDisplay(Landroid/view/Display;I)Z
    .locals 2

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1, p2}, Landroid/view/Display;->hasAccess(I)Z

    move-result p2

    if-nez p2, :cond_0

    goto :goto_0

    .line 142
    :cond_0
    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 147
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 149
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowManagerInternal;->isHomeSupportedOnDisplay(I)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 152
    throw p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public isValidDisplay(I)Z
    .locals 0

    .line 156
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeDisplayData(I)V
    .locals 0

    .line 94
    iget-object p0, p0, Lcom/android/server/wallpaper/WallpaperDisplayHelper;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method
