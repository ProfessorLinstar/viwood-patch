.class public final Lcom/android/server/wm/AccessibilityWindowsPopulator;
.super Landroid/window/WindowInfosListener;
.source "AccessibilityWindowsPopulator.java"


# static fields
.field public static final TAG:Ljava/lang/String;

.field public static final sTempFloats:[F


# instance fields
.field public final mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

.field public final mCurrentMagnificationSpec:Landroid/util/SparseArray;

.field public final mDisplayInfos:Landroid/util/SparseArray;

.field public final mHandler:Landroid/os/Handler;

.field public final mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

.field public final mLock:Ljava/lang/Object;

.field public final mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

.field public final mPreviousMagnificationSpec:Landroid/util/SparseArray;

.field public final mService:Lcom/android/server/wm/WindowManagerService;

.field public final mTempFloat1:[F

.field public final mTempFloat2:[F

.field public final mTempFloat3:[F

.field public final mTempMatrix1:Landroid/graphics/Matrix;

.field public final mTempMatrix2:Landroid/graphics/Matrix;

.field public final mVisibleWindows:Ljava/util/List;

.field public mWindowsNotificationEnabled:Z

.field public final mWindowsTransformMatrixMap:Ljava/util/Map;


# direct methods
.method public static synthetic $r8$lambda$0ZOdxFPt5mH0JXsyDze2JXR79BQ(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public static synthetic $r8$lambda$BH-4a-VMnVRz4jfRJ_1ndkIpLBQ(Ljava/io/PrintWriter;Landroid/view/MagnificationSpec;)V
    .locals 0

    .line 581
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$FmzIIhm3p1e0E4EMWm4iYLyOTkY(Ljava/io/PrintWriter;Ljava/lang/String;II)V
    .locals 0

    .line 579
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    filled-new-array {p1, p2}, [Ljava/lang/Object;

    move-result-object p1

    const-string p2, "%sDisplay #%d: "

    invoke-virtual {p0, p2, p1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    return-void
.end method

.method public static synthetic $r8$lambda$Ov2B_jJ4JELYpcSrjDOt0IVOvc8(Ljava/io/PrintWriter;Landroid/graphics/Matrix;)V
    .locals 0

    .line 588
    invoke-virtual {p1, p0}, Landroid/graphics/Matrix;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eJUaCl84C2crO8ycCGqh-Wfj1do(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 0

    .line 586
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fdndmmlyHS8VNpoJhf5Ye85Qano(Ljava/io/PrintWriter;Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 0

    .line 584
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/AccessibilityWindowsPopulator;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mforceUpdateWindows(Lcom/android/server/wm/AccessibilityWindowsPopulator;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->forceUpdateWindows()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyWindowsChanged(Lcom/android/server/wm/AccessibilityWindowsPopulator;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsTempFloats()[F
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-class v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    const/16 v0, 0x9

    .line 69
    new-array v0, v0, [F

    sput-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/AccessibilityController;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Landroid/window/WindowInfosListener;-><init>()V

    .line 73
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    .line 78
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    .line 80
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    .line 81
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    .line 92
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 93
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    const/16 v0, 0x9

    .line 94
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 95
    new-array v1, v0, [F

    iput-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 96
    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 100
    iput-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 101
    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 102
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;

    iget-object p1, p1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$MyHandler;-><init>(Lcom/android/server/wm/AccessibilityWindowsPopulator;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 3

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 524
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 525
    invoke-static {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 529
    sget-object v0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t inverse the magnification spec matrix with the magnification spec = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    :cond_0
    return-void
.end method

.method public static getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V
    .locals 4

    const/4 v0, 0x0

    .line 310
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 311
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 312
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 313
    invoke-virtual {p2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 315
    invoke-static {v2, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 316
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static hasWindowsChanged(Ljava/util/List;Ljava/util/List;)Z
    .locals 8

    const/4 v0, 0x1

    if-eqz p1, :cond_6

    .line 324
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-eq v1, v2, :cond_0

    goto :goto_3

    .line 328
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_5

    .line 333
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/InputWindowHandle;

    invoke-virtual {v4}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v4

    .line 334
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/InputWindowHandle;

    invoke-virtual {v5}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v4, :cond_1

    move v6, v0

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    if-eqz v5, :cond_2

    move v7, v0

    goto :goto_2

    :cond_2
    move v7, v2

    :goto_2
    if-eq v6, v7, :cond_3

    return v0

    :cond_3
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 345
    invoke-interface {v4, v5}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    return v0

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    return v2

    :cond_6
    :goto_3
    return v0
.end method

.method public static transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 1

    .line 538
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 539
    iget v0, p0, Landroid/view/MagnificationSpec;->scale:F

    invoke-virtual {p1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 540
    iget v0, p0, Landroid/view/MagnificationSpec;->offsetX:F

    iget p0, p0, Landroid/view/MagnificationSpec;->offsetY:F

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-void
.end method


# virtual methods
.method public final computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V
    .locals 0

    .line 477
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix1:Landroid/graphics/Matrix;

    .line 478
    invoke-static {p2, p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->transformMagnificationSpecToMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 480
    new-instance p2, Landroid/graphics/Matrix;

    iget-object p1, p1, Landroid/view/InputWindowHandle;->transform:Landroid/graphics/Matrix;

    invoke-direct {p2, p1}, Landroid/graphics/Matrix;-><init>(Landroid/graphics/Matrix;)V

    .line 481
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 482
    invoke-virtual {p2, p3}, Landroid/graphics/Matrix;->preConcat(Landroid/graphics/Matrix;)Z

    .line 484
    invoke-virtual {p2, p4}, Landroid/graphics/Matrix;->getValues([F)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 9

    .line 565
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "AccessibilityWindowsPopulator"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 569
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mWindowsNotificationEnabled: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 570
    iget-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 572
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 573
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "No visible windows"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 575
    :cond_0
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 576
    const-string v0, " visible windows: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 578
    :goto_0
    new-instance v7, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;

    invoke-direct {v7}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda0;-><init>()V

    .line 579
    new-instance v0, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda1;-><init>(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 581
    new-instance p2, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;

    invoke-direct {p2, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda2;-><init>(Ljava/io/PrintWriter;)V

    .line 583
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    const-string v6, "display info"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda3;

    invoke-direct {v8, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda3;-><init>(Ljava/io/PrintWriter;)V

    move-object v3, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    move-object p1, v7

    .line 585
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    const-string v6, "window handles on display"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;

    invoke-direct {v8, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda4;-><init>(Ljava/io/PrintWriter;)V

    move-object v7, v0

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 587
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    const-string v6, "magnification spec matrix"

    new-instance v8, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda5;

    invoke-direct {v8, v3}, Lcom/android/server/wm/AccessibilityWindowsPopulator$$ExternalSyntheticLambda5;-><init>(Ljava/io/PrintWriter;)V

    move-object v7, p1

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 589
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    const-string v6, "current magnification spec"

    move-object v8, p2

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 591
    iget-object v5, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    const-string v6, "previous magnification spec"

    invoke-static/range {v3 .. v8}, Lcom/android/internal/util/DumpUtils;->dumpSparseArray(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/SparseArray;Ljava/lang/String;Lcom/android/internal/util/DumpUtils$KeyDumper;Lcom/android/internal/util/DumpUtils$ValueDumper;)V

    .line 593
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V
    .locals 5

    const/4 v0, 0x0

    .line 358
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 359
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    .line 360
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 362
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    new-instance v4, Landroid/view/MagnificationSpec;

    invoke-direct {v4}, Landroid/view/MagnificationSpec;-><init>()V

    .line 367
    invoke-virtual {v4, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 369
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/MagnificationSpec;

    if-nez v3, :cond_1

    .line 372
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 373
    invoke-static {v4, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 374
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v3, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 377
    :cond_1
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 378
    invoke-virtual {v1, v3}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 380
    invoke-virtual {p0, v2, v4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public final forceUpdateWindows()V
    .locals 4

    .line 553
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 555
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 556
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 557
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 558
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 560
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 561
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->notifyWindowsChanged(Ljava/util/List;)V

    return-void

    .line 560
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final generateInverseMatrixBasedOnProperMagnificationSpecForDisplay(Ljava/util/List;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;)V
    .locals 4

    .line 392
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 393
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempMatrix2:Landroid/graphics/Matrix;

    .line 394
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 395
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v3

    .line 396
    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 397
    invoke-virtual {p0, v2, p2, p3, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final generateMagnificationSpecInverseMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V
    .locals 2

    .line 436
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat1:[F

    .line 437
    invoke-virtual {p0, p1, p2, p4, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 439
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat2:[F

    .line 440
    invoke-virtual {p0, p1, p3, p4, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->computeIdentityMatrix(Landroid/view/InputWindowHandle;Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;[F)V

    .line 443
    new-instance p4, Landroid/graphics/Matrix;

    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 444
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 446
    invoke-static {p2, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 452
    iget-object p3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    iget v0, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->remove(I)V

    .line 453
    invoke-virtual {p2}, Landroid/view/MagnificationSpec;->isNop()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 454
    iget-object p2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    iget p3, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p2, p3}, Landroid/util/SparseArray;->remove(I)V

    .line 455
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void

    .line 459
    :cond_0
    invoke-static {p3, p4}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->generateInverseMatrix(Landroid/view/MagnificationSpec;Landroid/graphics/Matrix;)V

    .line 463
    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    iget p1, p1, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {p0, p1, p4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final getWindowTransformMatrix(Landroid/os/IBinder;Landroid/graphics/Matrix;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/graphics/Matrix;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    const/4 p0, 0x0

    return p0

    .line 413
    :cond_1
    invoke-virtual {p2, p0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    const/4 p0, 0x1

    return p0
.end method

.method public final getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;
    .locals 6

    .line 196
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 197
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 199
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 200
    invoke-virtual {v2}, Landroid/view/InputWindowHandle;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 201
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mWindowMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowState;

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_0

    .line 204
    invoke-virtual {v3}, Lcom/android/server/wm/WindowState;->shouldMagnify()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 205
    new-instance v4, Landroid/graphics/Matrix;

    invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V

    .line 206
    sget-object v5, Lcom/android/server/wm/AccessibilityWindowsPopulator;->sTempFloats:[F

    invoke-virtual {v3, v5, v4}, Lcom/android/server/wm/WindowState;->getTransformationMatrix([FLandroid/graphics/Matrix;)V

    .line 207
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 211
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 212
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final notifyWindowsChanged(Ljava/util/List;)V
    .locals 4

    .line 544
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 546
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 547
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mAccessibilityController:Lcom/android/server/wm/AccessibilityController;

    .line 548
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 547
    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/AccessibilityController;->performComputeChangedWindowsNot(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onWindowInfosChanged([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 0

    .line 153
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    return-void
.end method

.method public final onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V
    .locals 9

    .line 158
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 160
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 161
    iget v5, v4, Landroid/view/InputWindowHandle;->inputConfig:I

    and-int/lit8 v6, v5, 0x2

    const/4 v7, 0x1

    if-nez v6, :cond_0

    move v6, v7

    goto :goto_1

    :cond_0
    move v6, v2

    :goto_1
    const/high16 v8, 0x10000

    and-int/2addr v5, v8

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v7, v2

    .line 163
    :goto_2
    iget-object v5, v4, Landroid/view/InputWindowHandle;->touchableRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    .line 164
    iget-object v8, v4, Landroid/view/InputWindowHandle;->frame:Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-nez v5, :cond_2

    if-nez v8, :cond_2

    .line 166
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getWindowsTransformMatrix(Ljava/util/List;)Ljava/util/HashMap;

    move-result-object p1

    .line 172
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 173
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 174
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 176
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 177
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 179
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 180
    array-length p1, p2

    :goto_3
    if-ge v2, p1, :cond_4

    aget-object v0, p2, v2

    .line 181
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    iget v4, v0, Landroid/window/WindowInfosListener$DisplayInfo;->mDisplayId:I

    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :catchall_0
    move-exception p0

    goto :goto_4

    .line 184
    :cond_4
    iget-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_6

    .line 185
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 186
    iget-object p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1c2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 190
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V

    .line 192
    :cond_6
    monitor-exit v1

    return-void

    :goto_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final populateVisibleWindowHandlesAndNotifyWindowsChangeIfNeeded()V
    .locals 6

    .line 268
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 270
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/InputWindowHandle;

    .line 271
    iget v3, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 275
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 276
    iget v4, v2, Landroid/view/InputWindowHandle;->displayId:I

    invoke-virtual {v0, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 278
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 280
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->findMagnificationSpecInverseMatrixIfNeeded(Landroid/util/SparseArray;)V

    .line 282
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 283
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-static {v1, v0, v2}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->getDisplaysForWindowsChanged(Ljava/util/List;Landroid/util/SparseArray;Landroid/util/SparseArray;)V

    .line 287
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    const/4 v2, 0x0

    .line 288
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 289
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 290
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-virtual {v4, v3, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 293
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 294
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 295
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    .line 296
    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_3
    return-void

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 302
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x23

    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public populateVisibleWindowsOnScreenLocked(ILjava/util/List;)V
    .locals 7

    .line 115
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    .line 116
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    .line 118
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 119
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 121
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 123
    monitor-exit v2

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 125
    :cond_0
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Matrix;

    invoke-virtual {v0, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 127
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/window/WindowInfosListener$DisplayInfo;

    if-eqz v4, :cond_1

    .line 129
    iget-object v4, v4, Landroid/window/WindowInfosListener$DisplayInfo;->mTransform:Landroid/graphics/Matrix;

    invoke-virtual {v1, v4}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 131
    :cond_1
    sget-object v4, Lcom/android/server/wm/AccessibilityWindowsPopulator;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The displayInfo of this displayId ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ") called back from the surface fligner is null"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    .line 137
    iget-object p1, p1, Lcom/android/server/wm/DisplayContent;->mShellRoots:Landroid/util/SparseArray;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/wm/ShellRoot;

    if-eqz p1, :cond_2

    .line 139
    invoke-virtual {p1}, Lcom/android/server/wm/ShellRoot;->getAccessibilityWindowToken()Landroid/os/IBinder;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    .line 141
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/InputWindowHandle;

    .line 142
    iget-object v4, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 143
    invoke-static {v4, v3, v0, p1, v1}, Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;->initializeData(Lcom/android/server/wm/WindowManagerService;Landroid/view/InputWindowHandle;Landroid/graphics/Matrix;Landroid/os/IBinder;Landroid/graphics/Matrix;)Lcom/android/server/wm/AccessibilityWindowsPopulator$AccessibilityWindow;

    move-result-object v3

    .line 146
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    return-void

    .line 134
    :goto_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final releaseResources()V
    .locals 1

    .line 598
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mInputWindowHandlesOnDisplays:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 599
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mMagnificationSpecInverseMatrix:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 600
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mVisibleWindows:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 601
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mDisplayInfos:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 602
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 603
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 604
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsTransformMatrixMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    .line 605
    iput-boolean v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    .line 606
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    return-void
.end method

.method public final selectProperMagnificationSpecByComparingIdentityDegree([F[F)Z
    .locals 7

    .line 495
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mTempFloat3:[F

    .line 496
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    invoke-virtual {v0, p0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v0, 0x0

    .line 498
    aget v1, p0, v0

    aget v2, p1, v0

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 500
    aget v2, p0, v0

    aget v3, p2, v0

    sub-float/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/4 v3, 0x2

    .line 502
    aget v4, p0, v3

    aget v5, p1, v3

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 504
    aget v5, p0, v3

    aget v3, p2, v3

    sub-float/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v5, 0x5

    .line 506
    aget v6, p0, v5

    aget p1, p1, v5

    sub-float/2addr v6, p1

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result p1

    .line 508
    aget p0, p0, v5

    aget p2, p2, v5

    sub-float/2addr p0, p2

    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    add-float/2addr v4, p1

    add-float/2addr v3, p0

    .line 515
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-gtz p0, :cond_1

    .line 516
    invoke-static {v2, v1}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_0

    .line 517
    invoke-static {v3, v4}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public setMagnificationSpec(ILandroid/view/MagnificationSpec;)V
    .locals 3

    .line 246
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 247
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/MagnificationSpec;

    if-nez v1, :cond_0

    .line 249
    new-instance v1, Landroid/view/MagnificationSpec;

    invoke-direct {v1}, Landroid/view/MagnificationSpec;-><init>()V

    .line 250
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 251
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mCurrentMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 253
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 256
    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/MagnificationSpec;

    if-nez v2, :cond_1

    .line 258
    new-instance v2, Landroid/view/MagnificationSpec;

    invoke-direct {v2}, Landroid/view/MagnificationSpec;-><init>()V

    .line 259
    iget-object p0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mPreviousMagnificationSpec:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 261
    :cond_1
    invoke-virtual {v2, v1}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 262
    invoke-virtual {v1, p2}, Landroid/view/MagnificationSpec;->setTo(Landroid/view/MagnificationSpec;)V

    .line 263
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setWindowsNotification(Z)V
    .locals 2

    .line 223
    iget-object v0, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 224
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-ne v1, p1, :cond_0

    .line 225
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 227
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/wm/AccessibilityWindowsPopulator;->mWindowsNotificationEnabled:Z

    if-eqz p1, :cond_1

    .line 229
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->register()Landroid/util/Pair;

    move-result-object p1

    .line 230
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, [Landroid/view/InputWindowHandle;

    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, [Landroid/window/WindowInfosListener$DisplayInfo;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->onWindowInfosChangedInternal([Landroid/view/InputWindowHandle;[Landroid/window/WindowInfosListener$DisplayInfo;)V

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {p0}, Landroid/window/WindowInfosListener;->unregister()V

    .line 233
    invoke-virtual {p0}, Lcom/android/server/wm/AccessibilityWindowsPopulator;->releaseResources()V

    .line 235
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
