.class public final Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;
.super Ljava/lang/Object;
.source "ActivityMetricsLogger.java"


# instance fields
.field public final activityRecordIdHashCode:I

.field public final applicationInfo:Landroid/content/pm/ApplicationInfo;

.field public final bindApplicationDelayMs:I

.field public final launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

.field public final launchedActivityLaunchToken:Ljava/lang/String;

.field public final launchedActivityLaunchedFromPackage:Ljava/lang/String;

.field public final launchedActivityName:Ljava/lang/String;

.field public final launchedActivityShortComponentName:Ljava/lang/String;

.field public final multiWindowLaunchType:I

.field public final packageName:Ljava/lang/String;

.field public final processName:Ljava/lang/String;

.field public final processRecord:Lcom/android/server/wm/WindowProcessController;

.field public final reason:I

.field public final relaunched:Z

.field final sourceEventDelayMs:I

.field final sourceType:I

.field public final startingWindowDelayMs:I

.field public final timestampNs:J

.field public final type:I

.field public final userId:I

.field public final windowsDrawnDelayMs:I

.field public final windowsFullyDrawnDelayMs:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetapplicationInfo(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetbindApplicationDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetlaunchedActivityLaunchToken(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetlaunchedActivityLaunchedFromPackage(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprocessName(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetprocessRecord(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)Lcom/android/server/wm/WindowProcessController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetreason(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetstartingWindowDelayMs(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    return p0
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V
    .locals 2

    .line 493
    iget-object v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLastLaunchedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityMetricsLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V
    .locals 2

    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 499
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->packageName:Ljava/lang/String;

    .line 500
    iget-object v1, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    .line 501
    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchedFromPackage:Ljava/lang/String;

    .line 502
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityLaunchToken:Ljava/lang/String;

    .line 503
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 505
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getRequiredAbi()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    .line 506
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mReason:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->reason:I

    .line 507
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceEventDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceEventDelayMs:I

    .line 508
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mStartingWindowDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->startingWindowDelayMs:I

    .line 509
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mBindApplicationDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->bindApplicationDelayMs:I

    .line 510
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mWindowsDrawnDelayMs:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsDrawnDelayMs:I

    .line 511
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mTransitionType:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    .line 512
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processRecord:Lcom/android/server/wm/WindowProcessController;

    .line 513
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->processName:Ljava/lang/String;

    .line 514
    iget v0, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mSourceType:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->sourceType:I

    .line 515
    iget v0, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iput v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->userId:I

    .line 516
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityShortComponentName:Ljava/lang/String;

    .line 517
    invoke-static {p2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result p2

    iput p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->activityRecordIdHashCode:I

    .line 518
    iput p3, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->windowsFullyDrawnDelayMs:I

    .line 519
    iget-boolean p2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mRelaunched:Z

    iput-boolean p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    .line 520
    iget-object p2, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mLaunchingState:Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    iget-wide p2, p2, Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;->mStartRealtimeNs:J

    iput-wide p2, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->timestampNs:J

    .line 521
    iget p1, p1, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;->mMultiWindowLaunchType:I

    iput p1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->multiWindowLaunchType:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/ActivityMetricsLogger-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;-><init>(Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfo;Lcom/android/server/wm/ActivityRecord;I)V

    return-void
.end method


# virtual methods
.method public getLaunchState()I
    .locals 2

    .line 525
    iget v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_3

    const/16 v1, 0x8

    if-eq v0, v1, :cond_2

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/4 p0, -0x1

    return p0

    .line 529
    :cond_0
    iget-boolean p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->relaunched:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x4

    return p0

    :cond_1
    const/4 p0, 0x3

    return p0

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    const/4 p0, 0x1

    return p0
.end method

.method public getPackageOptimizationInfo(Landroid/content/pm/dex/ArtManagerInternal;)Landroid/content/pm/dex/PackageOptimizationInfo;
    .locals 2

    if-eqz p1, :cond_1

    .line 542
    iget-object v0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityAppRecordRequiredAbi:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    .line 544
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->launchedActivityName:Ljava/lang/String;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/pm/dex/ArtManagerInternal;->getPackageOptimizationInfo(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object p0

    return-object p0

    .line 543
    :cond_1
    :goto_0
    invoke-static {}, Landroid/content/pm/dex/PackageOptimizationInfo;->createWithNoInfo()Landroid/content/pm/dex/PackageOptimizationInfo;

    move-result-object p0

    return-object p0
.end method

.method public isInterestedToEventLog()Z
    .locals 1

    .line 538
    iget p0, p0, Lcom/android/server/wm/ActivityMetricsLogger$TransitionInfoSnapshot;->type:I

    const/16 v0, 0x8

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
