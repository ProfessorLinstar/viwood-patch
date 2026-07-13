.class public Lcom/android/server/wm/WindowProcessController;
.super Lcom/android/server/wm/ConfigurationContainer;
.source "WindowProcessController.java"

# interfaces
.implements Lcom/android/server/wm/ConfigurationContainerListener;


# static fields
.field public static final ACTIVITY_STATE_VISIBLE:I

.field public static final MAX_NUM_PERCEPTIBLE_FREEFORM:I

.field public static final TAG_CONFIGURATION:Ljava/lang/String;

.field public static final TAG_RELEASE:Ljava/lang/String;


# instance fields
.field public final mActivities:Ljava/util/ArrayList;

.field public volatile mActivityStateFlags:I

.field public mAnimatingReasons:I

.field public final mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

.field public mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

.field public volatile mCrashing:Z

.field public volatile mCurAdj:I

.field public volatile mCurProcState:I

.field public volatile mCurSchedGroup:I

.field public volatile mDebugging:Z

.field public mDisplayArea:Lcom/android/server/wm/DisplayArea;

.field public volatile mFgInteractionTime:J

.field public volatile mHasActivities:Z

.field public volatile mHasCachedConfiguration:Z

.field public volatile mHasClientActivities:Z

.field public mHasEverAttached:Z

.field public volatile mHasForegroundServices:Z

.field public volatile mHasImeService:Z

.field public volatile mHasOverlayUi:Z

.field public mHasPendingConfigurationChange:Z

.field public volatile mHasRecentTasks:Z

.field public volatile mHasTopUi:Z

.field public mInactiveActivities:Ljava/util/ArrayList;

.field public volatile mInfo:Landroid/content/pm/ApplicationInfo;

.field public volatile mInstrumentationSourceUid:I

.field public volatile mInstrumenting:Z

.field public volatile mInstrumentingWithBackgroundActivityStartPrivileges:Z

.field public volatile mInteractionEventTime:J

.field public volatile mIsActivityConfigOverrideAllowed:Z

.field public volatile mLastActivityFinishTime:J

.field public volatile mLastActivityLaunchTime:J

.field public final mLastReportedConfiguration:Landroid/content/res/Configuration;

.field public mLastTopActivityDeviceId:I

.field public final mListener:Lcom/android/server/wm/WindowProcessListener;

.field public final mName:Ljava/lang/String;

.field public volatile mNotResponding:Z

.field public final mOwner:Ljava/lang/Object;

.field public mPauseConfigurationDispatchCount:I

.field public volatile mPendingUiClean:Z

.field public volatile mPerceptible:Z

.field public volatile mPerceptibleTaskStoppedTimeMillis:J

.field public volatile mPersistent:Z

.field public volatile mPid:I

.field public final mPkgList:Ljava/util/ArrayList;

.field public mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field public mRapidActivityLaunchCount:I

.field public final mRecentTasks:Ljava/util/ArrayList;

.field public mRemoteActivities:Landroid/util/ArrayMap;

.field public volatile mRepProcState:I

.field public volatile mRequiredAbi:Ljava/lang/String;

.field public volatile mStoppedState:I

.field public mThread:Landroid/app/IApplicationThread;

.field public final mUid:I

.field public final mUseFifoUiScheduling:Z

.field public final mUserId:I

.field public volatile mUsingWrapper:Z

.field public mVrThreadTid:I

.field public volatile mWasStoppedLogged:Z

.field public volatile mWhenUnimportant:J

.field public mWindowSession:Lcom/android/server/wm/Session;


