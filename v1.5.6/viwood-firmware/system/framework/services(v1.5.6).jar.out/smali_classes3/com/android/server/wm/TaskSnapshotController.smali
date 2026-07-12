.class public Lcom/android/server/wm/TaskSnapshotController;
.super Lcom/android/server/wm/AbsAppSnapshotController;
.source "TaskSnapshotController.java"


# instance fields
.field public final mHandler:Landroid/os/Handler;

.field public final mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

.field public final mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

.field public final mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

.field public final mTmpTasks:Landroid/util/ArraySet;


# direct methods
.method public static synthetic $r8$lambda$Fh0SwjFo0K_YCj8gfCmJMbgJjlI(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/TaskSnapshotController;->lambda$getRecordSnapshotSupplier$0(ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JulDjwQKRPlHrjVHGpxThjrowUs(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$screenTurningOff$3(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$L67RtxFLMlhJoij0ZWdmk1KZRYc(Lcom/android/server/wm/TaskSnapshotController;Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$prepareShutdown$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$UeHp7r26E_HWpaUOnFk-BamZbNE(Lcom/android/server/wm/TaskSnapshotController;ZLcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$snapshotForSleeping$4(ZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uAv-iIauQGlbA2jv-klglXShaZs(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController;->lambda$prepareShutdown$1(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/SnapshotPersistQueue;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 63
    new-instance v0, Landroid/util/IntArray;

    invoke-direct {v0}, Landroid/util/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    .line 64
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    .line 65
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    .line 71
    iget-object v0, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110140

    .line 74
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 75
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->setSnapshotEnabled(Z)V

    .line 76
    new-instance v0, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/ActivitySnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 79
    new-instance v0, Lcom/android/server/wm/TaskSnapshotPersister;

    .line 82
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v1

    invoke-direct {v0, p2, p1, v1}, Lcom/android/server/wm/TaskSnapshotPersister;-><init>(Lcom/android/server/wm/SnapshotPersistQueue;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;Z)V

    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    .line 83
    new-instance p2, Lcom/android/server/wm/TaskSnapshotCache;

    new-instance v0, Lcom/android/server/wm/AppSnapshotLoader;

    invoke-direct {v0, p1}, Lcom/android/server/wm/AppSnapshotLoader;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    invoke-direct {p2, v0}, Lcom/android/server/wm/TaskSnapshotCache;-><init>(Lcom/android/server/wm/AppSnapshotLoader;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->initialize(Lcom/android/server/wm/SnapshotCache;)V

    return-void
.end method

.method public static createPersistInfoProvider(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;)Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;
    .locals 9

    .line 88
    iget-object v0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10500eb

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    .line 90
    iget-object v1, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10500f9

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v1

    const/4 v2, 0x0

    cmpg-float v3, v1, v2

    if-ltz v3, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v4, v3, v1

    if-lez v4, :cond_3

    cmpg-float v4, v0, v2

    if-lez v4, :cond_2

    cmpg-float v3, v3, v0

    if-ltz v3, :cond_2

    cmpg-float v3, v0, v1

    if-lez v3, :cond_1

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    div-float v2, v1, v0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    move v7, v2

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 112
    :goto_1
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x1110287

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 114
    new-instance v3, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    const-string v5, "snapshots"

    move-object v4, p1

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$DirectoryResolver;Ljava/lang/String;ZFZ)V

    return-object v3

    .line 100
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be greater than low-res scale"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 97
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "High-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 94
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Low-res scale must be between 0 and 1"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public addSkipClosingAppSnapshotTasks(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/Task;",
            ">;)V"
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 128
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/Task;

    .line 129
    iget-object v1, p0, Lcom/android/server/wm/TaskSnapshotController;->mSkipClosingAppSnapshotTasks:Landroid/util/IntArray;

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v1, v0}, Landroid/util/IntArray;->add(I)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public clearSnapshotCache()V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/wm/SnapshotCache;->clearRunningCache()V

    return-void
.end method

.method public final createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    .line 256
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_1

    .line 257
    sget-boolean p0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_SCREENSHOT:Z

    if-eqz p0, :cond_0

    .line 258
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take screenshot. No surface control for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "WindowManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0

    .line 262
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/wm/DisplayContent;->mInputMethodWindow:Lcom/android/server/wm/WindowState;

    if-eqz p0, :cond_2

    .line 264
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getParentFrame()Landroid/graphics/Rect;

    move-result-object p1

    const/4 v0, 0x0

    .line 266
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 267
    new-instance v0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 268
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;-><init>(Landroid/view/SurfaceControl;)V

    .line 269
    invoke-virtual {v0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setSourceCrop(Landroid/graphics/Rect;)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 270
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setFrameScale(F)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 271
    invoke-virtual {p0, p2}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setPixelFormat(I)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    const/4 p1, 0x1

    .line 272
    invoke-virtual {p0, p1}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->setCaptureSecureLayers(Z)Landroid/window/ScreenCapture$CaptureArgs$Builder;

    move-result-object p0

    check-cast p0, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;

    .line 273
    invoke-virtual {p0}, Landroid/window/ScreenCapture$LayerCaptureArgs$Builder;->build()Landroid/window/ScreenCapture$LayerCaptureArgs;

    move-result-object p0

    .line 274
    invoke-static {p0}, Landroid/window/ScreenCapture;->captureLayers(Landroid/window/ScreenCapture$LayerCaptureArgs;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method public findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 244
    new-instance p0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;

    invoke-direct {p0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowContainer;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic findAppTokenForSnapshot(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 59
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->findAppTokenForSnapshot(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public getLetterboxInsets(Lcom/android/server/wm/ActivityRecord;)Landroid/graphics/Rect;
    .locals 0

    .line 308
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getRecordSnapshotSupplier(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;
    .locals 1

    .line 179
    new-instance v0, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/wm/Task;)V

    const/4 p2, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->recordSnapshotInner(Lcom/android/server/wm/WindowContainer;ZLjava/util/function/Consumer;)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshot(IZ)Landroid/window/TaskSnapshot;
    .locals 0

    const/4 p2, 0x0

    .line 195
    invoke-virtual {p0, p1, p2, p2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshot(IZI)Landroid/window/TaskSnapshot;
    .locals 1

    .line 204
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 205
    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 204
    :goto_0
    invoke-virtual {v0, p1, p0, p3}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getSnapshotCaptureTime(I)J
    .locals 1

    .line 224
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 226
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide p0

    return-wide p0

    :cond_0
    const-wide/16 p0, -0x1

    return-wide p0
.end method

.method public getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    if-eqz p3, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 216
    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->enableLowResSnapshots()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 215
    :goto_0
    invoke-virtual {v0, p1, p2, p0, p4}, Lcom/android/server/wm/TaskSnapshotCache;->getSnapshotFromDisk(IIZI)Landroid/window/TaskSnapshot;

    move-result-object p0

    return-object p0
.end method

.method public getTaskDescription(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 303
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTaskDescription(Lcom/android/server/wm/WindowContainer;)Landroid/app/ActivityManager$TaskDescription;
    .locals 0

    .line 59
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getTaskDescription(Lcom/android/server/wm/Task;)Landroid/app/ActivityManager$TaskDescription;

    move-result-object p0

    return-object p0
.end method

.method public getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 298
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getTopActivity(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/ActivityRecord;
    .locals 0

    .line 59
    check-cast p1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->getTopActivity(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getRecordSnapshotSupplier$0(ILcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 181
    invoke-virtual {p3, p1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 183
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-nez p1, :cond_1

    .line 184
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget p1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    iget v0, p2, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    .line 185
    invoke-virtual {p2, p3}, Lcom/android/server/wm/Task;->onSnapshotChanged(Landroid/window/TaskSnapshot;)V

    :cond_1
    return-void
.end method

.method public final synthetic lambda$prepareShutdown$1(Lcom/android/server/wm/Task;Landroid/window/TaskSnapshot;)V
    .locals 1

    .line 360
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget p1, p1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->persistSnapshot(IILandroid/window/TaskSnapshot;)V

    return-void
.end method

.method public final synthetic lambda$prepareShutdown$2(Ljava/util/ArrayList;Lcom/android/server/wm/Task;)V
    .locals 2

    .line 355
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 356
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/AbsAppSnapshotController;->captureSnapshot(Lcom/android/server/wm/WindowContainer;Z)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 359
    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskSnapshotController;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->setConsumer(Ljava/util/function/Consumer;)V

    .line 361
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final synthetic lambda$screenTurningOff$3(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 1

    .line 394
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotForSleeping(I)V

    .line 396
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 398
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    :catchall_1
    move-exception p0

    .line 396
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 398
    :goto_0
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    .line 399
    throw p0
.end method

.method public final synthetic lambda$snapshotForSleeping$4(ZLcom/android/server/wm/Task;)V
    .locals 0

    if-nez p1, :cond_0

    .line 418
    invoke-virtual {p2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 424
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p2}, Lcom/android/server/wm/AbsAppSnapshotController;->isAnimatingByRecents(Lcom/android/server/wm/Task;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 425
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public prepareShutdown()V
    .locals 7

    .line 348
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 349
    iget-object v1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v1

    .line 351
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v2, v2, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    .line 352
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object v2, v2, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {v2}, Lcom/android/server/wm/SnapshotPersistQueue;->prepareShutdown()V

    const/4 v2, 0x0

    move v4, v2

    .line 353
    :goto_0
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 354
    iget-object v5, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/DisplayContent;

    new-instance v6, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;

    invoke-direct {v6, p0, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/TaskSnapshotController;Ljava/util/ArrayList;)V

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 366
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 367
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_1

    .line 368
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    invoke-virtual {v3}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 371
    :try_start_1
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/SnapshotPersistQueue;->setPaused(Z)V

    .line 372
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_1
    move-exception p0

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0

    .line 366
    :goto_2
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public recordSnapshot(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 156
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 159
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->getRecordSnapshotSupplier(Lcom/android/server/wm/Task;I)Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 163
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->getSnapshotMode(Lcom/android/server/wm/WindowContainer;)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 165
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance p1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;

    invoke-direct {p1, v0}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 167
    :cond_2
    invoke-virtual {v0}, Lcom/android/server/wm/AbsAppSnapshotController$SnapshotSupplier;->handleSnapshot()V

    return-void
.end method

.method public recordSnapshot(Lcom/android/server/wm/Task;Lcom/android/server/wm/Transition$ChangeInfo;)V
    .locals 0

    .line 147
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    const/4 p2, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    return-void

    :catchall_0
    move-exception p1

    iput-object p2, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCurrentChangeInfo:Lcom/android/server/wm/Transition$ChangeInfo;

    .line 152
    throw p1
.end method

.method public removeAndDeleteSnapshot(II)V
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast v0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/SnapshotCache;->onIdRemoved(Ljava/lang/Integer;)V

    .line 327
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeSnapshot(II)V

    return-void
.end method

.method public removeObsoleteTaskFiles(Landroid/util/ArraySet;[I)V
    .locals 0

    .line 338
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotPersister;->removeObsoleteFiles(Landroid/util/ArraySet;[I)V

    return-void
.end method

.method public removeSnapshotCache(I)V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mCache:Lcom/android/server/wm/SnapshotCache;

    check-cast p0, Lcom/android/server/wm/TaskSnapshotCache;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    return-void
.end method

.method public screenTurningOff(ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V
    .locals 2

    .line 386
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 387
    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;->onScreenOff()V

    return-void

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskSnapshotController;ILcom/android/server/policy/WindowManagerPolicy$ScreenOffListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public snapshotForSleeping(I)V
    .locals 3

    .line 405
    invoke-virtual {p0}, Lcom/android/server/wm/AbsAppSnapshotController;->shouldDisableSnapshots()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v0, Lcom/android/server/wm/WindowManagerService;->mDisplayEnabled:Z

    if-nez v1, :cond_0

    goto :goto_1

    .line 408
    :cond_0
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x1

    if-nez p1, :cond_2

    .line 414
    iget-object p1, p0, Lcom/android/server/wm/AbsAppSnapshotController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mPolicy:Lcom/android/server/policy/WindowManagerPolicy;

    iget p1, p1, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    .line 415
    invoke-interface {v2, p1}, Lcom/android/server/policy/WindowManagerPolicy;->isKeyguardSecure(I)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 416
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 417
    new-instance v2, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wm/TaskSnapshotController$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/TaskSnapshotController;Z)V

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/DisplayArea;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 428
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotController;->mTmpTasks:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public snapshotImeFromAttachedTask(Lcom/android/server/wm/Task;)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;
    .locals 1

    .line 287
    invoke-virtual {p0, p1}, Lcom/android/server/wm/AbsAppSnapshotController;->checkIfReadyToSnapshot(Lcom/android/server/wm/WindowContainer;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {v0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 293
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskSnapshotController;->createImeSnapshot(Lcom/android/server/wm/Task;I)Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    move-result-object p0

    return-object p0
.end method

.method public snapshotTasks(Landroid/util/ArraySet;)V
    .locals 2

    .line 134
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 135
    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskSnapshotController;->recordSnapshot(Lcom/android/server/wm/Task;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public use16BitFormat()Z
    .locals 0

    .line 250
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    invoke-virtual {p0}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->use16BitFormat()Z

    move-result p0

    return p0
.end method

.method public waitFlush(J)V
    .locals 0

    .line 379
    iget-object p0, p0, Lcom/android/server/wm/TaskSnapshotController;->mPersister:Lcom/android/server/wm/TaskSnapshotPersister;

    iget-object p0, p0, Lcom/android/server/wm/BaseAppSnapshotPersister;->mSnapshotPersistQueue:Lcom/android/server/wm/SnapshotPersistQueue;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/SnapshotPersistQueue;->waitFlush(J)V

    return-void
.end method
