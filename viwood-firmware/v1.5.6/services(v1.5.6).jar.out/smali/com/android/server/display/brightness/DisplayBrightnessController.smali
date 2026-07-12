.class public final Lcom/android/server/display/brightness/DisplayBrightnessController;
.super Ljava/lang/Object;
.source "DisplayBrightnessController.java"


# instance fields
.field mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

.field public final mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

.field public final mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

.field public mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

.field public mCurrentScreenBrightness:F

.field public mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

.field public mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

.field public final mDisplayId:I

.field public mIsStylusBeingUsed:Z

.field public mLastUserSetScreenBrightness:F

.field public final mLock:Ljava/lang/Object;

.field public mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

.field public mPendingScreenBrightness:F

.field public final mPersistBrightnessNitsForDefaultDisplay:Z

.field public final mScreenBrightnessDefault:F

.field public mUserSetScreenBrightnessUpdated:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;IFLcom/android/server/display/BrightnessSetting;Ljava/lang/Runnable;Landroid/os/HandlerExecutor;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 80
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    if-nez p2, :cond_0

    .line 124
    new-instance p2, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;

    invoke-direct {p2}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;-><init>()V

    .line 126
    :cond_0
    iput p3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    .line 128
    iput-object p5, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 129
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 130
    invoke-static {p4}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    .line 131
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result p4

    iput p4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 132
    iput-object p6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    .line 133
    invoke-virtual {p2, p1, p3, p8}, Lcom/android/server/display/brightness/DisplayBrightnessController$Injector;->getDisplayBrightnessStrategySelector(Landroid/content/Context;ILcom/android/server/display/feature/DisplayManagerFlags;)Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 135
    iput-object p7, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    .line 136
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x111020c

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    return-void
.end method


