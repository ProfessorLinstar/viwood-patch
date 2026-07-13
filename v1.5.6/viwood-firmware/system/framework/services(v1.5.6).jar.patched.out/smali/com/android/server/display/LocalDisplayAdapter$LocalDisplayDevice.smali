.class public final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# instance fields
.field public mActiveColorMode:I

.field public mActiveModeId:I

.field public mActiveRenderFrameRate:F

.field public mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

.field public mActiveSfDisplayModeAtStartId:I

.field public mAllmRequested:Z

.field public mAllmSupported:Z

.field public final mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

.field public mBrightnessState:F

.field public mCommittedState:I

.field public mConnectedHdcpLevel:I

.field public mCurrentHdrSdrRatio:F

.field public mDefaultModeGroup:I

.field public mDefaultModeId:I

.field public final mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

.field public mDisplayModeSpecsInvalid:Z

.field public mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

.field public mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

.field public mGameContentTypeRequested:Z

.field public mGameContentTypeSupported:Z

.field public mHasArrSupport:Z

.field public mHavePendingChanges:Z

.field public mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field public mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field public final mIsFirstDisplay:Z

.field public final mPhysicalDisplayId:J

.field public mSdrBrightnessState:F

.field public mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

.field public mSidekickActive:Z

.field public final mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field public mState:I

.field public mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

.field public final mSupportedColorModes:Ljava/util/ArrayList;

.field public final mSupportedModes:Landroid/util/SparseArray;

