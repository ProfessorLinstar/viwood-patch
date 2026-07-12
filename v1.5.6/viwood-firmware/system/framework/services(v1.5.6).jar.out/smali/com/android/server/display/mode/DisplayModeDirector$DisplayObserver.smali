.class public final Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mExternalDisplayPeakHeight:I

.field public mExternalDisplayPeakRefreshRate:I

.field public mExternalDisplayPeakWidth:I

.field public final mHandler:Landroid/os/Handler;

.field public final mRefreshRateSynchronizationEnabled:Z

.field public final mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/VotesStorage;Lcom/android/server/display/mode/DisplayModeDirector$Injector;)V
    .locals 0

    .line 1494
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1495
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mContext:Landroid/content/Context;

    .line 1496
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    .line 1497
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    .line 1498
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e009a

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    .line 1500
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e009b

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    .line 1502
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x10e0099

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    .line 1504
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111021a

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    return-void
.end method


# virtual methods
.method public final addDisplaysSynchronizedPeakRefreshRate()V
    .locals 5

    .line 1718
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isRefreshRateSynchronizationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1722
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0xb

    const/high16 v2, 0x426c0000    # 59.0f

    const/high16 v3, 0x42740000    # 61.0f

    .line 1723
    invoke-static {v2, v3}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v4

    .line 1722
    invoke-virtual {v0, v1, v4}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 1728
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xc

    .line 1729
    invoke-static {v2, v3}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    .line 1728
    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final findDisplayPreferredMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;
    .locals 6

    .line 1675
    iget p0, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p0, v0, :cond_0

    return-object v1

    .line 1678
    :cond_0
    iget-object p0, p1, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    array-length v0, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p0, v2

    .line 1679
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iget v5, p1, Landroid/view/DisplayInfo;->userPreferredModeId:I

    if-ne v4, v5, :cond_1

    return-object v3

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public final getDisplayInfo(I)Landroid/view/DisplayInfo;
    .locals 1

    .line 1614
    new-instance v0, Landroid/view/DisplayInfo;

    invoke-direct {v0}, Landroid/view/DisplayInfo;-><init>()V

    .line 1616
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object p0

    invoke-interface {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplayInfo(ILandroid/view/DisplayInfo;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isExternalDisplayLimitModeEnabled()Z
    .locals 1

    .line 1509
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsExternalDisplayLimitModeEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsDisplayResolutionRangeVotingEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsUserPreferredModeVoteEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isRefreshRateSynchronizationEnabled()Z
    .locals 1

    .line 1518
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mRefreshRateSynchronizationEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsDisplaysRefreshRatesSynchronizationEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public observe()V
    .locals 11

    .line 1523
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mHandler:Landroid/os/Handler;

    invoke-interface {v0, p0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    .line 1526
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 1527
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 1528
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 1529
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmInjector(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplays()[Landroid/view/Display;

    move-result-object v3

    .line 1530
    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    aget-object v7, v3, v6

    .line 1531
    invoke-virtual {v7}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    .line 1532
    invoke-virtual {p0, v7}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v8

    .line 1533
    iget-object v9, v8, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v0, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1534
    iget-object v9, v8, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1535
    invoke-virtual {v8}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v8

    invoke-virtual {v2, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1537
    :cond_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    move-result-object v3

    .line 1538
    invoke-interface {v3, v5}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v3

    .line 1539
    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v4}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 1540
    :try_start_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v6

    move v7, v5

    :goto_1
    if-ge v7, v6, :cond_1

    .line 1542
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/view/Display$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1543
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v1, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, [Landroid/view/Display$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1544
    iget-object v8, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v8}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v8

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    invoke-virtual {v2, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/Display$Mode;

    invoke-virtual {v8, v9, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1546
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1547
    monitor-exit v4

    return-void

    :goto_2
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onDisplayAdded(I)V
    .locals 1

    .line 1552
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    .line 1553
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1554
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->registerExternalDisplay(Landroid/view/DisplayInfo;)V

    .line 1555
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    .line 1556
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateHasArrSupport(ILandroid/view/DisplayInfo;)V

    .line 1557
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 1558
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    .line 1559
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplaysPeakRefreshRateAndResolution(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 1

    .line 1580
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayDeviceConfig(I)V

    .line 1581
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->getDisplayInfo(I)Landroid/view/DisplayInfo;

    move-result-object v0

    .line 1582
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateHasArrSupport(ILandroid/view/DisplayInfo;)V

    .line 1583
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateDisplayModes(ILandroid/view/DisplayInfo;)V

    .line 1584
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 1585
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V

    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 2

    .line 1564
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1565
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1566
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1567
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1568
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 1569
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mremoveRefreshRateSetting(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V

    .line 1570
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHasArrSupport(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseBooleanArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 1571
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    .line 1572
    invoke-virtual {p0, p1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V

    .line 1573
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->removeUserSettingDisplayPreferredSize(I)V

    .line 1574
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->removeDisplaysPeakRefreshRateAndResolution(I)V

    .line 1575
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->unregisterExternalDisplay(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 1571
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final registerExternalDisplay(Landroid/view/DisplayInfo;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1589
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_2

    .line 1592
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1593
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;

    move-result-object v1

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 1594
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 1595
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->addDisplaysSynchronizedPeakRefreshRate()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1597
    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method public final removeDisplaysPeakRefreshRateAndResolution(I)V
    .locals 2

    .line 1687
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1691
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xd

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final removeDisplaysSynchronizedPeakRefreshRate()V
    .locals 3

    .line 1737
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isRefreshRateSynchronizationEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1740
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v1, 0xb

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 1741
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0xc

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final removeUserSettingDisplayPreferredSize(I)V
    .locals 2

    .line 1635
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsUserPreferredModeVoteEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 1638
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final unregisterExternalDisplay(I)V
    .locals 2

    .line 1601
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1602
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-virtual {v1, p1}, Lcom/android/server/display/mode/DisplayModeDirector;->isExternalDisplayLocked(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1603
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 1605
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 1606
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmExternalDisplaysConnected(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1607
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->removeDisplaysSynchronizedPeakRefreshRate()V

    .line 1609
    :cond_1
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDisplayDeviceConfig(I)V
    .locals 2

    .line 1745
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;

    move-result-object v0

    .line 1746
    invoke-interface {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayDeviceConfigProvider;->getDisplayDeviceConfig(I)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 1747
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1748
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayDeviceConfigByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1749
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDisplayModes(ILandroid/view/DisplayInfo;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 1757
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1758
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    iget-object v2, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_1

    .line 1759
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v3, p2, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 1762
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    iget-object v4, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 1764
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmAppSupportedModesByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    iget-object v3, p2, Landroid/view/DisplayInfo;->appsSupportedModes:[Landroid/view/Display$Mode;

    invoke-virtual {v1, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move v1, v2

    .line 1767
    :cond_2
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v3}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 1769
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultModeByDisplay(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseArray;

    move-result-object v1

    invoke-virtual {p2}, Landroid/view/DisplayInfo;->getDefaultMode()Landroid/view/Display$Mode;

    move-result-object p2

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    move v2, v1

    :goto_1
    if-eqz v2, :cond_4

    .line 1772
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 1773
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;->-$$Nest$mupdateRefreshRateSettingLocked(Lcom/android/server/display/mode/DisplayModeDirector$SettingsObserver;I)V

    .line 1775
    :cond_4
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateDisplaysPeakRefreshRateAndResolution(Landroid/view/DisplayInfo;)V
    .locals 7

    if-eqz p1, :cond_1

    .line 1698
    iget v0, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1699
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isExternalDisplayLimitModeEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1703
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakWidth:I

    iget v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakHeight:I

    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mExternalDisplayPeakRefreshRate:I

    int-to-float v6, p0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    .line 1705
    invoke-static/range {v1 .. v6}, Lcom/android/server/display/mode/Vote;->forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/Vote;

    move-result-object p0

    const/16 v1, 0xd

    .line 1703
    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public final updateHasArrSupport(ILandroid/view/DisplayInfo;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1782
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1783
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmHasArrSupport(Lcom/android/server/display/mode/DisplayModeDirector;)Landroid/util/SparseBooleanArray;

    move-result-object p0

    iget-boolean p2, p2, Landroid/view/DisplayInfo;->hasArrSupport:Z

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 1784
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final updateLayoutLimitedFrameRate(ILandroid/view/DisplayInfo;)V
    .locals 3

    if-eqz p2, :cond_0

    .line 1622
    iget-object v0, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    if-eqz v0, :cond_0

    .line 1623
    iget v1, v0, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v0, v0, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1625
    iget-object p2, p2, Landroid/view/DisplayInfo;->layoutLimitedRefreshRate:Landroid/view/SurfaceControl$RefreshRateRange;

    iget v1, p2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget p2, p2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    invoke-static {v1, p2}, Lcom/android/server/display/mode/Vote;->forRenderFrameRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object p2, v0

    .line 1628
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v2, 0xf

    invoke-virtual {v1, p1, v2, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    .line 1630
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    const/16 v0, 0x10

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final updateUserSettingDisplayPreferredSize(Landroid/view/DisplayInfo;)V
    .locals 10

    if-eqz p1, :cond_3

    .line 1643
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmIsUserPreferredModeVoteEnabled(Lcom/android/server/display/mode/DisplayModeDirector;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1647
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->findDisplayPreferredMode(Landroid/view/DisplayInfo;)Landroid/view/Display$Mode;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1649
    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->removeUserSettingDisplayPreferredSize(I)V

    return-void

    .line 1653
    :cond_1
    iget v1, p1, Landroid/view/DisplayInfo;->type:I

    const/4 v2, 0x2

    const/4 v3, 0x4

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v1

    .line 1654
    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUserRefreshRateForExternalDisplayEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1655
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->isRefreshRateSynchronizationEnabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1656
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 1659
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    .line 1660
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    .line 1661
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v6

    .line 1662
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v7

    .line 1663
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v8

    .line 1664
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v9

    .line 1658
    invoke-static/range {v4 .. v9}, Lcom/android/server/display/mode/Vote;->forSizeAndPhysicalRefreshRatesRange(IIIIFF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1656
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    return-void

    .line 1666
    :cond_2
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$DisplayObserver;->mVotesStorage:Lcom/android/server/display/mode/VotesStorage;

    iget p1, p1, Landroid/view/DisplayInfo;->displayId:I

    .line 1668
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v1

    .line 1669
    invoke-virtual {v0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v0

    .line 1668
    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forSize(II)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 1666
    invoke-virtual {p0, p1, v3, v0}, Lcom/android/server/display/mode/VotesStorage;->updateVote(IILcom/android/server/display/mode/Vote;)V

    :cond_3
    :goto_0
    return-void
.end method
