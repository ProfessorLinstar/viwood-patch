.class public Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

.field public mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mHbmActive:Landroid/util/SparseBooleanArray;

.field public final mHbmMode:Landroid/util/SparseIntArray;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mRefreshRateInHbmHdr:I

.field public mRefreshRateInHbmSunlight:I

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/mode/VotesStorage;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;)V
    .locals 0

    .line 2925
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2915
    new-instance p1, Landroid/util/SparseIntArray;

    invoke-direct {p1}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 2916
    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 2926
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 2927
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 2928
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    .line 2929
    iput-object p5, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 2

    .line 3068
    const-string v0, "   HbmObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3069
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3070
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mHbmActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3071
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3072
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "     mRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getRefreshRateInHbmHdr()I
    .locals 0

    .line 2969
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .locals 0

    .line 2961
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return p0
.end method

.method public observe()V
    .locals 8

    .line 2947
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 2948
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->setupHdrRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 2949
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2950
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplayManagerInternal()Landroid/hardware/display/DisplayManagerInternal;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 2951
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x2

    const-wide/16 v6, 0x1

    move-object v2, p0

    invoke-interface/range {v1 .. v7}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2949
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDeviceConfigRefreshRateInHbmChanged()V
    .locals 4

    .line 3024
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->copyKeys()[I

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3026
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 3027
    invoke-virtual {p0, v3}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmHdrChanged(I)V
    .locals 1

    .line 2986
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-eq p1, v0, :cond_0

    .line 2987
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 2988
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_0
    return-void
.end method

.method public onDeviceConfigRefreshRateInHbmSunlightChanged(I)V
    .locals 1

    .line 2976
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-eq p1, v0, :cond_0

    .line 2977
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    .line 2978
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->onDeviceConfigRefreshRateInHbmChanged()V

    :cond_0
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 3004
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3010
    :cond_0
    iget v1, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessMode:I

    if-eqz v1, :cond_1

    .line 3011
    iget v2, v0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    iget v0, v0, Landroid/hardware/display/BrightnessInfo;->highBrightnessTransitionPoint:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 3013
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    .line 3014
    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v2

    if-ne v0, v2, :cond_2

    :goto_1
    return-void

    .line 3018
    :cond_2
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 3019
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 3020
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->recalculateVotesForDisplay(I)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 3

    .line 2997
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 2998
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 2999
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    return-void
.end method

.method public final recalculateVotesForDisplay(I)V
    .locals 7

    .line 3034
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmActive:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 3035
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mHbmMode:Landroid/util/SparseIntArray;

    .line 3036
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    .line 3039
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    if-lez v0, :cond_0

    int-to-float v1, v0

    int-to-float v0, v0

    .line 3040
    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v3

    goto :goto_1

    .line 3043
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDisplayManagerInternal:Landroid/hardware/display/DisplayManagerInternal;

    .line 3044
    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManagerInternal;->getRefreshRateLimitations(I)Ljava/util/List;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_4

    .line 3045
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_4

    .line 3046
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;

    .line 3047
    iget v6, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->type:I

    if-ne v6, v4, :cond_1

    .line 3048
    iget-object v0, v5, Landroid/hardware/display/DisplayManagerInternal$RefreshRateLimitation;->range:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v3

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    .line 3054
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    if-lez v1, :cond_3

    int-to-float v0, v1

    int-to-float v1, v1

    .line 3058
    invoke-static {v0, v1}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v3

    goto :goto_1

    .line 3060
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected HBM mode "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " for display ID "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    :cond_4
    :goto_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    invoke-virtual {p0, p1, v2, v3}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public setupHdrRefreshRates(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 1

    .line 2936
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 2937
    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->-$$Nest$mgetRefreshRateInHbmHdr(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmHdr:I

    .line 2938
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mDeviceConfigDisplaySettings:Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 2939
    invoke-static {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->-$$Nest$mgetRefreshRateInHbmSunlight(Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;Lcom/android/server/display/DisplayDeviceConfig;)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$HbmObserver;->mRefreshRateInHbmSunlight:I

    return-void
.end method