.field public mSupportedRefreshRates:[F

.field public mSystemPreferredModeId:I

.field public mUserPreferredMode:Landroid/view/Display$Mode;

.field public mUserPreferredModeId:I

.field public final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public static synthetic $r8$lambda$NzC1iSMVu_tgB5rNAKv1CHyLmPA(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeAsync(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$nQXuR3rRi3rSRLFK9tosCrQw4ig(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmBacklightAdapter(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSidekickInternal(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCommittedState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmCurrentHdrSdrRatio(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSdrBrightnessState(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmSidekickActive(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateDeviceInfoLocked(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;Z)V
    .locals 8

    move-object v6, p6

    move/from16 v7, p8

    .line 268
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "local:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 271
    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/display/feature/DisplayManagerFlags;->isPixelAnisotropyCorrectionInLogicalDisplayEnabled()Z

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 269
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;Landroid/content/Context;Z)V

    .line 214
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 215
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 216
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    const/4 v1, 0x0

    .line 224
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 225
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    const/high16 v2, 0x7fc00000    # Float.NaN

    .line 228
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 229
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    .line 230
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    const/4 v2, -0x1

    .line 231
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 232
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    .line 234
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 237
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    .line 239
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 244
    new-array v2, v1, [F

    iput-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    .line 262
    new-array v1, v1, [Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 272
    iput-wide p3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 273
    iput-boolean v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    move-object v2, p7

    .line 274
    invoke-virtual {p0, p5, p6, p7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    .line 275
    const-class v1, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 276
    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;

    move-result-object v1

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v2

    invoke-virtual {v1, p2, v7, v2}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->getBacklightAdapter(Landroid/os/IBinder;ZLcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;)Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    .line 278
    iget v1, v6, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .line 709
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 710
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v0, 0x0

    .line 711
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 1338
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1341
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1342
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1345
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mUserPreferredModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mHasArrSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedRefreshRates="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v1}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1348
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1349
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mCommittedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1350
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1351
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklightAdapter="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1353
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1354
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1355
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1356
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mStaticDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    const-string/jumbo v0, "mSfDisplayModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1358
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const-string v4, "  "

    if-ge v3, v1, :cond_0

    aget-object v5, v0, v3

    .line 1359
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1361
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveSfDisplayMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1362
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveRenderFrameRate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1363
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1364
    :goto_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge v2, v0, :cond_1

    .line 1365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1367
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1368
    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1369
    const-string v0, "DisplayDeviceConfig: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1370
    const-string v0, "---------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1371
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEvenDimmerEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerEnabled(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mEvenDimmerStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNitsToEvenDimmerStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmNitsToEvenDimmerStrength(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/Spline;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public final findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 5

    const/4 v0, 0x0

    .line 682
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 683
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 684
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 686
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v2

    .line 685
    invoke-virtual {p0, p2, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    iget-object v3, p1, Landroid/view/SurfaceControl$DisplayMode;->supportedHdrTypes:[I

    iget-object v4, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 688
    invoke-virtual {v4}, Landroid/view/Display$Mode;->getSupportedHdrTypes()[I

    move-result-object v4

    .line 687
    invoke-static {v2, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$mhdrTypesEqual(Lcom/android/server/display/LocalDisplayAdapter;[I[I)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMatchingModeIdLocked(I)I
    .locals 4

    .line 1435
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    const/4 v1, -0x1

    if-nez v0, :cond_0

    .line 1437
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Invalid display mode ID "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 p1, 0x0

    .line 1440
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge p1, v2, :cond_2

    .line 1441
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1442
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1443
    iget-object p0, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {p0}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public final findMode(I)Landroid/view/Display$Mode;
    .locals 3

    const/4 v0, 0x0

    .line 1399
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1400
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1401
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result v2

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findMode(IIF)Landroid/view/Display$Mode;
    .locals 3

    const/4 v0, 0x0

    .line 1411
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1412
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1413
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/Display$Mode;->matchesIfValid(IIF)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final findSfDisplayModeIdLocked(II)I
    .locals 6

    .line 1379
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    const/4 v0, -0x1

    if-eqz p1, :cond_3

    .line 1381
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    array-length v1, p0

    const/4 v2, 0x0

    move v3, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v4, p0, v2

    .line 1382
    invoke-virtual {p1, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-ne v3, v0, :cond_0

    .line 1384
    iget v3, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    .line 1388
    :cond_0
    iget v5, v4, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v5, p2, :cond_1

    .line 1389
    iget p0, v4, Landroid/view/SurfaceControl$DisplayMode;->id:I

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v3

    :cond_3
    return v0
.end method

.method public final findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I
    .locals 5

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    .line 1422
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1423
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    iget-object v1, v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 1424
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1425
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    .line 1426
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 1424
    invoke-virtual {p1, v2, v3, v4}, Landroid/view/Display$Mode;->matches(IIF)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1427
    invoke-virtual {v1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p0

    return p0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getActiveDisplayModeAtStartLocked()Landroid/view/Display$Mode;
    .locals 1

    .line 292
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayModeAtStartId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 506
    iget-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    if-nez v0, :cond_0

    .line 507
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->loadDisplayDeviceConfig()V

    .line 509
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object p0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 13

    .line 717
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_11

    .line 718
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 719
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 720
    iget v1, v1, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 721
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 722
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->renderFrameRate:F

    .line 723
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 724
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->userPreferredModeId:I

    .line 725
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 726
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 727
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 728
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 729
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 730
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [I

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    const/4 v0, 0x0

    move v1, v0

    .line 731
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 732
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 734
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 735
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hasArrSupport:Z

    .line 736
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    .line 737
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedRefreshRates:[F

    .line 738
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget-wide v3, v2, Landroid/view/SurfaceControl$DisplayMode;->appVsyncOffsetNanos:J

    iput-wide v3, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 739
    iget-wide v2, v2, Landroid/view/SurfaceControl$DisplayMode;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 740
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 741
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCommittedState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->committedState:I

    .line 742
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 743
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 744
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 745
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 746
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getLogicalDensity()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 747
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v4, v3, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    iput v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 748
    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 749
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-object v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v4, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 751
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    if-lt v4, v5, :cond_1

    move v4, v6

    goto :goto_1

    :cond_1
    move v4, v0

    .line 752
    :goto_1
    iput-boolean v4, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    .line 754
    :cond_2
    iget-boolean v3, v3, Landroid/view/SurfaceControl$StaticDisplayInfo;->secure:Z

    if-eqz v3, :cond_3

    const/16 v3, 0xc

    .line 755
    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 759
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 761
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v3, v6

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 763
    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-eqz v2, :cond_5

    const v2, 0x11101ee

    .line 764
    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean v2, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v2, :cond_8

    const-string/jumbo v2, "ro.boot.emulator.circular"

    .line 766
    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 767
    :cond_4
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x100

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_2

    .line 770
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->shouldOwnContentOnly()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 771
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v2, v2, 0x80

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 774
    :cond_6
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 775
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 778
    :cond_7
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayStealTopFocusDisabled(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 779
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v3, 0xa0000

    or-int/2addr v2, v3

    .line 780
    iput v2, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 784
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isDisplayContentModeManagementEnabled()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 787
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    if-nez v0, :cond_9

    .line 788
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v0

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->shouldOwnContentOnly()Z

    move-result v0

    if-nez v0, :cond_a

    .line 789
    :cond_9
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    const/high16 v2, 0x100000

    or-int/2addr v1, v2

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 793
    :cond_a
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    invoke-static {v7, v0}, Landroid/view/DisplayCutout;->getMaskBuiltInDisplayCutout(Landroid/content/res/Resources;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 794
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x800

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 797
    :cond_b
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 798
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    move-result-object v0

    if-nez v0, :cond_c

    .line 800
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    :goto_3
    move v9, v1

    goto :goto_4

    :cond_c
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    goto :goto_3

    :goto_4
    if-nez v0, :cond_d

    .line 802
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    :goto_5
    move v10, v0

    goto :goto_6

    :cond_d
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    goto :goto_5

    .line 805
    :goto_6
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v0, :cond_e

    .line 806
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayCutout;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 808
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/RoundedCorners;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/RoundedCorners;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->roundedCorners:Landroid/view/RoundedCorners;

    .line 812
    :cond_e
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget v1, v1, Landroid/view/SurfaceControl$StaticDisplayInfo;->installOrientation:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->installOrientation:I

    .line 814
    iget-object v8, v0, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget v12, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static/range {v7 .. v12}, Landroid/view/DisplayShape;->fromResources(Landroid/content/res/Resources;Ljava/lang/String;IIII)Landroid/view/DisplayShape;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->displayShape:Landroid/view/DisplayShape;

    .line 817
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 819
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-eqz v0, :cond_f

    .line 820
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 821
    iput v6, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 822
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v1, v5

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 823
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_10

    const v1, 0x1040367

    .line 824
    invoke-virtual {v7, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    goto :goto_7

    .line 827
    :cond_f
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 828
    iput v5, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 829
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v1, v1, 0x40

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 830
    iget-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_10

    .line 831
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/DisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040368

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 836
    :cond_10
    :goto_7
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->frameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    .line 839
    iget v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v1, v1, 0x2000

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 840
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessMinimum()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMinimum:F

    .line 841
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessMaximum()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessMaximum:F

    .line 842
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDefault()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDefault:F

    .line 843
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightnessDim()F

    move-result v1

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->brightnessDim:F

    .line 844
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mCurrentHdrSdrRatio:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->hdrSdrRatio:F

    .line 846
    :cond_11
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object p0
.end method

.method public final getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .locals 3

    .line 1455
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p0

    .line 1456
    new-array v0, p0, [Landroid/view/Display$Mode;

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p0, :cond_0

    .line 1458
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1459
    iget-object v2, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public final getLogicalDensity()I
    .locals 10

    .line 519
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getDensityMapping()Lcom/android/server/display/DensityMapping;

    move-result-object v0

    if-nez v0, :cond_2

    .line 521
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isBaseDensityForExternalDisplaysEnabled()Z

    move-result v0

    const-wide/high16 v1, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget-boolean v0, v0, Landroid/view/SurfaceControl$StaticDisplayInfo;->isInternal:Z

    if-nez v0, :cond_1

    .line 525
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v0, Landroid/view/SurfaceControl$DisplayMode;->xDpi:F

    const/4 v4, 0x0

    cmpl-float v5, v3, v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    if-lez v5, :cond_0

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_0

    float-to-double v3, v3

    .line 526
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget p0, p0, Landroid/view/SurfaceControl$DisplayMode;->yDpi:F

    float-to-double v8, p0

    .line 527
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v3, v8

    div-double/2addr v3, v6

    .line 526
    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    goto :goto_0

    .line 531
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v0, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    int-to-double v3, v0

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    int-to-double v8, p0

    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v5

    add-double/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v3

    const-wide/high16 v5, 0x4038000000000000L    # 24.0

    div-double/2addr v3, v5

    :goto_0
    const-wide v5, 0x3fda3468d1a3468eL    # 0.40944881889763785

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4064000000000000L    # 160.0

    mul-double/2addr v3, v5

    const-wide/high16 v5, 0x4048000000000000L    # 48.0

    div-double/2addr v3, v5

    add-double/2addr v3, v1

    double-to-int p0, v3

    return p0

    .line 539
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    iget p0, p0, Landroid/view/SurfaceControl$StaticDisplayInfo;->density:F

    const/high16 v0, 0x43200000    # 160.0f

    mul-float/2addr p0, v0

    float-to-double v3, p0

    add-double/2addr v3, v1

    double-to-int p0, v3

    return p0

    .line 542
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget p0, p0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-virtual {v0, v1, p0}, Lcom/android/server/display/DensityMapping;->getDensityForResolution(II)I

    move-result p0

    return p0
.end method

.method public final getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;
    .locals 3

    .line 671
    array-length p0, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    aget-object v1, p1, v0

    .line 672
    iget v2, v1, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v2, p2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 676
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Can\'t find display mode with id "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method public final getPreferredModeId()I
    .locals 2

    .line 513
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    return v0

    .line 515
    :cond_0
    iget p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    return p0
.end method

.method public getSystemPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 1

    .line 1153
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(I)Landroid/view/Display$Mode;

    move-result-object p0

    return-object p0
.end method

.method public getUserPreferredDisplayModeLocked()Landroid/view/Display$Mode;
    .locals 0

    .line 1148
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    return-object p0
.end method

.method public hasStableUniqueId()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public final isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1468
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070089

    .line 1469
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1471
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    .line 1472
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final isDisplayStealTopFocusDisabled(Landroid/view/DisplayAddress$Physical;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1490
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x1070088

    .line 1491
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    if-eqz p0, :cond_2

    .line 1493
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()I

    move-result p1

    .line 1494
    array-length v1, p0

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget v3, p0, v2

    if-ne v3, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method public final loadDisplayDeviceConfig()V
    .locals 7

    .line 547
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    .line 548
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmInjector(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$Injector;

    move-result-object v1

    iget-wide v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    iget-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsFirstDisplay:Z

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 549
    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v6

    .line 548
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$Injector;->createDisplayDeviceConfig(Landroid/content/Context;JZLcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 552
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklightAdapter:Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;

    const-string v1, "canSetBrightnessViaHwc"

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayDeviceConfig;->hasQuirk(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$BacklightAdapter;->setForceSurfaceControl(Z)V

    return-void
.end method

.method public onActiveDisplayModeChangedLocked(IF)V
    .locals 0

    .line 1218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(IF)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1219
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_0
    return-void
.end method

.method public onFrameRateOverridesChanged([Landroid/view/DisplayEventReceiver$FrameRateOverride;)V
    .locals 0

    .line 1225
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1226
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_0
    return-void
.end method

.method public onHdcpLevelsChangedLocked(II)V
    .locals 0

    .line 1231
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdcpLevelsLocked(II)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1232
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    :cond_0
    return-void
.end method

.method public onOverlayChangedLocked()V
    .locals 0

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void
.end method

.method public final refreshRatesEquals(Ljava/util/List;[F)Z
    .locals 3

    .line 696
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    array-length v0, p2

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return v1

    :cond_0
    move p0, v1

    .line 699
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p0, v0, :cond_2

    .line 700
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v0

    aget v2, p2, p0

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final requestColorModeAsync(Landroid/os/IBinder;I)V
    .locals 1

    .line 1296
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 1297
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object p1

    monitor-enter p1

    .line 1298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1299
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public requestColorModeLocked(I)V
    .locals 3

    .line 1278
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_0

    return-void

    .line 1281
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1282
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Unable to find color mode "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1287
    :cond_1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 1288
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda1;-><init>()V

    .line 1290
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1288
    invoke-static {v1, p0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public requestDisplayStateLocked(IFFLcom/android/server/display/DisplayOffloadSessionImpl;)Ljava/lang/Runnable;
    .locals 11

    .line 859
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-eq v0, p1, :cond_0

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v2

    .line 860
    :goto_0
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    cmpl-float v5, v5, p2

    if-nez v5, :cond_2

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSdrBrightnessState:F

    cmpl-float v5, v5, p3

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    move v4, v2

    :cond_2
    :goto_1
    if-nez v0, :cond_4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    return-object v0

    .line 863
    :cond_4
    :goto_2
    iget-wide v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 864
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v10

    .line 865
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    if-eqz v0, :cond_5

    .line 868
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 869
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 875
    :cond_5
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object v1, p0

    move v3, p1

    move v5, p2

    move v6, p3

    move-object v9, p4

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFFJLcom/android/server/display/DisplayOffloadSessionImpl;Landroid/os/IBinder;)V

    return-object v0
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .locals 1

    .line 1304
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1308
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 1310
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_1

    .line 1311
    const-string p0, "LocalDisplayAdapter"

    const-string p1, "Unable to set ALLM because the connected display does not support ALLM."

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1316
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public final setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)V
    .locals 0

    .line 1209
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setDesiredDisplayModeSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 8

    .line 1164
    iget v0, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_0

    goto :goto_0

    .line 1177
    :cond_0
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_1

    .line 1186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring request for invalid base mode id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    return-void

    .line 1191
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    :goto_0
    return-void

    :cond_3
    :goto_1
    const/4 v0, 0x0

    .line 1192
    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 1193
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->copyFrom(Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 1194
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p1}, Lcom/android/server/display/DisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$$ExternalSyntheticLambda0;-><init>()V

    .line 1196
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    new-instance v2, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-object v5, v4

    iget-boolean v4, v5, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->allowGroupSwitching:Z

    move-object v6, v5

    iget-object v5, v6, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    move-object v7, v6

    iget-object v6, v7, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v7, v7, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;-><init>(IZLandroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$RefreshRateRanges;Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;)V

    .line 1194
    invoke-static {v0, p0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .locals 1

    .line 1321
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 1325
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 1333
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setGameContentType(Landroid/os/IBinder;Z)V

    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0

    .line 1158
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)V

    return-void
.end method

.method public setUserPreferredDisplayModeLocked(Landroid/view/Display$Mode;)V
    .locals 4

    .line 1108
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v0

    .line 1109
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    const/4 v1, -0x1

    if-nez p1, :cond_0

    .line 1114
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v2, v1, :cond_0

    .line 1115
    iput v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    :cond_0
    if-eqz p1, :cond_2

    .line 1117
    invoke-virtual {p1}, Landroid/view/Display$Mode;->isRefreshRateSet()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p1}, Landroid/view/Display$Mode;->isResolutionSet()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1119
    :cond_1
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v2

    .line 1120
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result p1

    .line 1119
    invoke-virtual {p0, v2, v3, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMode(IIF)Landroid/view/Display$Mode;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 1122
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1126
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 1128
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result p1

    if-ne v0, p1, :cond_3

    goto :goto_0

    .line 1131
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 1133
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result p1

    if-nez p1, :cond_4

    :goto_0
    return-void

    .line 1136
    :cond_4
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    if-ne p1, v1, :cond_5

    .line 1137
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {p1}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->clearBootDisplayMode(Landroid/os/IBinder;)V

    return-void

    .line 1139
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    .line 1140
    invoke-virtual {p1}, Landroid/view/Display$Mode;->getModeId()I

    move-result p1

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 1139
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result p1

    .line 1141
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmSurfaceControlProxy(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/display/DisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$SurfaceControlProxy;->setBootDisplayMode(Landroid/os/IBinder;I)V

    return-void
.end method

.method public final shouldOwnContentOnly()Z
    .locals 1

    .line 1482
    iget-object p0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101e5

    .line 1483
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public updateActiveModeLocked(IF)Z
    .locals 2

    .line 1237
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v0, v0, Landroid/view/SurfaceControl$DisplayMode;->id:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    cmpl-float v0, v0, p2

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1241
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 1242
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 1244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed modes, activeModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocalDisplayAdapter"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1247
    :cond_1
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 p0, 0x1

    return p0
.end method

.method public final updateAllmSupport(Z)Z
    .locals 1

    .line 654
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 657
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateColorModesLocked([II)Z
    .locals 8

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return p2

    .line 569
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 572
    array-length v1, p1

    move v2, p2

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v2, v1, :cond_2

    aget v5, p1, v2

    .line 573
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    move v3, v4

    .line 576
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 580
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne p1, v1, :cond_4

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_3
    return p2

    .line 588
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 589
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 590
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 593
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 594
    iget p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v0, "LocalDisplayAdapter"

    if-eqz p1, :cond_5

    .line 595
    const-string p1, "Active color mode no longer available, reverting to default mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_2

    .line 599
    :cond_5
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 601
    const-string p1, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    iget-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    goto :goto_2

    .line 606
    :cond_6
    const-string p0, "No color modes available!"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    return v4
.end method

.method public final updateDeviceInfoLocked()V
    .locals 2

    const/4 v0, 0x0

    .line 1450
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1451
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/DisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    return-void
.end method

.method public updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IIFLandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p4

    move-object/from16 v3, p5

    .line 324
    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl$DisplayMode;

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSfDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    move/from16 v4, p3

    .line 325
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    .line 327
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getModeById([Landroid/view/SurfaceControl$DisplayMode;I)Landroid/view/SurfaceControl$DisplayMode;

    move-result-object v4

    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 332
    :goto_0
    array-length v9, v1

    const/4 v10, 0x1

    if-ge v7, v9, :cond_6

    .line 333
    aget-object v9, v1, v7

    .line 334
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    move v12, v6

    .line 335
    :goto_1
    array-length v13, v1

    if-ge v12, v13, :cond_1

    .line 336
    aget-object v13, v1, v12

    if-eq v12, v7, :cond_0

    .line 337
    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->width:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->width:I

    if-ne v14, v15, :cond_0

    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->height:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->height:I

    if-ne v14, v15, :cond_0

    iget v14, v13, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->peakRefreshRate:F

    cmpl-float v15, v14, v15

    if-eqz v15, :cond_0

    iget v13, v13, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iget v15, v9, Landroid/view/SurfaceControl$DisplayMode;->group:I

    if-ne v13, v15, :cond_0

    .line 342
    invoke-static {v14}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 345
    :cond_1
    invoke-static {v11}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 351
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v12

    move v13, v6

    :cond_2
    if-ge v13, v12, :cond_3

    invoke-virtual {v5, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    add-int/lit8 v13, v13, 0x1

    check-cast v14, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 352
    invoke-virtual {v14, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v15

    if-eqz v15, :cond_2

    iget-object v14, v14, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 354
    invoke-virtual {v14}, Landroid/view/Display$Mode;->getAlternativeRefreshRates()[F

    move-result-object v14

    .line 353
    invoke-virtual {v0, v11, v14}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->refreshRatesEquals(Ljava/util/List;[F)Z

    move-result v14

    if-eqz v14, :cond_2

    goto :goto_3

    .line 365
    :cond_3
    invoke-virtual {v0, v9, v11}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayMode;Ljava/util/List;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v12

    if-nez v12, :cond_5

    .line 367
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v8

    new-array v12, v8, [F

    move v13, v6

    :goto_2
    if-ge v13, v8, :cond_4

    .line 369
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Float;

    invoke-virtual {v14}, Ljava/lang/Float;->floatValue()F

    move-result v14

    aput v14, v12, v13

    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 371
    :cond_4
    new-instance v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v8, v9, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayMode;[F)V

    move-object v12, v8

    move v8, v10

    .line 374
    :cond_5
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 379
    :cond_6
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v1

    move v7, v6

    :cond_7
    const/4 v9, 0x0

    if-ge v7, v1, :cond_8

    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    add-int/lit8 v7, v7, 0x1

    check-cast v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 380
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    invoke-virtual {v11, v12}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v12

    if-eqz v12, :cond_7

    goto :goto_4

    :cond_8
    move-object v11, v9

    :goto_4
    const/4 v1, -0x1

    move/from16 v7, p2

    if-eq v7, v1, :cond_b

    if-eqz v4, :cond_b

    .line 390
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    move v12, v6

    :cond_9
    if-ge v12, v7, :cond_a

    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    add-int/lit8 v12, v12, 0x1

    check-cast v13, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 391
    invoke-virtual {v13, v4}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayMode;)Z

    move-result v14

    if-eqz v14, :cond_9

    move-object v9, v13

    :cond_a
    if-eqz v9, :cond_b

    .line 398
    iget-object v4, v9, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    .line 399
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v7}, Lcom/android/server/display/LocalDisplayAdapter;->-$$Nest$fgetmIsBootDisplayModeSupported(Lcom/android/server/display/LocalDisplayAdapter;)Z

    move-result v7

    if-eqz v7, :cond_b

    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    if-eq v7, v4, :cond_b

    .line 400
    iput v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemPreferredModeId:I

    move v4, v10

    goto :goto_5

    :cond_b
    move v4, v6

    .line 410
    :goto_5
    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const-string v9, "LocalDisplayAdapter"

    if-eq v7, v1, :cond_c

    iget-object v12, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 411
    invoke-virtual {v12}, Landroid/view/Display$Mode;->getModeId()I

    move-result v12

    if-eq v7, v12, :cond_c

    .line 412
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "The active mode was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v9, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    iget-object v7, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iput v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 416
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v7, v10

    goto :goto_6

    :cond_c
    move v7, v6

    .line 421
    :goto_6
    iget v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    const/4 v13, 0x0

    cmpl-float v13, v12, v13

    if-lez v13, :cond_d

    cmpl-float v12, v12, v2

    if-eqz v12, :cond_d

    .line 422
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "The render frame rate was changed from SurfaceFlinger or the display device to "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 426
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v12}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    move v12, v10

    goto :goto_7

    :cond_d
    move v12, v6

    .line 431
    :goto_7
    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v13, v1, :cond_f

    .line 432
    iget v13, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->defaultMode:I

    invoke-virtual {v0, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v13

    if-eq v13, v1, :cond_e

    .line 436
    iget-object v14, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v15, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v15, v13, :cond_e

    iget-object v13, v14, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->primary:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v14, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->primaryRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 438
    invoke-virtual {v13, v14}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v13, v13, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequest:Landroid/view/SurfaceControl$RefreshRateRanges;

    iget-object v3, v3, Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;->appRequestRanges:Landroid/view/SurfaceControl$RefreshRateRanges;

    .line 439
    invoke-virtual {v13, v3}, Landroid/view/SurfaceControl$RefreshRateRanges;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 440
    :cond_e
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 441
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    .line 445
    :cond_f
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v13, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v13}, Landroid/util/SparseArray;->size()I

    move-result v13

    if-ne v3, v13, :cond_13

    if-eqz v8, :cond_10

    goto :goto_9

    :cond_10
    if-nez v7, :cond_12

    if-nez v4, :cond_12

    if-eqz v12, :cond_11

    goto :goto_8

    :cond_11
    return v6

    :cond_12
    :goto_8
    return v10

    .line 451
    :cond_13
    :goto_9
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->clear()V

    .line 452
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v3

    :goto_a
    if-ge v6, v3, :cond_14

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v6, 0x1

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 453
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v13, v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    invoke-virtual {v12, v13, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_a

    .line 457
    :cond_14
    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-ne v3, v1, :cond_15

    .line 458
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 459
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 460
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_b

    :cond_15
    if-eqz v8, :cond_16

    if-eqz v7, :cond_16

    .line 462
    const-string v3, "New display modes are added and the active mode has changed, use active mode as default mode."

    invoke-static {v9, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 465
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 466
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    goto :goto_b

    .line 467
    :cond_16
    iget v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findSfDisplayModeIdLocked(II)I

    move-result v3

    if-gez v3, :cond_17

    .line 468
    const-string v3, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 471
    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveSfDisplayMode:Landroid/view/SurfaceControl$DisplayMode;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayMode;->group:I

    iput v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeGroup:I

    .line 472
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveRenderFrameRate:F

    .line 476
    :cond_17
    :goto_b
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v3, v3, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_19

    .line 477
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v2, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eq v2, v1, :cond_18

    .line 478
    const-string v2, "DisplayModeSpecs base mode no longer available, using currently active mode."

    invoke-static {v9, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 482
    :cond_18
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v3, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    iput v3, v2, Lcom/android/server/display/mode/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 483
    iput-boolean v10, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 486
    :cond_19
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredMode:Landroid/view/Display$Mode;

    if-eqz v2, :cond_1a

    .line 487
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findUserPreferredModeIdLocked(Landroid/view/Display$Mode;)I

    move-result v2

    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mUserPreferredModeId:I

    .line 491
    :cond_1a
    iget-object v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v3, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1c

    .line 492
    iget v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eq v2, v1, :cond_1b

    .line 493
    const-string v1, "Active display mode no longer available, reverting to default mode."

    invoke-static {v9, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getPreferredModeId()I

    move-result v1

    iput v1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 500
    :cond_1c
    iget-object v0, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->sendTraversalRequestLocked()V

    return v10
.end method

.method public updateDisplayPropertiesLocked(Landroid/view/SurfaceControl$StaticDisplayInfo;Landroid/view/SurfaceControl$DynamicDisplayInfo;Landroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z
    .locals 6

    .line 301
    iget-object v1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedDisplayModes:[Landroid/view/SurfaceControl$DisplayMode;

    iget v2, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->preferredBootDisplayMode:I

    iget v3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeDisplayModeId:I

    iget v4, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->renderFrameRate:F

    move-object v0, p0

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayModesLocked([Landroid/view/SurfaceControl$DisplayMode;IIFLandroid/view/SurfaceControl$DesiredDisplayModeSpecs;)Z

    move-result p0

    .line 304
    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 305
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedColorModes:[I

    iget p3, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->activeColorMode:I

    invoke-virtual {v0, p1, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    move-result p1

    or-int/2addr p0, p1

    .line 307
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 308
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->autoLowLatencyModeSupported:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllmSupport(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 309
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->gameContentTypeSupported:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateGameContentTypeSupport(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 310
    iget-boolean p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->hasArrSupport:Z

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHasArrSupportLocked(Z)Z

    move-result p1

    or-int/2addr p0, p1

    .line 311
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->frameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateFrameRateCategoryRatesLocked(Landroid/view/FrameRateCategoryRate;)Z

    move-result p1

    or-int/2addr p0, p1

    .line 312
    iget-object p1, p2, Landroid/view/SurfaceControl$DynamicDisplayInfo;->supportedRefreshRates:[F

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateSupportedRefreshatesLocked([F)Z

    move-result p1

    or-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 315
    iput-boolean p1, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    :cond_0
    return p0
.end method

.method public final updateFrameRateCategoryRatesLocked(Landroid/view/FrameRateCategoryRate;)Z
    .locals 1

    .line 624
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 627
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateCategoryRate:Landroid/view/FrameRateCategoryRate;

    const/4 p0, 0x1

    return p0
.end method

.method public updateFrameRateOverridesLocked([Landroid/view/DisplayEventReceiver$FrameRateOverride;)Z
    .locals 1

    .line 1253
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1257
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mFrameRateOverrides:[Landroid/view/DisplayEventReceiver$FrameRateOverride;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateGameContentTypeSupport(Z)Z
    .locals 1

    .line 662
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 665
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHasArrSupportLocked(Z)Z
    .locals 1

    .line 632
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    if-ne v0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 635
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHasArrSupport:Z

    const/4 p0, 0x1

    return p0
.end method

.method public updateHdcpLevelsLocked(II)Z
    .locals 2

    const/4 v0, 0x0

    if-le p1, p2, :cond_0

    .line 1263
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HDCP connected level: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is larger than max level: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ignoring request."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LocalDisplayAdapter"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 1269
    :cond_0
    iget p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    if-ne p2, p1, :cond_1

    return v0

    .line 1273
    :cond_1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mConnectedHdcpLevel:I

    const/4 p0, 0x1

    return p0
.end method

.method public final updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 618
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateStaticInfo(Landroid/view/SurfaceControl$StaticDisplayInfo;)Z
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 560
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mStaticDisplayInfo:Landroid/view/SurfaceControl$StaticDisplayInfo;

    const/4 p0, 0x1

    return p0
.end method

.method public final updateSupportedRefreshatesLocked([F)Z
    .locals 2

    .line 640
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayAdapter;->getFeatureFlags()Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->enableGetSupportedRefreshRates()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-nez p1, :cond_1

    return v1

    .line 646
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    invoke-static {v0, p1}, Ljava/util/Arrays;->equals([F[F)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 649
    :cond_2
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedRefreshRates:[F

    const/4 p0, 0x1

    return p0
.end method
