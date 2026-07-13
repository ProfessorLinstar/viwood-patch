.class public final Lcom/android/server/input/PointerIconCache;
.super Ljava/lang/Object;
.source "PointerIconCache.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PointerIconCache"


# instance fields
.field public final mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

.field public final mContext:Landroid/content/Context;

.field public final mDisplayContexts:Landroid/util/SparseArray;

.field public final mDisplayDensities:Landroid/util/SparseIntArray;

.field public final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field public final mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

.field public final mNative:Lcom/android/server/input/NativeInputManagerService;

.field public mPointerIconFillStyle:I

.field public mPointerIconScale:F

.field public mPointerIconStrokeStyle:I

.field public final mUiThreadHandler:Landroid/os/Handler;

.field public mUseLargePointerIcons:Z


# direct methods
.method public static synthetic $r8$lambda$2YggVB1gczKFYVmfopZRS-vDzlE(Lcom/android/server/input/PointerIconCache;IF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->lambda$setAccessibilityScaleFactor$4(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$7dN69jtffxl50qDVew3T2LrxdDs(Lcom/android/server/input/PointerIconCache;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerScale$3(F)V

    return-void
.end method

.method public static synthetic $r8$lambda$DPcCnkkmK1pCTBxywm2Yo23R20Q(Lcom/android/server/input/PointerIconCache;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setUseLargePointerIcons$0(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$Y3IzVQEd4YNHZUe4PF8CewYw1h8(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerFillStyle$1(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$j9J3glSzYprX7nOwuvy5tXVUMS8(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->lambda$setPointerStrokeStyle$2(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAccessibilityScaleFactorPerDisplay(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseDoubleArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayContexts(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDisplayDensities(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseIntArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLoadedPointerIconsByDisplayAndType(Lcom/android/server/input/PointerIconCache;)Landroid/util/SparseArray;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mhandleDisplayChanged(Lcom/android/server/input/PointerIconCache;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleDisplayChanged(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDisplayDensityLocked(Lcom/android/server/input/PointerIconCache;I)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;)V
    .locals 1

    .line 105
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/input/PointerIconCache;-><init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/input/NativeInputManagerService;Landroid/os/Handler;)V
    .locals 2

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 63
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    .line 65
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    .line 67
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 70
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 73
    iput v0, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 76
    new-instance v0, Landroid/util/SparseDoubleArray;

    invoke-direct {v0}, Landroid/util/SparseDoubleArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    .line 79
    new-instance v0, Lcom/android/server/input/PointerIconCache$1;

    invoke-direct {v0, p0}, Lcom/android/server/input/PointerIconCache$1;-><init>(Lcom/android/server/input/PointerIconCache;)V

    iput-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    .line 111
    iput-object p1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    .line 112
    iput-object p2, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    .line 113
    iput-object p3, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final getContextForDisplayLocked(I)Landroid/content/Context;
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 190
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 193
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-nez v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 199
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 198
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 200
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_2

    .line 203
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    return-object p0

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v0

    .line 207
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    return-object v0
.end method

.method public getLoadedPointerIcon(II)Landroid/view/PointerIcon;
    .locals 8

    .line 160
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 161
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    .line 164
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 165
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 167
    :cond_0
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/PointerIcon;

    if-nez v2, :cond_1

    .line 169
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->getContextForDisplayLocked(I)Landroid/content/Context;

    move-result-object v2

    .line 170
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 171
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 172
    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    invoke-static {v4}, Landroid/view/PointerIcon;->vectorFillStyleToResource(I)I

    move-result v4

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 174
    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    invoke-static {v4}, Landroid/view/PointerIcon;->vectorStrokeStyleToResource(I)I

    move-result v4

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 176
    iget v4, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    iget-object v5, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 177
    invoke-virtual {v5, p1, v6, v7}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v5

    double-to-float p1, v5

    mul-float/2addr v4, p1

    .line 178
    new-instance p1, Landroid/view/ContextThemeWrapper;

    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iget-boolean p0, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    invoke-static {p1, p2, p0, v4}, Landroid/view/PointerIcon;->getLoadedSystemIcon(Landroid/content/Context;IZF)Landroid/view/PointerIcon;

    move-result-object v2

    .line 180
    invoke-virtual {v1, p2, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 182
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    monitor-exit v0

    return-object v2

    .line 183
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleAccessibilityScaleFactor(IF)V
    .locals 5

    .line 286
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 287
    :try_start_0
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, p1, v2, v3}, Landroid/util/SparseDoubleArray;->get(ID)D

    move-result-wide v1

    float-to-double v3, p2

    cmpl-double p2, v1, v3

    if-nez p2, :cond_0

    .line 288
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 290
    :cond_0
    iget-object p2, p0, Lcom/android/server/input/PointerIconCache;->mAccessibilityScaleFactorPerDisplay:Landroid/util/SparseDoubleArray;

    invoke-virtual {p2, p1, v3, v4}, Landroid/util/SparseDoubleArray;->put(ID)V

    .line 292
    iget-object p2, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 293
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 293
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleDisplayChanged(I)V
    .locals 4

    .line 214
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 215
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->updateDisplayDensityLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 216
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 220
    :cond_0
    sget-object v1, Lcom/android/server/input/PointerIconCache;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Reloading pointer icons due to density change on display: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_1

    .line 223
    monitor-exit v0

    return-void

    .line 225
    :cond_1
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 226
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayContexts:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 227
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 228
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 227
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleSetPointerFillStyle(I)V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 247
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    if-ne v1, p1, :cond_0

    .line 248
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 250
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconFillStyle:I

    .line 252
    iget-object p1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 253
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 254
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 253
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleSetPointerScale(F)V
    .locals 2

    .line 273
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 274
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    cmpl-float v1, v1, p1

    if-nez v1, :cond_0

    .line 275
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 277
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconScale:F

    .line 279
    iget-object p1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 280
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 280
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleSetPointerStrokeStyle(I)V
    .locals 2

    .line 260
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 261
    :try_start_0
    iget v1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    if-ne v1, p1, :cond_0

    .line 262
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 264
    :cond_0
    iput p1, p0, Lcom/android/server/input/PointerIconCache;->mPointerIconStrokeStyle:I

    .line 266
    iget-object p1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 267
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 267
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleSetUseLargePointerIcons(Z)V
    .locals 2

    .line 233
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter v0

    .line 234
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    if-ne v1, p1, :cond_0

    .line 235
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 237
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/input/PointerIconCache;->mUseLargePointerIcons:Z

    .line 239
    iget-object p1, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 241
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mNative:Lcom/android/server/input/NativeInputManagerService;

    invoke-interface {p0}, Lcom/android/server/input/NativeInputManagerService;->reloadPointerIcons()V

    return-void

    .line 240
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$setAccessibilityScaleFactor$4(IF)V
    .locals 0

    .line 152
    invoke-virtual {p0, p1, p2}, Lcom/android/server/input/PointerIconCache;->handleAccessibilityScaleFactor(IF)V

    return-void
.end method

.method public final synthetic lambda$setPointerFillStyle$1(I)V
    .locals 0

    .line 137
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerFillStyle(I)V

    return-void
.end method

.method public final synthetic lambda$setPointerScale$3(F)V
    .locals 0

    .line 147
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerScale(F)V

    return-void
.end method

.method public final synthetic lambda$setPointerStrokeStyle$2(I)V
    .locals 0

    .line 142
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetPointerStrokeStyle(I)V

    return-void
.end method

.method public final synthetic lambda$setUseLargePointerIcons$0(Z)V
    .locals 0

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/server/input/PointerIconCache;->handleSetUseLargePointerIcons(Z)V

    return-void
.end method

.method public monitor()V
    .locals 1

    .line 127
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mLoadedPointerIconsByDisplayAndType:Landroid/util/SparseArray;

    monitor-enter p0

    :try_start_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setAccessibilityScaleFactor(IF)V
    .locals 2

    .line 152
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/input/PointerIconCache;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPointerFillStyle(I)V
    .locals 2

    .line 137
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/input/PointerIconCache;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPointerScale(F)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/input/PointerIconCache;F)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setPointerStrokeStyle(I)V
    .locals 2

    .line 142
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/input/PointerIconCache;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUseLargePointerIcons(Z)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/input/PointerIconCache$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/input/PointerIconCache;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public systemRunning()V
    .locals 4

    .line 117
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 118
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    iget-object v1, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mUiThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 120
    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getDisplays()[Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 122
    iget-object v2, p0, Lcom/android/server/input/PointerIconCache;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    aget-object v3, v0, v1

    invoke-virtual {v3}, Landroid/view/Display;->getDisplayId()I

    move-result v3

    invoke-interface {v2, v3}, Landroid/hardware/display/DisplayManager$DisplayListener;->onDisplayAdded(I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final updateDisplayDensityLocked(I)Z
    .locals 3

    .line 301
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    .line 302
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    .line 301
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 303
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 307
    :cond_0
    new-instance v2, Landroid/view/DisplayInfo;

    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 308
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 309
    iget-object v0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 310
    iget v2, v2, Landroid/view/DisplayInfo;->logicalDensityDpi:I

    if-ne v0, v2, :cond_1

    return v1

    .line 313
    :cond_1
    iget-object p0, p0, Lcom/android/server/input/PointerIconCache;->mDisplayDensities:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const/4 p0, 0x1

    return p0
.end method