# virtual methods
.method public final addAutomaticBrightnessState(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState;
    .locals 0

    .line 591
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    .line 593
    invoke-static {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->from(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState$Builder;

    move-result-object p1

    if-eqz p0, :cond_0

    .line 595
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->shouldUseAutoBrightness()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 594
    :goto_0
    invoke-virtual {p1, p0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setShouldUseAutoBrightness(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 596
    invoke-virtual {p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->build()Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0
.end method

.method public final constructStrategyExecutionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Lcom/android/server/display/brightness/StrategyExecutionRequest;
    .locals 3

    .line 661
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getCurrentBrightness()F

    move-result v0

    .line 662
    new-instance v1, Lcom/android/server/display/brightness/StrategyExecutionRequest;

    iget-boolean v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    invoke-direct {v1, p1, v0, v2, p0}, Lcom/android/server/display/brightness/StrategyExecutionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;FZZ)V

    return-object v1
.end method

.method public final constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/brightness/StrategySelectionRequest;
    .locals 8

    .line 649
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->updateUserSetScreenBrightness()Z

    move-result v4

    .line 651
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 652
    :try_start_0
    iget v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 653
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 654
    new-instance v0, Lcom/android/server/display/brightness/StrategySelectionRequest;

    iget-boolean v6, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    move-object v1, p1

    move v2, p2

    move-object v5, p3

    move v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/brightness/StrategySelectionRequest;-><init>(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;IFZLandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;ZZ)V

    return-object v0

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 653
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public convertToAdjustedNits(F)F
    .locals 0

    .line 427
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 430
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToAdjustedNits(F)F

    move-result p0

    return p0
.end method

.method public convertToNits(F)F
    .locals 0

    .line 411
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, -0x40800000    # -1.0f

    return p0

    .line 414
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->convertToNits(F)F

    move-result p0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    .line 475
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 476
    const-string v0, "DisplayBrightnessController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDisplayId=: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mScreenBrightnessDefault="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPersistBrightnessNitsForDefaultDisplay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mIsStylusBeingUsed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 483
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 484
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPendingScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 485
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mCurrentScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLastUserSetScreenBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 488
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    if-eqz v1, :cond_0

    .line 489
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Last selected DisplayBrightnessStrategy= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 490
    invoke-interface {v2}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 489
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 492
    :cond_0
    :goto_0
    new-instance v1, Landroid/util/IndentingPrintWriter;

    const-string v2, " "

    invoke-direct {v1, p1, v2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 493
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0, v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->dump(Ljava/io/PrintWriter;)V

    .line 494
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;
    .locals 1

    .line 464
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 465
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 466
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;
    .locals 0

    .line 398
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object p0

    return-object p0
.end method

.method public getBrightnessFromNits(F)F
    .locals 0

    .line 442
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    if-nez p0, :cond_0

    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0

    .line 445
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/AutomaticBrightnessController;->getBrightnessFromNits(F)F

    move-result p0

    return p0
.end method

.method public getBrightnessSettingListener()Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;
    .locals 0

    .line 547
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    return-object p0
.end method

.method public getCurrentBrightness()F
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 264
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;
    .locals 1

    .line 555
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 557
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getIsUserSetScreenBrightnessUpdated()Z
    .locals 0

    .line 295
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return p0
.end method

.method public getLastUserSetScreenBrightness()F
    .locals 1

    .line 312
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 313
    :try_start_0
    iget p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 314
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getScreenBrightnessSetting()F
    .locals 3

    .line 322
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightness()F

    move-result v0

    .line 323
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 324
    :try_start_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 325
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mScreenBrightnessDefault:F

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 327
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->clampAbsoluteBrightness(F)F

    move-result p0

    monitor-exit v1

    return p0

    .line 328
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowAutoBrightnessWhileDozing()Z
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAllowAutoBrightnessWhileDozing()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAllowAutoBrightnessWhileDozingConfig()Z
    .locals 1

    .line 238
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 239
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->isAllowAutoBrightnessWhileDozingConfig()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 240
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isStylusBeingUsed()Z
    .locals 0

    .line 533
    iget-boolean p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    return p0
.end method

.method public final loadNitBasedBrightnessSetting()V
    .locals 2

    .line 622
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz v0, :cond_0

    .line 623
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    .line 624
    invoke-virtual {v0}, Lcom/android/server/display/BrightnessSetting;->getBrightnessNitsForDefaultDisplay()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 626
    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getBrightnessFromNits(F)F

    move-result v0

    .line 628
    invoke-static {v0}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 629
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightnessNoNotify(F)V

    goto :goto_0

    :cond_0
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 635
    :goto_0
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 636
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getScreenBrightnessSetting()F

    move-result v0

    .line 639
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 640
    :try_start_0
    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    .line 641
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final notifyCurrentScreenBrightness()V
    .locals 1

    .line 613
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessChangeExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mOnBrightnessChangeRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public registerBrightnessSettingChangeListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V
    .locals 0

    .line 304
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    .line 305
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/display/BrightnessSetting;->registerListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    return-void
.end method

.method public saveBrightnessIfNeeded()V
    .locals 0

    .line 363
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0}, Lcom/android/server/display/BrightnessSetting;->saveIfNeeded()V

    return-void
.end method

.method public setAndNotifyCurrentScreenBrightness(F)V
    .locals 2

    .line 249
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v1, p1, v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 251
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setCurrentScreenBrightnessLocked(F)V

    .line 252
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 254
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    .line 252
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 1

    .line 568
    iput-object p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mAutomaticBrightnessController:Lcom/android/server/display/AutomaticBrightnessController;

    .line 569
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutomaticBrightnessStrategy()Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;

    move-result-object v0

    .line 570
    invoke-virtual {v0, p1}, Lcom/android/server/display/brightness/strategy/AutomaticBrightnessStrategy2;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    .line 571
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->loadNitBasedBrightnessSetting()V

    return-void
.end method

.method public setBrightness(FF)V
    .locals 3

    .line 337
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p1}, Lcom/android/server/display/BrightnessSetting;->setBrightness(F)V

    .line 338
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayId:I

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPersistBrightnessNitsForDefaultDisplay:Z

    if-eqz v0, :cond_1

    .line 339
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->convertToNits(F)F

    move-result v0

    .line 340
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v1}, Lcom/android/server/display/BrightnessSetting;->getBrightnessNitsForDefaultDisplay()F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v2, v0, v2

    if-ltz v2, :cond_1

    cmpl-float p1, p1, p2

    if-nez p1, :cond_0

    cmpl-float p1, v1, v0

    if-gtz p1, :cond_1

    .line 346
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {p0, v0}, Lcom/android/server/display/BrightnessSetting;->setBrightnessNitsForDefaultDisplay(F)V

    :cond_1
    return-void
.end method

.method public setBrightness(FIF)V
    .locals 1

    .line 355
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    invoke-virtual {v0, p2}, Lcom/android/server/display/BrightnessSetting;->setUserSerial(I)V

    .line 356
    invoke-virtual {p0, p1, p3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    return-void
.end method

.method public setBrightnessFromOffload(F)Z
    .locals 2

    .line 211
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 214
    invoke-virtual {v1}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->getOffloadScreenBrightness()F

    move-result v1

    .line 213
    invoke-static {v1, p1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 215
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOffloadBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;

    move-result-object p0

    .line 216
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/OffloadBrightnessStrategy;->setOffloadScreenBrightness(F)V

    const/4 p0, 0x1

    .line 217
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 219
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setBrightnessToFollow(FZ)V
    .locals 1

    .line 200
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getFollowerDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;

    move-result-object p0

    .line 202
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/strategy/FollowerBrightnessStrategy;->setBrightnessToFollow(FZ)V

    .line 203
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setCurrentScreenBrightnessLocked(F)V
    .locals 1

    .line 607
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    .line 608
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    :cond_0
    return-void
.end method

.method public setPendingScreenBrightness(F)V
    .locals 1

    .line 282
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    iput p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 284
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setStylusBeingUsed(Z)V
    .locals 0

    .line 528
    iput-boolean p1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mIsStylusBeingUsed:Z

    return-void
.end method

.method public setTemporaryBrightness(Ljava/lang/Float;)V
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightnessLocked(F)V

    .line 179
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setTemporaryBrightnessLocked(F)V
    .locals 0

    .line 601
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getTemporaryDisplayBrightnessStrategy()Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;

    move-result-object p0

    .line 602
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/TemporaryBrightnessStrategy;->setTemporaryScreenBrightness(F)V

    return-void
.end method

.method public setUpAutoBrightness(Lcom/android/server/display/AutomaticBrightnessController;Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .locals 0

    .line 389
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setAutomaticBrightnessController(Lcom/android/server/display/AutomaticBrightnessController;)V

    move-object p1, p2

    move-object p2, p3

    move-object p3, p4

    move-object p4, p5

    move p5, p6

    move p6, p7

    .line 390
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setUpAutoBrightnessFallbackStrategy(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    return-void
.end method

.method public final setUpAutoBrightnessFallbackStrategy(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 581
    invoke-virtual/range {p0 .. p6}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->setupAutoBrightnessFallbackSensor(Landroid/hardware/SensorManager;Lcom/android/server/display/DisplayDeviceConfig;Landroid/os/Handler;Lcom/android/server/display/BrightnessMappingStrategy;ZI)V

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 453
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSetting:Lcom/android/server/display/BrightnessSetting;

    if-eqz v0, :cond_0

    .line 454
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mBrightnessSettingListener:Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;

    invoke-virtual {v0, v1}, Lcom/android/server/display/BrightnessSetting;->unregisterListener(Lcom/android/server/display/BrightnessSetting$BrightnessSettingListener;)V

    .line 457
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->getAutoBrightnessFallbackStrategy()Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 459
    invoke-virtual {p0}, Lcom/android/server/display/brightness/strategy/AutoBrightnessFallbackStrategy;->stop()V

    :cond_1
    return-void
.end method

.method public updateBrightness(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/DisplayBrightnessState;
    .locals 2

    .line 156
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 157
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    .line 158
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->constructStrategySelectionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;ILandroid/hardware/display/DisplayManagerInternal$DisplayOffloadSession;Z)Lcom/android/server/display/brightness/StrategySelectionRequest;

    move-result-object p2

    .line 157
    invoke-virtual {v1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->selectStrategy(Lcom/android/server/display/brightness/StrategySelectionRequest;)Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategy:Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;

    .line 161
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->constructStrategyExecutionRequest(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;)Lcom/android/server/display/brightness/StrategyExecutionRequest;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/android/server/display/brightness/strategy/DisplayBrightnessStrategy;->updateBrightness(Lcom/android/server/display/brightness/StrategyExecutionRequest;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p1

    .line 162
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 168
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->addAutomaticBrightnessState(Lcom/android/server/display/DisplayBrightnessState;)Lcom/android/server/display/DisplayBrightnessState;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :catchall_0
    move-exception p0

    .line 162
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateScreenBrightnessSetting(FF)V
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 371
    :try_start_0
    invoke-static {p1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    cmpl-float v1, p1, v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setCurrentScreenBrightnessLocked(F)V

    .line 376
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 377
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    .line 378
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setBrightness(FF)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 373
    :cond_1
    :goto_0
    :try_start_1
    monitor-exit v0

    return-void

    .line 376
    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateUserSetScreenBrightness()Z
    .locals 5

    const/4 v0, 0x0

    .line 504
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    .line 505
    iget-object v1, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 506
    :try_start_0
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    invoke-static {v2}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v2

    if-nez v2, :cond_0

    .line 507
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 509
    :cond_0
    iget v2, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mCurrentScreenBrightness:F

    iget v3, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    cmpl-float v2, v2, v3

    const/high16 v4, 0x7fc00000    # Float.NaN

    if-nez v2, :cond_1

    .line 510
    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 511
    invoke-virtual {p0, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightnessLocked(F)V

    .line 512
    monitor-exit v1

    return v0

    .line 514
    :cond_1
    invoke-virtual {p0, v3}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setCurrentScreenBrightnessLocked(F)V

    .line 515
    iget v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    iput v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLastUserSetScreenBrightness:F

    .line 516
    iput v4, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mPendingScreenBrightness:F

    .line 517
    invoke-virtual {p0, v4}, Lcom/android/server/display/brightness/DisplayBrightnessController;->setTemporaryBrightnessLocked(F)V

    .line 518
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 519
    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessController;->notifyCurrentScreenBrightness()V

    const/4 v0, 0x1

    .line 520
    iput-boolean v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mUserSetScreenBrightnessUpdated:Z

    return v0

    .line 518
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 191
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/brightness/DisplayBrightnessController;->mDisplayBrightnessStrategySelector:Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/DisplayBrightnessStrategySelector;->getOverrideBrightnessStrategy()Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;

    move-result-object p0

    .line 192
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/strategy/OverrideBrightnessStrategy;->updateWindowManagerBrightnessOverride(Landroid/hardware/display/DisplayManagerInternal$DisplayBrightnessOverrideRequest;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 193
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