# direct methods
.method public static synthetic $r8$lambda$7DkZeFJ_HKGIlBuGcyQ0rMLS1wc(Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->lambda$onTopProcChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$F0Yc8f_QKZqEu2LPODjK6PGu3oo(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .locals 0

    .line 0
    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$XqpEI_-p3OJIDEMgWmLxQ6oMfMk(Lcom/android/server/wm/WindowProcessController;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->lambda$setAnimating$4(Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$YiYJOZGNKWfGaS5LfLt6m3-o_YU(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->lambda$updateRapidActivityLaunch$0(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oUh--pFAcAXnuJ6Yyswq4-FmBfo(Lcom/android/server/wm/WindowProcessController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->lambda$onServiceStarted$2()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 115
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivityTaskManager"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowProcessController;->TAG_RELEASE:Ljava/lang/String;

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->POSTFIX_CONFIGURATION:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    .line 122
    const-string v0, "persist.wm.max_num_perceptible_freeform"

    const/4 v1, 0x1

    .line 123
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    const/high16 v0, 0x110000

    .line 343
    sput v0, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V
    .locals 3

    .line 360
    invoke-direct {p0}, Lcom/android/server/wm/ConfigurationContainer;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    const/16 v0, 0x14

    .line 164
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    .line 166
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v0, -0x2710

    .line 168
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    const/4 v0, -0x1

    .line 204
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 242
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 250
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    const/4 v0, 0x0

    .line 259
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    .line 268
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    const v1, 0xffff

    .line 350
    iput v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const-wide/high16 v1, -0x8000000000000000L

    .line 356
    iput-wide v1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    .line 361
    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    .line 362
    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    .line 363
    iput p4, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 364
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 365
    iput-object p6, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    .line 366
    iput-object p7, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 367
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 368
    new-instance p3, Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 369
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;

    invoke-direct {p5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;

    move-result-object p6

    invoke-direct {p3, p5, p6}, Lcom/android/server/wm/BackgroundLaunchProcessController;-><init>(Ljava/util/function/IntPredicate;Lcom/android/server/wm/BackgroundActivityStartCallback;)V

    iput-object p3, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    .line 371
    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 372
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getSysUiServiceComponentLocked()Landroid/content/ComponentName;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 371
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 373
    invoke-static {p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p1

    const/16 p2, 0x3e8

    if-ne p1, p2, :cond_1

    .line 376
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 379
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    return-void
.end method

.method public static applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    .line 2226
    invoke-virtual {p2, p3}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->canGetSystemGrammaticalGender(I)Z

    move-result p3

    if-eqz p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    move p3, v1

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    if-eqz p3, :cond_2

    const/4 p1, -0x1

    goto :goto_1

    :cond_2
    if-eqz p2, :cond_3

    .line 2237
    invoke-virtual {p2}, Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;->getGrammaticalGenderFromDeveloperSettings()I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    .line 2239
    :goto_1
    invoke-virtual {p0}, Landroid/content/res/Configuration;->getGrammaticalGenderRaw()I

    move-result p2

    if-ne p2, p1, :cond_4

    return v1

    .line 2242
    :cond_4
    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setGrammaticalGender(I)V

    return v0
.end method

.method private getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .locals 3

    .line 1693
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1697
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 1698
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    return-object p0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v1
.end method


# virtual methods
.method public addActivityIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 836
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(Lcom/android/server/wm/ActivityRecord;)V

    .line 837
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 841
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 842
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 843
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 845
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public addAnimatingReason(I)V
    .locals 1

    .line 2085
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    or-int/2addr p1, v0

    .line 2086
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-nez v0, :cond_0

    const/4 p1, 0x1

    .line 2088
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setAnimating(Z)V

    :cond_0
    return-void
.end method

.method public addBoundClientUid(ILjava/lang/String;J)V
    .locals 0

    .line 755
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/wm/BackgroundLaunchProcessController;->addBoundClientUid(ILjava/lang/String;J)V

    return-void
.end method

.method public addEmbeddedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1205
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1206
    aget v0, p0, p1

    or-int/lit8 v0, v0, 0x2

    aput v0, p0, p1

    return-void
.end method

.method public addHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    .line 1194
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I

    move-result-object p0

    const/4 p1, 0x0

    .line 1195
    aget v0, p0, p1

    or-int/lit8 v0, v0, 0x1

    aput v0, p0, p1

    return-void
.end method

.method public addOrUpdateBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V
    .locals 2

    .line 702
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 703
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 704
    invoke-virtual {p2}, Landroid/app/BackgroundStartPrivileges;->allowsAny()Z

    move-result v0

    const-string v1, "backgroundStartPrivileges does not allow anything"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 706
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->addOrUpdateAllowBackgroundStartPrivileges(Landroid/os/Binder;Landroid/app/BackgroundStartPrivileges;)V

    return-void
.end method

.method public addPackage(Ljava/lang/String;)V
    .locals 2

    .line 808
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 809
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 810
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 812
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public addRecentTask(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1888
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 1889
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public addToPendingTop()V
    .locals 3

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, p0}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    return-void
.end method

.method public appDied(Ljava/lang/String;)V
    .locals 2

    .line 1508
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda8;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1510
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public appEarlyNotResponding(Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 5

    .line 1912
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1913
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-nez v1, :cond_0

    .line 1914
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    .line 1919
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v3, v4, p1}, Landroid/app/IActivityController;->appEarlyNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-gez p1, :cond_1

    .line 1920
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, v2

    :goto_0
    move-object v2, p2

    goto :goto_1

    .line 1924
    :catch_0
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1925
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1927
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz v2, :cond_2

    .line 1929
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_2
    return-void

    .line 1927
    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public appNotResponding(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 6

    .line 1936
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1937
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1938
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    .line 1943
    :try_start_1
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v5, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-interface {v1, v4, v5, p1}, Landroid/app/IActivityController;->appNotResponding(Ljava/lang/String;ILjava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_2

    if-gez p1, :cond_1

    .line 1945
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    sget p0, Lcom/android/server/wm/WindowManagerService;->MY_PID:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eq p1, p0, :cond_1

    goto :goto_0

    :cond_1
    move-object p2, p3

    goto :goto_0

    :cond_2
    move-object p2, v3

    .line 1956
    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    if-eqz p2, :cond_3

    .line 1959
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    const/4 p0, 0x1

    return p0

    :cond_3
    return v2

    .line 1952
    :catch_0
    :try_start_3
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 1953
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object p0

    invoke-virtual {p0, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 1954
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1956
    :goto_1
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;
    .locals 15

    .line 728
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 730
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v6

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->inPinnedWindowingMode()Z

    move-result v7

    iget-boolean v8, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 732
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLastStopAppSwitchesTime()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    iget-wide v13, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    move/from16 v4, p1

    move-object/from16 v5, p2

    .line 728
    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/BackgroundLaunchProcessController;->areBackgroundActivityStartsAllowed(IILjava/lang/String;ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;ZZZJJJ)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    return-object p0
.end method

.method public areBackgroundFgsStartsAllowed()Z
    .locals 2

    .line 721
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 722
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getBalAppSwitchesState()I

    move-result v0

    sget-object v1, Lcom/android/server/wm/BackgroundLaunchProcessController;->CHECK_FOR_FGS_START:Lcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;

    .line 721
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->areBackgroundActivityStartsAllowed(ILcom/android/server/wm/BackgroundLaunchProcessController$BalCheckConfiguration;)Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;

    move-result-object p0

    .line 723
    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundActivityStartController$BalVerdict;->allows()Z

    move-result p0

    return p0
.end method

.method public canCloseSystemDialogsByToken()Z
    .locals 1

    .line 741
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->canCloseSystemDialogsByToken(I)Z

    move-result p0

    return p0
.end method

.method public clearActivities()V
    .locals 1

    const/4 v0, 0x0

    .line 875
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 876
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 877
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 878
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public clearBoundClientUids()V
    .locals 0

    .line 748
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0}, Lcom/android/server/wm/BackgroundLaunchProcessController;->clearBalOptInBoundClientUids()V

    return-void
.end method

.method public clearPackageList()V
    .locals 1

    .line 817
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 818
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 819
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearPackagePreferredForHomeActivities()V
    .locals 6

    .line 1064
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1065
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1066
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1067
    invoke-virtual {v2}, Lcom/android/server/wm/ConfigurationContainer;->isActivityTypeHome()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1068
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Clearing package preferred activities from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1070
    :try_start_1
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1071
    invoke-interface {v3, v2}, Landroid/content/pm/IPackageManager;->clearPackagePreferredActivities(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1077
    :cond_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public clearProfilerIfNeeded()V
    .locals 2

    .line 1414
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda7;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public clearRecentTasks()V
    .locals 2

    .line 1903
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 1904
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->clearRootProcess()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1906
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    .line 1907
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public computeProcessActivityState()V
    .locals 19

    move-object/from16 v0, p0

    .line 1260
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    .line 1268
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v2

    .line 1269
    iget v3, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    sget v4, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    and-int/2addr v3, v4

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 1270
    :goto_0
    iget-object v6, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v4

    const v7, 0x7fffffff

    const-wide/high16 v8, -0x8000000000000000L

    move v14, v4

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    :goto_1
    if-ltz v6, :cond_d

    .line 1271
    iget-object v15, v0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v15, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/wm/ActivityRecord;

    .line 1272
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v16

    if-eqz v16, :cond_1

    const/high16 v16, 0x100000

    or-int v10, v10, v16

    :cond_1
    const/16 v16, 0x0

    .line 1275
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1277
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v17, v4

    const-string v4, "Unexpected detached "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " in "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v18, v2

    goto/16 :goto_4

    :cond_2
    move/from16 v17, v4

    .line 1280
    iget v4, v5, Lcom/android/server/wm/Task;->mLayerRank:I

    move/from16 v18, v2

    const/4 v2, -0x1

    if-eq v4, v2, :cond_3

    const/high16 v2, 0x400000

    or-int/2addr v10, v2

    .line 1283
    :cond_3
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v2

    .line 1284
    invoke-virtual {v15}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 1285
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v4, :cond_6

    const/high16 v2, 0x200000

    or-int/2addr v2, v10

    .line 1287
    invoke-virtual {v15}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v4

    const/4 v12, 0x6

    if-ne v4, v12, :cond_4

    .line 1291
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->hasAdjacentTask()Z

    move-result v12

    if-eqz v12, :cond_4

    const/high16 v2, 0xa00000

    or-int/2addr v10, v2

    goto :goto_2

    :cond_4
    const/4 v10, 0x5

    if-ne v4, v10, :cond_5

    .line 1295
    iget v4, v5, Lcom/android/server/wm/Task;->mNonOccludedFreeformAreaRatio:I

    .line 1296
    invoke-static {v4, v13}, Ljava/lang/Math;->max(II)I

    move-result v13

    move v10, v2

    move/from16 v11, v17

    goto :goto_2

    :cond_5
    move v10, v2

    :cond_6
    :goto_2
    if-lez v7, :cond_7

    .line 1300
    iget v2, v5, Lcom/android/server/wm/Task;->mLayerRank:I

    if-ltz v2, :cond_7

    if-le v7, v2, :cond_7

    move v7, v2

    :cond_7
    move/from16 v12, v17

    goto :goto_4

    :cond_8
    if-nez v12, :cond_c

    .line 1309
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v4, :cond_c

    if-ne v2, v4, :cond_9

    :goto_3
    move-object v1, v4

    goto :goto_4

    .line 1318
    :cond_9
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v4, :cond_a

    goto :goto_3

    .line 1320
    :cond_a
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v4, :cond_b

    .line 1323
    iget-boolean v1, v15, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    and-int/2addr v14, v1

    goto :goto_3

    .line 1324
    :cond_b
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v4, :cond_c

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v4, :cond_c

    .line 1325
    iget-boolean v2, v5, Lcom/android/server/wm/Task;->mIsPerceptible:Z

    if-eqz v2, :cond_c

    .line 1326
    iget-wide v4, v15, Lcom/android/server/wm/ActivityRecord;->mStoppedTime:J

    .line 1327
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Long;->max(JJ)J

    move-result-wide v4

    move-wide v8, v4

    :cond_c
    :goto_4
    add-int/lit8 v6, v6, -0x1

    move/from16 v4, v17

    move/from16 v2, v18

    goto/16 :goto_1

    :cond_d
    move/from16 v18, v2

    move/from16 v17, v4

    const/16 v16, 0x0

    .line 1332
    iget-object v2, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/high16 v4, 0x10000

    if-eqz v2, :cond_f

    .line 1335
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_5
    if-ltz v2, :cond_f

    .line 1336
    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [I

    aget v5, v5, v16

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e

    iget-object v5, v0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 1337
    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-eqz v5, :cond_e

    or-int v5, v10, v4

    move v10, v5

    :cond_e
    add-int/lit8 v2, v2, -0x1

    goto :goto_5

    :cond_f
    if-eqz v11, :cond_12

    move/from16 v2, v17

    if-le v7, v2, :cond_12

    .line 1347
    sget v5, Lcom/android/server/wm/WindowProcessController;->MAX_NUM_PERCEPTIBLE_FREEFORM:I

    add-int/2addr v5, v2

    if-le v7, v5, :cond_11

    const/16 v2, 0x5a

    if-lt v13, v2, :cond_10

    goto :goto_7

    :cond_10
    const/high16 v2, 0x2000000

    :goto_6
    or-int/2addr v10, v2

    goto :goto_8

    :cond_11
    :goto_7
    const/high16 v2, 0x1000000

    goto :goto_6

    :cond_12
    :goto_8
    const v2, 0xffff

    and-int/2addr v2, v7

    or-int/2addr v2, v10

    if-eqz v12, :cond_13

    or-int/2addr v2, v4

    goto :goto_b

    .line 1357
    :cond_13
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v1, v4, :cond_16

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v4, :cond_14

    goto :goto_a

    .line 1359
    :cond_14
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v1, v4, :cond_17

    const/high16 v1, 0x40000

    or-int/2addr v1, v2

    if-eqz v14, :cond_15

    const/high16 v1, 0xc0000

    :goto_9
    or-int/2addr v2, v1

    goto :goto_b

    :cond_15
    move v2, v1

    goto :goto_b

    :cond_16
    :goto_a
    const/high16 v1, 0x20000

    goto :goto_9

    .line 1365
    :cond_17
    :goto_b
    iput v2, v0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    .line 1366
    iput-wide v8, v0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    .line 1368
    sget v1, Lcom/android/server/wm/WindowProcessController;->ACTIVITY_STATE_VISIBLE:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_18

    const/4 v2, 0x1

    goto :goto_c

    :cond_18
    move/from16 v2, v16

    :goto_c
    if-nez v3, :cond_19

    if-eqz v2, :cond_19

    .line 1370
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAnyActivityVisible(Lcom/android/server/wm/WindowProcessController;)V

    .line 1371
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :cond_19
    if-eqz v3, :cond_1a

    if-nez v2, :cond_1a

    .line 1373
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onAllActivitiesInvisible(Lcom/android/server/wm/WindowProcessController;)V

    .line 1374
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    move/from16 v2, v16

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/WindowManagerService;->onProcessActivityVisibilityChanged(IZ)V

    return-void

    :cond_1a
    if-eqz v3, :cond_1b

    if-nez v18, :cond_1b

    .line 1375
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasResumedActivity()Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 1376
    iget-object v1, v0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->onActivityResumedWhileVisible(Lcom/android/server/wm/WindowProcessController;)V

    :cond_1b
    return-void
.end method

.method public computeRelaunchReason()I
    .locals 3

    .line 1387
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1388
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1390
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1391
    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    if-eqz v2, :cond_0

    .line 1392
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1395
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public containsPackage(Ljava/lang/String;)Z
    .locals 1

    .line 823
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 824
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 825
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;
    .locals 2

    .line 1468
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    if-eqz v0, :cond_2

    .line 1469
    iget-object v1, v0, Landroid/app/ProfilerInfo;->profileFile:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 1470
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 1473
    :cond_0
    iget-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;

    if-eqz p0, :cond_1

    .line 1475
    :try_start_0
    invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->dup()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    iput-object p0, v0, Landroid/app/ProfilerInfo;->profileFd:Landroid/os/ParcelFileDescriptor;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1477
    :catch_0
    invoke-virtual {v0}, Landroid/app/ProfilerInfo;->closeFd()V

    .line 1480
    :cond_1
    :goto_0
    new-instance p0, Landroid/app/ProfilerInfo;

    invoke-direct {p0, v0}, Landroid/app/ProfilerInfo;-><init>(Landroid/app/ProfilerInfo;)V

    return-object p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public destroy()V
    .locals 0

    .line 1623
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    return-void
.end method

.method public dispatchConfiguration(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x0

    .line 1745
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1746
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    .line 1748
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_1

    .line 1750
    sget-object p1, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send config for IME proc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no app thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1756
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, p1, Landroid/content/res/Configuration;->seq:I

    .line 1757
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 1762
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    const/16 v2, 0x10

    if-lt v1, v2, :cond_2

    const/4 v1, 0x1

    .line 1763
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    .line 1767
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    if-lt v1, v2, :cond_2

    :cond_1
    return-void

    .line 1772
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 1773
    new-instance v1, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v1, p1, v2}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 5

    .line 2121
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2122
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 2123
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v1, v2

    .line 2124
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 2125
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 2128
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 2129
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Remote Activities:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2130
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_1
    if-ltz v1, :cond_3

    .line 2131
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  - "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2132
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v3, " flags="

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2133
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v2

    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_1

    .line 2135
    const-string v4, "host "

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_2

    .line 2138
    const-string v3, "embedded"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2140
    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 2143
    :cond_3
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_4

    .line 2144
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "Recent Tasks:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2145
    :goto_2
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v2, v1, :cond_4

    .line 2146
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "  - "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2150
    :cond_4
    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    if-eqz v1, :cond_5

    .line 2151
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "mVrThreadTid="

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mVrThreadTid:I

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 2154
    :cond_5
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/BackgroundLaunchProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Configuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " OverrideConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mLastReportedConfiguration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz v1, :cond_6

    .line 2159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(cached) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_6
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2158
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2161
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_9

    .line 2163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAnimatingReasons="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    and-int/lit8 v1, v0, 0x1

    if-eqz v1, :cond_7

    .line 2165
    const-string v1, "remote-animation|"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_7
    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    .line 2168
    const-string v0, "wakefulness|"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2170
    :cond_8
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2172
    :cond_9
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_a

    .line 2173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mUseFifoUiScheduling=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2176
    :cond_a
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const v0, 0xffff

    if-eq p0, v0, :cond_12

    .line 2178
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " mActivityStateFlags="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x100000

    and-int/2addr p2, p0

    if-eqz p2, :cond_b

    .line 2180
    const-string p2, "W|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_b
    const/high16 p2, 0x10000

    and-int/2addr p2, p0

    if-eqz p2, :cond_d

    .line 2183
    const-string p2, "V|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x200000

    and-int/2addr p2, p0

    if-eqz p2, :cond_f

    .line 2185
    const-string p2, "R|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x800000

    and-int/2addr p2, p0

    if-eqz p2, :cond_c

    .line 2187
    const-string p2, "RS|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_c
    const/high16 p2, 0x1000000

    and-int/2addr p2, p0

    if-eqz p2, :cond_f

    .line 2190
    const-string p2, "PF|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_d
    const/high16 p2, 0x20000

    and-int/2addr p2, p0

    if-eqz p2, :cond_e

    .line 2194
    const-string p2, "P|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_e
    const/high16 p2, 0x40000

    and-int/2addr p2, p0

    if-eqz p2, :cond_f

    .line 2196
    const-string p2, "S|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/high16 p2, 0x80000

    and-int/2addr p2, p0

    if-eqz p2, :cond_f

    .line 2198
    const-string p2, "F|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_f
    :goto_4
    const/high16 p2, 0x400000

    and-int/2addr p2, p0

    if-eqz p2, :cond_10

    .line 2202
    const-string p2, "VT|"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_10
    and-int/2addr p0, v0

    if-eq p0, v0, :cond_11

    .line 2206
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "taskLayer="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2208
    :cond_11
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    :cond_12
    return-void

    .line 2155
    :goto_5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 0

    .line 2213
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/wm/WindowProcessListener;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    return-void
.end method

.method public finishActivities()V
    .locals 4

    .line 991
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 p0, 0x0

    .line 992
    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p0, v1, :cond_1

    .line 993
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 994
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 995
    const-string v2, "finish-heavy"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getActivityStateFlags()I
    .locals 0

    .line 1242
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    return p0
.end method

.method public getChildAt(I)Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getChildCount()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getCpuTime()J
    .locals 2

    .line 1884
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->getCpuTime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentAdj()I
    .locals 0

    .line 436
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    return p0
.end method

.method public getCurrentProcState()I
    .locals 0

    .line 428
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return p0
.end method

.method public getCurrentSchedulingGroup()I
    .locals 0

    .line 420
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return p0
.end method

.method public getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .locals 0

    .line 622
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    return-object p0
.end method

.method public getDisplayContextsWithErrorDialogs(Ljava/util/List;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    .line 1176
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1177
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    .line 1178
    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContextsWithNonToastVisibleWindows(ILjava/util/List;)V

    .line 1180
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 1181
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1182
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    .line 1183
    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->getDisplayUiContext(I)Landroid/content/Context;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 1185
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {p1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1186
    invoke-interface {p1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 1189
    :cond_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getFgInteractionTime()J
    .locals 2

    .line 596
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-wide v0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .locals 3

    .line 1405
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1406
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isUsingWrapper()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 1408
    :cond_0
    sget p0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v1, p0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_1
    :goto_0
    const-wide/32 v1, 0xea60

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1406
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-wide v1

    .line 1409
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public getInstrumentationSourceUid()I
    .locals 0

    .line 777
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    return p0
.end method

.method public getInteractionEventTime()J
    .locals 2

    .line 588
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-wide v0
.end method

.method public getPackageList()Ljava/util/List;
    .locals 2

    .line 829
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    monitor-enter v0

    .line 830
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mPkgList:Ljava/util/ArrayList;

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 831
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getParent()Lcom/android/server/wm/ConfigurationContainer;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    return-object p0
.end method

.method public getPerceptibleTaskStoppedTimeMillis()J
    .locals 2

    .line 1253
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptibleTaskStoppedTimeMillis:J

    return-wide v0
.end method

.method public getPid()I
    .locals 0

    .line 387
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return p0
.end method

.method public final getRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;)[I
    .locals 1

    .line 1215
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    .line 1216
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-nez v0, :cond_1

    .line 1220
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/4 v0, 0x1

    new-array v0, v0, [I

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method

.method public getReportedProcState()I
    .locals 0

    .line 473
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    return p0
.end method

.method public getRequiredAbi()Ljava/lang/String;
    .locals 0

    .line 612
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-object p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .locals 0

    .line 408
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public final getTopActivityDeviceId()I
    .locals 1

    .line 1682
    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1684
    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_0

    .line 1685
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v0, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getDeviceIdForDisplayId(I)I

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getTopActivityDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .locals 6

    .line 902
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 906
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    .line 907
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 908
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    add-int/lit8 v0, v0, -0x2

    :goto_0
    if-ltz v0, :cond_2

    .line 911
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 912
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 913
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-lez v5, :cond_1

    if-eqz v4, :cond_1

    move-object v1, v3

    move-object v2, v4

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-object v2
.end method

.method public getWasStoppedLogged()Z
    .locals 0

    .line 2059
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    return p0
.end method

.method public getWhenUnimportant()J
    .locals 2

    .line 604
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-wide v0
.end method

.method public handleAppCrash()Z
    .locals 7

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 483
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    const/4 v2, 0x0

    :goto_0
    if-ltz p0, :cond_1

    .line 484
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 485
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  Force finishing activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v3, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 486
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 485
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 488
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 490
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 491
    iget-object v4, v3, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6, v2}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(IILcom/android/server/wm/WindowContainer;)V

    move v2, v1

    .line 494
    :cond_0
    const-string v4, "handleAppCrashed"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public handleAppDied()Z
    .locals 6

    .line 1519
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V

    .line 1522
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 1523
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    .line 1525
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v3, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1526
    :goto_2
    iget-boolean v4, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v4, :cond_3

    .line 1527
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_3
    if-eqz v0, :cond_4

    .line 1531
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1533
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1537
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-ltz v0, :cond_5

    .line 1538
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->makeFinishingLocked()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 1541
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_4
    if-ltz v0, :cond_9

    .line 1542
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1543
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v5

    if-nez v5, :cond_6

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    move v2, v1

    .line 1550
    :cond_7
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 1555
    invoke-virtual {v5, p0}, Lcom/android/server/wm/TaskFragment;->handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v5

    or-int/2addr v2, v5

    .line 1557
    :cond_8
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->handleAppDied()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_4

    .line 1559
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearRecentTasks()V

    .line 1560
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->clearActivities()V

    return v2
.end method

.method public hasActivities()Z
    .locals 0

    .line 883
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    return p0
.end method

.method public hasActivitiesOrRecentTasks()Z
    .locals 1

    .line 897
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasActivityInVisibleTask()Z
    .locals 1

    .line 892
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x400000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasClientActivities()Z
    .locals 0

    .line 538
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return p0
.end method

.method public final hasEmbeddedWindow()Z
    .locals 4

    .line 1021
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1022
    :cond_0
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_3

    .line 1023
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [I

    aget v3, v3, v1

    and-int/2addr v3, v2

    if-nez v3, :cond_1

    goto :goto_1

    .line 1026
    :cond_1
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1027
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_2
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return v1
.end method

.method public hasEverLaunchedActivity()Z
    .locals 4

    .line 642
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasForegroundActivities()Z
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p0, :cond_1

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x70000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public hasForegroundServices()Z
    .locals 0

    .line 524
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return p0
.end method

.method public hasOverlayUi()Z
    .locals 0

    .line 554
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return p0
.end method

.method public hasPendingUiClean()Z
    .locals 0

    .line 562
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return p0
.end method

.method public hasRecentTasks()Z
    .locals 0

    .line 1899
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return p0
.end method

.method public hasResumedActivity()Z
    .locals 1

    .line 1094
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x200000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasRunningActivity(Ljava/lang/String;)Z
    .locals 4

    .line 1035
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1036
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    :goto_0
    if-ltz v1, :cond_1

    .line 1037
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityRecord;

    .line 1038
    iget-object v3, v3, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1039
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1042
    :cond_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 p0, 0x0

    return p0

    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public hasStartedActivity(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 3

    .line 1081
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 1082
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    if-ne p1, v2, :cond_0

    goto :goto_1

    .line 1086
    :cond_0
    iget-boolean v2, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v2, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public hasThread()Z
    .locals 0

    .line 412
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasTopUi()Z
    .locals 0

    .line 546
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return p0
.end method

.method public hasVisibleActivities()Z
    .locals 1

    .line 888
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivityStateFlags:I

    const/high16 v0, 0x10000

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isFactoryTestProcess()Z
    .locals 5

    .line 2039
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    .line 2044
    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_1

    .line 2045
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    :cond_1
    const/4 v0, 0x2

    if-ne v1, v0, :cond_2

    .line 2049
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_2

    return v3

    :cond_2
    return v2
.end method

.method public isHeavyWeightProcess()Z
    .locals 1

    .line 2034
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isHomeProcess()Z
    .locals 1

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInstrumenting()Z
    .locals 0

    .line 772
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    return p0
.end method

.method public isInterestingToUser()Z
    .locals 6

    .line 1001
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1002
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    .line 1004
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 1005
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isInterestingToUserLocked()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1006
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1009
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasEmbeddedWindow()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1010
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 1012
    :cond_2
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public isPerceptible()Z
    .locals 0

    .line 785
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return p0
.end method

.method public isPersistent()Z
    .locals 0

    .line 516
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return p0
.end method

.method public isPreviousProcess()Z
    .locals 1

    .line 2029
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isRemoved()Z
    .locals 0

    .line 1459
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0}, Lcom/android/server/wm/WindowProcessListener;->isRemoved()Z

    move-result p0

    return p0
.end method

.method public isRunningRemoteTransition()Z
    .locals 1

    .line 2107
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isShowingUiWhileDozing()Z
    .locals 1

    .line 2024
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleDozeUiProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUsingWrapper()Z
    .locals 0

    .line 638
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return p0
.end method

.method public final synthetic lambda$onServiceStarted$2()V
    .locals 1

    .line 1991
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 1992
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1993
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$onTopProcChanged$3()V
    .locals 2

    .line 2010
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 2011
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/VrController;->onTopProcChangedLocked(Lcom/android/server/wm/WindowProcessController;)V

    .line 2012
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final synthetic lambda$setAnimating$4(Z)V
    .locals 0

    .line 2103
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-interface {p0, p1}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public final synthetic lambda$updateRapidActivityLaunch$0(Lcom/android/server/wm/Task;)V
    .locals 2

    .line 681
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    monitor-enter v0

    .line 682
    :try_start_0
    const-string v1, "rapid-activity-launch"

    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 683
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 684
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    const-string v1, "rapidActivityLaunch"

    invoke-virtual {p1, v0, p0, v1}, Landroid/app/ActivityManagerInternal;->killProcess(Ljava/lang/String;ILjava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    .line 683
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw p0
.end method

.method public final onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V
    .locals 6

    .line 1778
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_1398073713$Cache;->WM_DEBUG_CONFIGURATION_enabled:[Z

    const/4 v1, 0x1

    aget-boolean v0, v0, v1

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/android/internal/protolog/WmProtoLogGroups;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/WmProtoLogGroups;

    const-wide v4, -0x403e6aeb7d63ce3bL    # -0.13736206414649935

    filled-new-array {v0, v2}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v3, v4, v5, v1, v0}, Lcom/android/internal/protolog/ProtoLogImpl_1398073713;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JI[Ljava/lang/Object;)V

    .line 1780
    :cond_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz v0, :cond_1

    .line 1782
    sget-object v0, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending to IME proc "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " new config "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1784
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1652
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1656
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getTopActivityDeviceId()I

    move-result p1

    .line 1657
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    .line 1659
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 1662
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1663
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {v2, v0}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v2

    xor-int/2addr p1, v1

    and-int/2addr p1, v2

    if-eqz p1, :cond_2

    .line 1665
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    if-eqz p1, :cond_1

    .line 1667
    sget-object p1, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current config: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " unchanged for IME proc "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    .line 1673
    :cond_2
    iget p1, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-lez p1, :cond_3

    .line 1674
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return-void

    .line 1678
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->dispatchConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1706
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onServiceStarted(Landroid/content/pm/ServiceInfo;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1971
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_1

    .line 1977
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.permission.BIND_INPUT_METHOD"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_1
    const-string v3, "android.permission.BIND_ACCESSIBILITY_SERVICE"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_0

    :sswitch_2
    const-string v3, "android.permission.BIND_VOICE_INTERACTION"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    packed-switch v2, :pswitch_data_0

    :goto_1
    return-void

    .line 1979
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasImeService:Z

    .line 1988
    :pswitch_1
    iput-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    .line 1990
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x2de34dfd -> :sswitch_2
        0x542fc942 -> :sswitch_1
        0x56545c98 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onStartActivity(ILandroid/content/pm/ActivityInfo;)V
    .locals 7

    .line 1485
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-string v0, "android"

    iget-object v1, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1486
    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move-object v5, v0

    goto :goto_2

    .line 1490
    :cond_1
    :goto_1
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :goto_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 1494
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v1, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v2, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ActivityManagerInternal;->addPendingTopUid(IILandroid/app/IApplicationThread;)V

    .line 1496
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    .line 1500
    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda11;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1501
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->shouldSetProfileProc()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iget-object p1, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-wide p1, p1, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    .line 1502
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 1500
    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1503
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessageAtFrontOfQueue(Landroid/os/Message;)Z

    return-void
.end method

.method public onTopProcChanged()V
    .locals 2

    .line 2008
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->isInterestingToSchedGroup()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2009
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/WindowProcessController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public pauseConfigurationDispatch()V
    .locals 1

    .line 1825
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    return-void
.end method

.method public postPendingUiCleanMsg(Z)V
    .locals 2

    .line 578
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda13;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 579
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 578
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 580
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;
    .locals 3

    .line 1870
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1871
    iget-boolean v1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 1872
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    .line 1875
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v1

    iput v1, v0, Landroid/content/res/Configuration;->seq:I

    .line 1878
    :cond_0
    iput-boolean v2, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    return-object v0
.end method

.method public final prepareOomAdjustment()V
    .locals 1

    .line 1382
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->rankTaskLayers()V

    .line 1383
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()Z

    return-void
.end method

.method public registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1585
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->containsListener(Lcom/android/server/wm/ConfigurationContainerListener;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 1590
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterConfigurationListeners()V

    .line 1591
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1592
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ConfigurationContainer;->registerConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    .line 1595
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 1596
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public registeredForActivityConfigChanges()Z
    .locals 0

    .line 573
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public registeredForDisplayAreaConfigChanges()Z
    .locals 0

    .line 567
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public releaseSomeActivities(Ljava/lang/String;)V
    .locals 10

    .line 1127
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/WindowProcessController;->TAG_RELEASE:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Trying to release some activities in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1128
    :goto_0
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_7

    .line 1129
    iget-object v3, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/wm/ActivityRecord;

    .line 1133
    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_6

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_3

    .line 1139
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v3

    if-nez v3, :cond_4

    iget-boolean v3, v4, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->hasSavedState()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isDestroyable()Z

    move-result v3

    if-eqz v3, :cond_4

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    .line 1140
    invoke-virtual/range {v4 .. v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 1145
    :cond_2
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-eqz v3, :cond_5

    if-nez v1, :cond_3

    .line 1147
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1149
    :cond_3
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1141
    :cond_4
    :goto_1
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/wm/WindowProcessController;->TAG_RELEASE:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Not releasing in-use activity: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1134
    :cond_6
    :goto_3
    sget-boolean p0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz p0, :cond_a

    sget-object p0, Lcom/android/server/wm/WindowProcessController;->TAG_RELEASE:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Abort release; already destroying: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    if-eqz v1, :cond_a

    .line 1155
    new-instance p0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 1157
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p0

    const/4 v2, 0x1

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 1159
    :cond_8
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1160
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RELEASE:Z

    if-eqz v3, :cond_9

    sget-object v3, Lcom/android/server/wm/WindowProcessController;->TAG_RELEASE:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Destroying "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " in state "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1161
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " for reason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1160
    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1162
    :cond_9
    invoke-virtual {v2, p1}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    add-int/lit8 p0, p0, -0x1

    if-gtz p0, :cond_8

    :cond_a
    return-void
.end method

.method public removeActivity(Lcom/android/server/wm/ActivityRecord;Z)V
    .locals 0

    if-eqz p2, :cond_1

    .line 860
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-nez p2, :cond_0

    .line 861
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    .line 862
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 863
    :cond_0
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 864
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 866
    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mInactiveActivities:Ljava/util/ArrayList;

    if-eqz p2, :cond_2

    .line 867
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 869
    :cond_2
    :goto_0
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 870
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    .line 871
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->updateActivityConfigurationListener()V

    return-void
.end method

.method public removeAnimatingReason(I)V
    .locals 1

    .line 2093
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    not-int p1, p1

    and-int/2addr p1, v0

    .line 2094
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mAnimatingReasons:I

    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 2096
    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setAnimating(Z)V

    :cond_0
    return-void
.end method

.method public removeBackgroundStartPrivileges(Landroid/os/Binder;)V
    .locals 0

    .line 712
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 713
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mBgLaunchController:Lcom/android/server/wm/BackgroundLaunchProcessController;

    invoke-virtual {p0, p1}, Lcom/android/server/wm/BackgroundLaunchProcessController;->removeAllowBackgroundStartPrivileges(Landroid/os/Binder;)V

    return-void
.end method

.method public removeEmbeddedActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x2

    .line 1211
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public removeHostActivity(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1

    const/4 v0, 0x1

    .line 1200
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/WindowProcessController;->removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public removeRecentTask(Lcom/android/server/wm/Task;)V
    .locals 1

    .line 1893
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1894
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRecentTasks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasRecentTasks:Z

    return-void
.end method

.method public final removeRemoteActivityFlags(Lcom/android/server/wm/ActivityRecord;I)V
    .locals 3

    .line 1226
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1227
    :cond_0
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-gez p1, :cond_1

    goto :goto_0

    .line 1229
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    const/4 v1, 0x0

    .line 1230
    aget v2, v0, v1

    not-int p2, p2

    and-int/2addr p2, v2

    aput p2, v0, v1

    if-nez p2, :cond_2

    .line 1232
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mRemoteActivities:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_2
    :goto_0
    return-void
.end method

.method public resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 12

    .line 1711
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1712
    iget v1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget v3, p1, Landroid/content/res/Configuration;->assetsSeq:I

    if-le v3, v1, :cond_0

    .line 1714
    iput v2, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1716
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/wm/ConfigurationContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 1717
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1719
    iget-object v0, v7, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v2}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 1724
    iget v0, p1, Landroid/content/res/Configuration;->seq:I

    iput v0, v7, Landroid/content/res/Configuration;->seq:I

    .line 1726
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_1

    return-void

    .line 1730
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz v0, :cond_2

    .line 1731
    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayContentLocked()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    :goto_0
    move-object v4, v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 1733
    :goto_1
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v6, p1

    invoke-static/range {v4 .. v11}, Lcom/android/server/wm/ConfigurationContainer;->applySizeOverrideIfNeeded(Lcom/android/server/wm/DisplayContent;Landroid/content/pm/ApplicationInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;ZZZLcom/android/server/wm/Task;)V

    return-void
.end method

.method public resumeConfigurationDispatch()Z
    .locals 1

    .line 1830
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 1833
    iput v0, p0, Lcom/android/server/wm/WindowProcessController;->mPauseConfigurationDispatchCount:I

    .line 1834
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mHasPendingConfigurationChange:Z

    return p0
.end method

.method public final scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 2

    .line 1803
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mWindowSession:Lcom/android/server/wm/Session;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/server/wm/Session;->hasWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1804
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z

    return-void

    .line 1807
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1812
    :catch_0
    sget-object p1, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed for dead process. ClientTransactionItem="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " owner="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public scheduleClientTransactionItem(Landroid/app/servertransaction/ClientTransactionItem;)V
    .locals 2

    .line 1789
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_1

    .line 1791
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz p1, :cond_0

    .line 1792
    sget-object p1, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to send transaction to client proc "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": no app thread"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 1797
    :cond_1
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/WindowProcessController;->scheduleClientTransactionItem(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)V

    return-void
.end method

.method public scheduleUpdateOomAdj()V
    .locals 4

    .line 1434
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1435
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 1436
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 1434
    invoke-static {v1, p0, v2, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public final setAnimating(Z)V
    .locals 2

    .line 2103
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/WindowProcessController;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setCrashing(Z)V
    .locals 0

    .line 477
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mCrashing:Z

    return-void
.end method

.method public setCurrentAdj(I)V
    .locals 0

    .line 432
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurAdj:I

    return-void
.end method

.method public setCurrentProcState(I)V
    .locals 0

    .line 424
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurProcState:I

    return-void
.end method

.method public setCurrentSchedulingGroup(I)V
    .locals 0

    .line 416
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mCurSchedGroup:I

    return-void
.end method

.method public setDebugging(Z)V
    .locals 0

    .line 626
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    return-void
.end method

.method public setFgInteractionTime(J)V
    .locals 0

    .line 592
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mFgInteractionTime:J

    return-void
.end method

.method public setHasClientActivities(Z)V
    .locals 0

    .line 534
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasClientActivities:Z

    return-void
.end method

.method public setHasForegroundServices(Z)V
    .locals 0

    .line 520
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasForegroundServices:Z

    return-void
.end method

.method public setHasOverlayUi(Z)V
    .locals 0

    .line 550
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasOverlayUi:Z

    return-void
.end method

.method public setHasTopUi(Z)V
    .locals 0

    .line 542
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasTopUi:Z

    return-void
.end method

.method public setInstrumenting(ZIZ)V
    .locals 1

    if-nez p1, :cond_1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 765
    :goto_1
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 766
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    .line 767
    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentationSourceUid:I

    .line 768
    iput-boolean p3, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumentingWithBackgroundActivityStartPrivileges:Z

    return-void
.end method

.method public setInteractionEventTime(J)V
    .locals 0

    .line 584
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mInteractionEventTime:J

    return-void
.end method

.method public setLastActivityFinishTimeIfNeeded(J)V
    .locals 2

    .line 690
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    cmp-long v0, p1, v0

    if-lez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->hasActivityInVisibleTask()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 693
    :cond_0
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityFinishTime:J

    :cond_1
    :goto_0
    return-void
.end method

.method public setLastActivityLaunchTime(Lcom/android/server/wm/ActivityRecord;)V
    .locals 6

    .line 646
    iget-wide v2, p1, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 647
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_1

    .line 648
    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    cmp-long p1, v2, v0

    if-gez p1, :cond_0

    .line 649
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Tried to set launchTime ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ") < mLastActivityLaunchTime ("

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ActivityTaskManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    .line 655
    :cond_1
    iget-wide v4, p0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/WindowProcessController;->updateRapidActivityLaunch(Lcom/android/server/wm/ActivityRecord;JJ)V

    .line 656
    iput-wide v2, v0, Lcom/android/server/wm/WindowProcessController;->mLastActivityLaunchTime:J

    return-void
.end method

.method public setLastReportedConfiguration(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1819
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter v0

    .line 1820
    :try_start_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, p1}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 1821
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setNotResponding(Z)V
    .locals 0

    .line 504
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mNotResponding:Z

    return-void
.end method

.method public setOverrideGender(Landroid/content/res/Configuration;I)Z
    .locals 1

    .line 2218
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGrammaticalManagerInternal:Lcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;

    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {p1, p2, v0, p0}, Lcom/android/server/wm/WindowProcessController;->applyConfigGenderOverride(Landroid/content/res/Configuration;ILcom/android/server/grammaticalinflection/GrammaticalInflectionManagerInternal;I)Z

    move-result p0

    return p0
.end method

.method public setPendingUiClean(Z)V
    .locals 0

    .line 558
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPendingUiClean:Z

    return-void
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .locals 2

    .line 1452
    new-instance v0, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda5;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1454
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 1452
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1455
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public setPerceptible(Z)V
    .locals 0

    .line 781
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPerceptible:Z

    return-void
.end method

.method public setPersistent(Z)V
    .locals 0

    .line 512
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mPersistent:Z

    return-void
.end method

.method public setPid(I)V
    .locals 0

    .line 383
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mPid:I

    return-void
.end method

.method public setReportedProcState(I)V
    .locals 4

    .line 445
    iget v0, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 446
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mRepProcState:I

    .line 449
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    const/16 v2, 0x10

    if-lt v0, v2, :cond_0

    if-ge p1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 450
    iget-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mHasCachedConfiguration:Z

    if-eqz p1, :cond_0

    .line 453
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    monitor-enter p1

    .line 454
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChangePreScheduled(Landroid/content/res/Configuration;)V

    .line 455
    new-instance v0, Landroid/app/servertransaction/ConfigurationChangeItem;

    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mLastReportedConfiguration:Landroid/content/res/Configuration;

    iget v3, p0, Lcom/android/server/wm/WindowProcessController;->mLastTopActivityDeviceId:I

    invoke-direct {v0, v2, v3}, Landroid/app/servertransaction/ConfigurationChangeItem;-><init>(Landroid/content/res/Configuration;I)V

    .line 457
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    :try_start_1
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransactionItemNow(Landroid/app/IApplicationThread;Landroid/app/servertransaction/ClientTransactionItem;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 466
    sget-object v1, Lcom/android/server/wm/WindowProcessController;->TAG_CONFIGURATION:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to schedule ConfigurationChangeItem="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " owner="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 457
    :try_start_2
    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method public setRequiredAbi(Ljava/lang/String;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mRequiredAbi:Ljava/lang/String;

    return-void
.end method

.method public setRunningAnimationUnsafe()V
    .locals 1

    .line 2112
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Lcom/android/server/wm/WindowProcessListener;->setRunningRemoteAnimation(Z)V

    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2078
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->addAnimatingReason(I)V

    return-void

    .line 2080
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->removeAnimatingReason(I)V

    return-void
.end method

.method public setStoppedState(I)V
    .locals 0

    .line 2055
    iput p1, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .locals 1

    .line 392
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mThread:Landroid/app/IApplicationThread;

    if-eqz p1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 402
    :cond_0
    iget-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p1, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {p1, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;->removeProcess(Lcom/android/server/wm/WindowProcessController;)Lcom/android/server/wm/VisibleActivityProcessTracker$CpuTimeRecord;

    .line 404
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setUsingWrapper(Z)V
    .locals 0

    .line 634
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mUsingWrapper:Z

    return-void
.end method

.method public setWasStoppedLogged(Z)V
    .locals 0

    .line 2063
    iput-boolean p1, p0, Lcom/android/server/wm/WindowProcessController;->mWasStoppedLogged:Z

    return-void
.end method

.method public setWhenUnimportant(J)V
    .locals 0

    .line 600
    iput-wide p1, p0, Lcom/android/server/wm/WindowProcessController;->mWhenUnimportant:J

    return-void
.end method

.method public shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1107
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1108
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 1109
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->mAppStopped:Z

    if-nez v3, :cond_0

    return v0

    .line 1113
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1114
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget v4, v2, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v3, v4, :cond_1

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v2, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public final shouldSetProfileProc()Z
    .locals 2

    .line 1463
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_0

    if-ne v0, p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public stopFreezingActivities()V
    .locals 0

    .line 0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 2117
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mOwner:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final unregisterActivityConfigurationListener()V
    .locals 1

    .line 1601
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_0

    return-void

    .line 1604
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1605
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mConfigActivityRecord:Lcom/android/server/wm/ActivityRecord;

    .line 1606
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final unregisterConfigurationListeners()V
    .locals 0

    .line 1615
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterDisplayAreaConfigurationListener()V

    return-void
.end method

.method public unregisterDisplayAreaConfigurationListener()V
    .locals 1

    .line 1576
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    if-nez v0, :cond_0

    return-void

    .line 1579
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/wm/ConfigurationContainer;->unregisterConfigurationChangeListener(Lcom/android/server/wm/ConfigurationContainerListener;)V

    const/4 v0, 0x0

    .line 1580
    iput-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mDisplayArea:Lcom/android/server/wm/DisplayArea;

    .line 1581
    sget-object v0, Landroid/content/res/Configuration;->EMPTY:Landroid/content/res/Configuration;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/WindowProcessController;->onMergedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final updateActivityConfigurationListener()V
    .locals 3

    .line 1633
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    return-void

    .line 1637
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1638
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1639
    iget-boolean v2, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_1

    .line 1641
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowProcessController;->registerActivityConfigurationListener(Lcom/android/server/wm/ActivityRecord;)V

    return-void

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1647
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->unregisterActivityConfigurationListener()V

    return-void
.end method

.method public updateAppSpecificSettingsForAllActivitiesInPackage(Ljava/lang/String;Ljava/lang/Integer;Landroid/os/LocaleList;I)V
    .locals 3

    .line 1051
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 1052
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1055
    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1056
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p2, p3, v2}, Lcom/android/server/wm/ConfigurationContainer;->applyAppSpecificConfig(Ljava/lang/Integer;Landroid/os/LocaleList;Ljava/lang/Integer;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1057
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1058
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    .line 1861
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public updateAssetConfiguration(I)V
    .locals 4

    .line 1840
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mHasActivities:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mIsActivityConfigOverrideAllowed:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 1848
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 1849
    iget-object v1, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 1850
    new-instance v2, Landroid/content/res/Configuration;

    invoke-virtual {v1}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1851
    iput p1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1852
    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1853
    iget-object v2, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->updateApplicationInfo(Landroid/content/pm/ApplicationInfo;)V

    .line 1854
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1855
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration()Z

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    return-void

    .line 1841
    :cond_3
    :goto_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ConfigurationContainer;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 1842
    iput p1, v0, Landroid/content/res/Configuration;->assetsSeq:I

    .line 1843
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ConfigurationContainer;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public updateIntentForHeavyWeightActivity(Landroid/content/Intent;)V
    .locals 2

    .line 1098
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1101
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mActivities:Ljava/util/ArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/wm/ActivityRecord;

    .line 1102
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const-string v1, "cur_app"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1103
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p0

    iget p0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const-string v0, "cur_task"

    invoke-virtual {p1, v0, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    return-void
.end method

.method public updateProcessInfo(ZZZZ)V
    .locals 1

    if-eqz p4, :cond_0

    .line 1421
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    :cond_0
    if-eqz p3, :cond_1

    .line 1424
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->prepareOomAdjustment()V

    .line 1427
    :cond_1
    new-instance p4, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;

    invoke-direct {p4}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda2;-><init>()V

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    .line 1428
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1427
    invoke-static {p4, v0, p1, p2, p3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    .line 1429
    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateRapidActivityLaunch(Lcom/android/server/wm/ActivityRecord;JJ)V
    .locals 2

    .line 660
    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/wm/WindowProcessController;->mDebugging:Z

    if-nez v0, :cond_4

    const-wide/16 v0, 0x0

    cmp-long v0, p4, v0

    if-gtz v0, :cond_0

    goto :goto_1

    .line 664
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPid:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 665
    iget-boolean v0, v0, Lcom/android/server/wm/WindowProcessController;->mInstrumenting:Z

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    sub-long/2addr p2, p4

    const-wide/16 p4, 0x1f4

    cmp-long p4, p2, p4

    const/4 p5, 0x0

    if-gez p4, :cond_2

    .line 671
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x5dc

    cmp-long p2, p2, v0

    if-ltz p2, :cond_3

    .line 673
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    .line 676
    :cond_3
    :goto_0
    iget p2, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    const/16 p3, 0xc8

    if-le p2, p3, :cond_4

    .line 677
    iput p5, p0, Lcom/android/server/wm/WindowProcessController;->mRapidActivityLaunchCount:I

    .line 678
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object p1

    .line 679
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Removing task "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " because of rapid activity launch"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityTaskManager"

    invoke-static {p3, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    iget-object p2, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object p2, p2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance p3, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;

    invoke-direct {p3, p0, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method public updateServiceConnectionActivities()V
    .locals 2

    .line 1446
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mAtm:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda6;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/WindowProcessController;->mListener:Lcom/android/server/wm/WindowProcessListener;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public updateTopResumingActivityInProcessIfNeeded(Lcom/android/server/wm/ActivityRecord;)Z
    .locals 7

    .line 931
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x1d

    const/4 v2, 0x1

    if-ge v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_0

    goto/16 :goto_4

    .line 935
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 942
    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->isAttached()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 943
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    goto :goto_0

    :cond_2
    move-object v0, v3

    :goto_0
    if-eqz v0, :cond_4

    .line 949
    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 950
    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 951
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    move v4, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v4, v2

    .line 955
    :goto_2
    iget-object v5, p1, Lcom/android/server/wm/WindowContainer;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v4, :cond_5

    .line 957
    invoke-virtual {v0, v5}, Lcom/android/server/wm/DisplayArea;->compareTo(Lcom/android/server/wm/WindowContainer;)I

    move-result v5

    if-gez v5, :cond_5

    move v4, v2

    :cond_5
    if-nez v4, :cond_6

    .line 964
    new-instance v5, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda12;

    invoke-direct {v5, p1}, Lcom/android/server/wm/WindowProcessController$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/ActivityRecord;)V

    iget-object v6, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v5, v2, v6}, Lcom/android/server/wm/DisplayArea;->getActivity(Ljava/util/function/Predicate;ZLcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 966
    iget-object v5, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v5, :cond_6

    goto :goto_3

    :cond_6
    move v2, v4

    :goto_3
    if-eqz v2, :cond_8

    .line 973
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_7

    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 974
    iget-object v0, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 976
    invoke-virtual {v0, v3}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    .line 977
    const-string v4, "top-resumed-changed"

    invoke-virtual {v0, v3, v1, p1, v4}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 981
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/WindowProcessController;->mPreQTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    :cond_8
    :goto_4
    return v2
.end method

.method public useFifoUiScheduling()Z
    .locals 0

    .line 2003
    iget-boolean p0, p0, Lcom/android/server/wm/WindowProcessController;->mUseFifoUiScheduling:Z

    return p0
.end method

.method public wasFirstLaunch()Z
    .locals 1

    .line 2073
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public wasForceStopped()Z
    .locals 1

    .line 2068
    iget p0, p0, Lcom/android/server/wm/WindowProcessController;->mStoppedState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
