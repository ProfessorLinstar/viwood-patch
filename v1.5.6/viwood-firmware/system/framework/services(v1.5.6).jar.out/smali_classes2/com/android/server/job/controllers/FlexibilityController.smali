.class public final Lcom/android/server/job/controllers/FlexibilityController;
.super Lcom/android/server/job/controllers/StateController;
.source "FlexibilityController.java"


# static fields
.field public static final DEBUG:Z

.field static final FLEXIBLE_CONSTRAINTS:I = 0x10000007


# instance fields
.field public mAppliedConstraints:I

.field public mDeadlineProximityLimitMs:J

.field public mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

.field public mFallbackFlexibilityDeadlineMs:J

.field public mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

.field public mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

.field final mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

.field final mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

.field public mFlexibilityEnabled:Z

.field final mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

.field public final mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

.field public final mJobScoreTrackers:Landroid/util/SparseArrayMap;

.field public final mJobsToCheck:Landroid/util/ArraySet;

.field public final mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

.field public mLocalOverride:Z

.field public mMaxRescheduledDeadline:J

.field public mMinTimeBetweenFlexibilityAlarmsMs:J

.field public final mPackagesToCheck:Landroid/util/ArraySet;

.field public mPercentsToDropConstraints:Landroid/util/SparseArray;

.field final mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

.field final mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

.field final mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field public mRescheduledJobDeadline:J

.field mSatisfiedFlexibleConstraints:I

.field public final mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

.field public final mSupportedFlexConstraints:I

.field public mUnseenConstraintGracePeriodMs:J


# direct methods
.method public static synthetic $r8$lambda$YQJO92vFNpo0nJ4tdJou4VReoHk(Landroid/util/IndentingPrintWriter;JILjava/lang/String;Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;)V
    .locals 0

    .line 2008
    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 2009
    const-string p3, "/"

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2010
    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2011
    const-string p3, ": "

    invoke-virtual {p0, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 2012
    invoke-virtual {p5, p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 2013
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static synthetic $r8$lambda$wapJZa3NDuV9bludzPgh7HBifyk(Lcom/android/server/job/controllers/FlexibilityController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/job/controllers/FlexibilityController;->lambda$onConstantsUpdatedLocked$0()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmFlexibilityEnabled(Lcom/android/server/job/controllers/FlexibilityController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$FcHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmJobsToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackagesToCheck(Lcom/android/server/job/controllers/FlexibilityController;)Landroid/util/ArraySet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmSpecialAppTracker(Lcom/android/server/job/controllers/FlexibilityController;)Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmSupportedFlexConstraints(Lcom/android/server/job/controllers/FlexibilityController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUnseenConstraintGracePeriodMs(Lcom/android/server/job/controllers/FlexibilityController;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fputmAppliedConstraints(Lcom/android/server/job/controllers/FlexibilityController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmDeadlineProximityLimitMs(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFallbackFlexibilityAdditionalScoreTimeFactors(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseLongArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFallbackFlexibilityDeadlineMs(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFallbackFlexibilityDeadlineScores(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseIntArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFallbackFlexibilityDeadlines(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseLongArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmFlexibilityEnabled(Lcom/android/server/job/controllers/FlexibilityController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMaxRescheduledDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmMinTimeBetweenFlexibilityAlarmsMs(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmPercentsToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;Landroid/util/SparseArray;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmRescheduledJobDeadline(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmUnseenConstraintGracePeriodMs(Lcom/android/server/job/controllers/FlexibilityController;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetPercentsToDropConstraints(Lcom/android/server/job/controllers/FlexibilityController;I)[I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetDEBUG()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 84
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-nez v0, :cond_1

    const-string v0, "JobScheduler.Flex"

    const/4 v1, 0x3

    .line 85
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/PrefetchController;)V
    .locals 4

    .line 336
    invoke-direct {p0, p1}, Lcom/android/server/job/controllers/StateController;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    const-wide/32 v0, 0x5265c00

    .line 106
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    .line 112
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINES:Landroid/util/SparseLongArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 117
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    .line 123
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_ADDITIONAL_SCORE_TIME_FACTORS:Landroid/util/SparseLongArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    const-wide/32 v2, 0x36ee80

    .line 126
    iput-wide v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    .line 127
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    const-wide/32 v0, 0xf731400

    .line 129
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    const/4 p1, 0x0

    .line 139
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    const-wide/32 v0, 0xea60

    .line 142
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMinTimeBetweenFlexibilityAlarmsMs:J

    const-wide/32 v0, 0xdbba0

    .line 146
    iput-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mDeadlineProximityLimitMs:J

    .line 164
    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 184
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 188
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/controllers/FlexibilityController$1;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    .line 317
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 326
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    .line 328
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPackagesToCheck:Landroid/util/ArraySet;

    .line 337
    new-instance v0, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FcHandler;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    .line 338
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.automotive"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 339
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x10000007

    .line 345
    iput v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    goto :goto_1

    .line 342
    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    .line 347
    :goto_1
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    .line 348
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;I)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 349
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    .line 350
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mContext:Landroid/content/Context;

    .line 351
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->get()Lcom/android/server/AppSchedulingModuleThread;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, p0, v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;-><init>(Lcom/android/server/job/controllers/FlexibilityController;Landroid/content/Context;Landroid/os/Looper;Lcom/android/server/job/controllers/FlexibilityController-IA;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    .line 352
    sget-object p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_PERCENTS_TO_DROP_FLEXIBLE_CONSTRAINTS:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    .line 354
    iput-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 355
    new-instance p1, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-direct {p1, p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    iput-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 357
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz p0, :cond_3

    .line 358
    invoke-static {p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$mstartTracking(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public dumpConstants(Landroid/util/IndentingPrintWriter;)V
    .locals 0

    .line 1959
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-static {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->-$$Nest$mdump(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public dumpControllerStateLocked(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;)V
    .locals 6

    .line 1965
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    if-eqz v0, :cond_0

    .line 1966
    const-string v0, "Local override active"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1968
    :cond_0
    const-string v0, "Applied Flexible Constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1969
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    invoke-static {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1970
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1971
    const-string v0, "Satisfied Flexible Constraints:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1972
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    invoke-static {p1, v0}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    .line 1973
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1974
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1976
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 1977
    const-string v2, "Time since constraint combos last seen:"

    invoke-virtual {p1, v2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1978
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 v2, 0x0

    .line 1979
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 1980
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    .line 1981
    iget v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    if-ne v3, v4, :cond_1

    .line 1982
    const-string v4, "0ms"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 1984
    :cond_1
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    .line 1985
    invoke-virtual {v4, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v4

    .line 1984
    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1987
    :goto_1
    const-string v4, ":"

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 1990
    invoke-static {p1, v3}, Lcom/android/server/job/controllers/JobStatus;->dumpConstraints(Ljava/io/PrintWriter;I)V

    goto :goto_2

    .line 1992
    :cond_2
    const-string v3, " none"

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1994
    :goto_2
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1996
    :cond_3
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 1998
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 1999
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-virtual {v2, p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 2001
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2002
    iget-object v2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v2, p1, p2, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->dump(Landroid/util/IndentingPrintWriter;Ljava/util/function/Predicate;J)V

    .line 2004
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2005
    const-string p2, "Job scores:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 2006
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2007
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    new-instance v2, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda0;-><init>(Landroid/util/IndentingPrintWriter;J)V

    invoke-virtual {p2, v2}, Landroid/util/SparseArrayMap;->forEach(Landroid/util/SparseArrayMap$TriConsumer;)V

    .line 2015
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 2017
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 2018
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/AlarmQueue;->dump(Landroid/util/IndentingPrintWriter;)V

    return-void
.end method

.method public getCurPercentOfLifecycleLocked(Lcom/android/server/job/controllers/JobStatus;J)I
    .locals 6

    .line 706
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v4

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    .line 707
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    const-wide p2, 0x7fffffffffffffffL

    cmp-long p2, p0, p2

    if-eqz p2, :cond_3

    cmp-long p2, v4, v2

    if-ltz p2, :cond_0

    goto :goto_1

    :cond_0
    cmp-long p2, v2, p0

    if-gtz p2, :cond_2

    cmp-long p2, p0, v4

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    sub-long p2, v2, v4

    const-wide/16 v0, 0x64

    mul-long/2addr p2, v0

    sub-long/2addr p0, v4

    .line 714
    div-long/2addr p2, p0

    long-to-int p0, p2

    return p0

    :cond_2
    :goto_0
    const/16 p0, 0x64

    return p0

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public getFcConfig()Lcom/android/server/job/controllers/FlexibilityController$FcConfig;
    .locals 0

    .line 1620
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    return-object p0
.end method

.method public getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 8

    .line 620
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 621
    iget-wide v0, p1, Lcom/android/server/job/controllers/JobStatus;->enqueueTime:J

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEarliestRunTime()J

    move-result-wide v0

    .line 622
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v4

    if-nez v4, :cond_1

    .line 631
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/job/JobInfo;->getFlexMillis()J

    move-result-wide v6

    sub-long/2addr v4, v6

    add-long/2addr v0, v4

    const-wide/16 v4, 0x2

    .line 634
    div-long/2addr v0, v4

    .line 636
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 637
    iget-object v4, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 638
    invoke-virtual {v4, p1}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v4

    .line 639
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    .line 640
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v7

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 639
    invoke-virtual {v6, v7, p1, v2}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide v6, 0x7fffffffffffffffL

    cmp-long p1, v4, v6

    if-eqz p1, :cond_2

    .line 642
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 643
    invoke-virtual {p0}, Lcom/android/server/job/controllers/PrefetchController;->getLaunchTimeThresholdMs()J

    move-result-wide p0

    sub-long/2addr v4, p0

    .line 642
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 645
    :cond_2
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_3
    return-wide v0
.end method

.method public getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 9

    .line 660
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v0

    const-wide v1, 0x7fffffffffffffffL

    if-eqz v0, :cond_2

    .line 661
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    .line 662
    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/PrefetchController;->getNextEstimatedLaunchTimeLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide p2

    .line 665
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide p4

    cmp-long p4, p4, v1

    if-eqz p4, :cond_0

    .line 667
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p4, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    sub-long/2addr p2, p4

    .line 669
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide p0

    .line 667
    invoke-static {p2, p3, p0, p1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    cmp-long p1, p2, v1

    if-eqz p1, :cond_1

    .line 672
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mConstants:Lcom/android/server/job/JobSchedulerService$Constants;

    iget-wide p0, p0, Lcom/android/server/job/JobSchedulerService$Constants;->PREFETCH_FORCE_BATCH_RELAX_THRESHOLD_MS:J

    sub-long/2addr p2, p0

    return-wide p2

    :cond_1
    return-wide v1

    .line 678
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result v0

    const/4 v3, 0x1

    if-le v0, v3, :cond_3

    .line 679
    iget-wide p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mRescheduledJobDeadline:J

    long-to-float p2, p2

    .line 680
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumPreviousAttempts()I

    move-result p1

    add-int/lit8 p1, p1, -0x2

    invoke-static {p2, p1}, Ljava/lang/Math;->scalb(FI)F

    move-result p1

    float-to-long p1, p1

    iget-wide v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mMaxRescheduledDeadline:J

    .line 679
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p0

    add-long/2addr p4, p0

    return-wide p4

    .line 687
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    .line 689
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p2, p3}, Lcom/android/server/job/controllers/FlexibilityController;->getScoreLocked(ILjava/lang/String;J)I

    move-result p2

    .line 691
    iget-wide v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineMs:J

    const-wide/16 v5, 0x3

    mul-long/2addr v5, v3

    iget-object p3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlines:Landroid/util/SparseLongArray;

    .line 692
    invoke-virtual {p3, v0, v3, v4}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v3

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityAdditionalScoreTimeFactors:Landroid/util/SparseLongArray;

    const-wide/32 v7, 0xea60

    .line 694
    invoke-virtual {p0, v0, v7, v8}, Landroid/util/SparseLongArray;->get(IJ)J

    move-result-wide v7

    int-to-long p2, p2

    mul-long/2addr v7, p2

    add-long/2addr v3, v7

    .line 691
    invoke-static {v5, v6, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    add-long/2addr p4, p2

    .line 697
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide p2

    cmp-long p0, p2, v1

    if-nez p0, :cond_4

    return-wide p4

    .line 700
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide p0

    invoke-static {p4, p5, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J
    .locals 6

    .line 722
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleBeginningElapsedLocked(Lcom/android/server/job/controllers/JobStatus;)J

    move-result-wide v2

    .line 723
    sget-object v0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    .line 724
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    move-wide v4, v2

    move-wide v2, v0

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getLifeCycleEndElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    move-wide v2, v4

    move-wide v4, p0

    .line 725
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/job/controllers/FlexibilityController;->getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public getNextConstraintDropTimeElapsedLocked(Lcom/android/server/job/controllers/JobStatus;JJ)J
    .locals 4

    .line 733
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/job/controllers/FlexibilityController;->getPercentsToDropConstraints(I)[I

    move-result-object p0

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v2, p4, v0

    if-eqz v2, :cond_1

    .line 735
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result v2

    array-length v3, p0

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 738
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumDroppedFlexibleConstraints()I

    move-result p1

    aget p0, p0, p1

    sub-long/2addr p4, p2

    int-to-long p0, p0

    mul-long/2addr p4, p0

    const-wide/16 p0, 0x64

    .line 739
    div-long/2addr p4, p0

    add-long/2addr p2, p4

    return-wide p2

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public final getPercentsToDropConstraints(I)[I
    .locals 2

    .line 745
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPercentsToDropConstraints:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [I

    if-nez p0, :cond_0

    .line 747
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No %-to-drop for priority "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/app/job/JobInfo;->getPriorityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "JobScheduler.Flex"

    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x46

    const/16 p1, 0x50

    const/16 v0, 0x32

    const/16 v1, 0x3c

    .line 748
    filled-new-array {v0, v1, p0, p1}, [I

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method public getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I
    .locals 0

    .line 510
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->canApplyTransportAffinities()Z

    move-result p1

    if-eqz p1, :cond_0

    const/high16 p1, 0x10000000

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    or-int/lit8 p1, p1, 0x7

    .line 511
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    and-int/2addr p0, p1

    return p0
.end method

.method public getScoreLocked(ILjava/lang/String;J)I
    .locals 0

    .line 653
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 654
    :cond_0
    invoke-virtual {p0, p3, p4}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->getScore(J)I

    move-result p0

    return p0
.end method

.method public hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11

    .line 522
    iget v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    and-int/2addr v0, v1

    .line 524
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->areTransportAffinitiesSatisfied()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/high16 v1, 0x10000000

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/lit8 v1, v1, 0x7

    and-int/2addr v0, v1

    .line 525
    invoke-static {v0}, Ljava/lang/Integer;->bitCount(I)I

    move-result v0

    .line 526
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumRequiredFlexibleConstraints()I

    move-result v1

    const/4 v3, 0x1

    if-lt v0, v1, :cond_1

    return v3

    .line 531
    :cond_1
    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v4

    .line 532
    iget-wide v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    cmp-long v1, v4, v6

    if-gez v1, :cond_2

    return v2

    .line 544
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p1

    not-int p1, p1

    .line 545
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    sub-int/2addr v1, v3

    :goto_1
    if-ltz v1, :cond_6

    .line 546
    iget-object v6, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v6, v1}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v6

    and-int v7, v6, p1

    if-eqz v7, :cond_3

    goto :goto_3

    .line 551
    :cond_3
    iget-object v7, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v7, v1}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v7

    sub-long v7, v4, v7

    .line 552
    iget-wide v9, p0, Lcom/android/server/job/controllers/FlexibilityController;->mUnseenConstraintGracePeriodMs:J

    cmp-long v7, v7, v9

    if-gtz v7, :cond_4

    move v7, v3

    goto :goto_2

    :cond_4
    move v7, v2

    .line 554
    :goto_2
    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v6

    if-le v6, v0, :cond_5

    if-eqz v7, :cond_5

    return v2

    :cond_5
    :goto_3
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    :cond_6
    return v3
.end method

.method public isConstraintSatisfied(I)Z
    .locals 0

    .line 614
    iget p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isEnabled()Z
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-boolean p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 3

    .line 492
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 494
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 496
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService;->getUidBias(I)I

    move-result v0

    const/16 v1, 0x1e

    const/16 v2, 0x12c

    if-lt v0, v1, :cond_0

    .line 497
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-ge v0, v2, :cond_3

    .line 499
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getEffectivePriority()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    .line 501
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUserId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    .line 500
    invoke-virtual {v0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->isSpecialApp(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 502
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->hasEnoughSatisfiedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    .line 503
    invoke-virtual {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyRunningLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final synthetic lambda$onConstantsUpdatedLocked$0()V
    .locals 9

    .line 794
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 795
    iget-object v1, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 796
    :try_start_0
    sget-object v2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v2}, Ljava/time/Clock;->millis()J

    move-result-wide v2

    const/4 v4, 0x0

    .line 797
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    .line 798
    iget-object v5, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    .line 799
    invoke-virtual {v5, v4}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->getJobsByNumRequiredConstraints(I)Landroid/util/ArraySet;

    move-result-object v5

    .line 800
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    :goto_1
    if-ltz v6, :cond_1

    .line 801
    invoke-virtual {v5, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/job/controllers/JobStatus;

    .line 802
    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {v8, v7, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->updateFlexibleConstraints(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 803
    iget-object v8, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {v8, v7, v2, v3}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    .line 805
    invoke-virtual {p0, v7}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v8

    .line 804
    invoke-virtual {v7, v2, v3, v8}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 806
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 810
    :cond_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 811
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 812
    iget-object p0, p0, Lcom/android/server/job/controllers/StateController;->mStateChangedListener:Lcom/android/server/job/StateChangedListener;

    invoke-interface {p0, v0}, Lcom/android/server/job/StateChangedListener;->onControllerStateChanged(Landroid/util/ArraySet;)V

    :cond_3
    return-void

    .line 810
    :goto_3
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public maybeStartTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2

    .line 380
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 381
    sget-object p2, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 382
    iget p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSupportedFlexConstraints:I

    if-nez p2, :cond_0

    const/4 p0, 0x1

    .line 383
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    return-void

    .line 387
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->getRelevantAppliedConstraintsLocked(Lcom/android/server/job/controllers/JobStatus;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->bitCount(I)I

    move-result p2

    .line 386
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setNumAppliedFlexibleConstraints(I)V

    .line 388
    invoke-virtual {p0, p1}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result p2

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    .line 389
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->add(Lcom/android/server/job/controllers/JobStatus;)V

    const/16 p2, 0x80

    .line 390
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->setTrackingController(I)V

    .line 391
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;->scheduleDropNumConstraintsAlarm(Lcom/android/server/job/controllers/JobStatus;J)V

    :cond_1
    return-void
.end method

.method public maybeStopTrackingJobLocked(Lcom/android/server/job/controllers/JobStatus;Lcom/android/server/job/controllers/JobStatus;)V
    .locals 0

    const/16 p2, 0x80

    .line 440
    invoke-virtual {p1, p2}, Lcom/android/server/job/controllers/JobStatus;->clearTrackingController(I)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 441
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityAlarmQueue:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityAlarmQueue;

    invoke-virtual {p2, p1}, Lcom/android/server/utils/AlarmQueue;->removeAlarmForKey(Ljava/lang/Object;)V

    .line 442
    iget-object p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityTracker:Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/FlexibilityController$FlexibilityTracker;->remove(Lcom/android/server/job/controllers/JobStatus;)V

    .line 444
    :cond_0
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onAppRemovedLocked(Ljava/lang/String;I)V
    .locals 3

    .line 450
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 451
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 452
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    .line 453
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v1, v0, p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$monAppRemoved(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;ILjava/lang/String;)V

    .line 454
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    .line 455
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 456
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    if-ne v2, p2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 457
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v2

    if-ne v2, p2, :cond_2

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getCallingPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    :cond_1
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onConstantsUpdatedLocked()V
    .locals 2

    .line 792
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-static {v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->-$$Nest$fgetmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 793
    invoke-static {}, Lcom/android/server/AppSchedulingModuleThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/job/controllers/FlexibilityController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/job/controllers/FlexibilityController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public onSystemServicesReady()V
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {p0}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$monSystemServicesReady(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;)V

    return-void
.end method

.method public onUidBiasChangedLocked(III)V
    .locals 7

    const/16 v0, 0x1e

    if-ge p2, v0, :cond_0

    if-ge p3, v0, :cond_0

    goto/16 :goto_2

    .line 761
    :cond_0
    sget-object p3, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p3}, Ljava/time/Clock;->millis()J

    move-result-wide v0

    .line 762
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p3}, Lcom/android/server/job/JobSchedulerService;->getJobStore()Lcom/android/server/job/JobStore;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcom/android/server/job/JobStore;->getJobsBySourceUid(I)Landroid/util/ArraySet;

    move-result-object p3

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    .line 764
    :goto_0
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result v5

    if-ge v3, v5, :cond_2

    .line 765
    invoke-virtual {p3, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/JobStatus;

    .line 766
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->hasFlexibilityConstraint()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 767
    invoke-virtual {p0, v5}, Lcom/android/server/job/controllers/FlexibilityController;->isFlexibilitySatisfiedLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v6

    invoke-virtual {v5, v0, v1, v6}, Lcom/android/server/job/controllers/JobStatus;->setFlexibilityConstraintSatisfied(JZ)Z

    .line 768
    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/job/JobInfo;->isPrefetch()Z

    move-result v5

    or-int/2addr v4, v5

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_4

    const/16 p3, 0x28

    if-ne p2, p3, :cond_4

    .line 775
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 776
    iget-object p3, p0, Lcom/android/server/job/controllers/StateController;->mService:Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {p3, p1}, Lcom/android/server/job/JobSchedulerService;->getPackagesForUidLocked(I)Landroid/util/ArraySet;

    move-result-object p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 780
    :cond_3
    :goto_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p3

    if-ge v2, p3, :cond_4

    .line 781
    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    .line 782
    iget-object v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    const-wide/16 v4, 0x0

    .line 783
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->getOrDefault(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 782
    invoke-virtual {v3, p2, p3, v4}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    return-void
.end method

.method public onUserRemovedLocked(I)V
    .locals 3

    .line 466
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchLifeCycleStart:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/SparseArrayMap;->delete(I)V

    .line 467
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSpecialAppTracker:Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;

    invoke-static {v0, p1}, Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;->-$$Nest$monUserRemoved(Lcom/android/server/job/controllers/FlexibilityController$SpecialAppTracker;I)V

    .line 468
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 469
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 470
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 471
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->deleteAt(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 474
    :cond_1
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_1
    if-ltz v0, :cond_4

    .line 475
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 476
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eq v2, p1, :cond_2

    .line 477
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p1, :cond_3

    .line 478
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobsToCheck:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    :cond_3
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    :cond_4
    return-void
.end method

.method public prepareForExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 4

    .line 397
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getPriority()I

    move-result v0

    .line 404
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    sget-object v2, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    div-int/lit8 v3, v0, 0x64

    .line 406
    invoke-virtual {v2, v0, v3}, Landroid/util/SparseIntArray;->get(II)I

    move-result v2

    .line 404
    invoke-virtual {v1, v0, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 408
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    if-nez v1, :cond_1

    .line 410
    new-instance v1, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;-><init>(Lcom/android/server/job/controllers/FlexibilityController-IA;)V

    .line 411
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v2

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v2, p1, v1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    :cond_1
    sget-object p0, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p0}, Ljava/time/Clock;->millis()J

    move-result-wide p0

    invoke-virtual {v1, v0, p0, p1}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void
.end method

.method public prepareForUpdatedConstantsLocked()V
    .locals 1

    .line 821
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->-$$Nest$fputmShouldReevaluateConstraints(Lcom/android/server/job/controllers/FlexibilityController$FcConfig;Z)V

    return-void
.end method

.method public processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V
    .locals 0

    .line 827
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->processConstantLocked(Landroid/provider/DeviceConfig$Properties;Ljava/lang/String;)V

    return-void
.end method

.method public setConstraintSatisfied(IZJ)V
    .locals 5

    .line 572
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 573
    :try_start_0
    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    and-int/2addr v1, p1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-ne v1, p2, :cond_1

    .line 575
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 578
    :cond_1
    sget-boolean v1, Lcom/android/server/job/controllers/FlexibilityController;->DEBUG:Z

    if-eqz v1, :cond_2

    .line 579
    const-string v1, "JobScheduler.Flex"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setConstraintSatisfied:  constraint: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_2
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    iget v3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    invoke-virtual {v1, v3, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    if-nez p2, :cond_3

    .line 588
    iget-object v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLastSeenConstraintTimesElapsed:Landroid/util/SparseLongArray;

    invoke-virtual {v1, p1, p3, p4}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 591
    :cond_3
    iget p3, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    not-int p4, p1

    and-int/2addr p3, p4

    if-eqz p2, :cond_4

    move p2, p1

    goto :goto_1

    :cond_4
    move p2, v2

    :goto_1
    or-int/2addr p2, p3

    .line 592
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mSatisfiedFlexibleConstraints:I

    const/high16 p2, 0x10000000

    and-int/2addr p1, p2

    if-eqz p1, :cond_5

    .line 597
    monitor-exit v0

    return-void

    .line 600
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz p1, :cond_6

    .line 606
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 608
    :cond_6
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setLocalPolicyForTesting(ZI)V
    .locals 3

    .line 1941
    iget-object v0, p0, Lcom/android/server/job/controllers/StateController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1942
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    const/4 v2, 0x0

    if-ne v1, p1, :cond_1

    iget v1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    if-eq v1, p2, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 1944
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mLocalOverride:Z

    if-eqz p1, :cond_2

    .line 1946
    iput p2, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    goto :goto_2

    .line 1948
    :cond_2
    iget-object p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFcConfig:Lcom/android/server/job/controllers/FlexibilityController$FcConfig;

    iget p1, p1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->APPLIED_CONSTRAINTS:I

    iput p1, p0, Lcom/android/server/job/controllers/FlexibilityController;->mAppliedConstraints:I

    :goto_2
    if-eqz v1, :cond_3

    .line 1951
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mHandler:Lcom/android/server/job/controllers/FlexibilityController$FcHandler;

    invoke-virtual {p0, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 1953
    :cond_3
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public startTrackingLocked()V
    .locals 1

    .line 369
    iget-boolean v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFlexibilityEnabled:Z

    if-eqz v0, :cond_0

    .line 370
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchController:Lcom/android/server/job/controllers/PrefetchController;

    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mPrefetchChangedListener:Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;

    invoke-virtual {v0, p0}, Lcom/android/server/job/controllers/PrefetchController;->registerPrefetchChangedListener(Lcom/android/server/job/controllers/PrefetchController$PrefetchChangedListener;)V

    :cond_0
    return-void
.end method

.method public unprepareFromExecutionLocked(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3

    .line 419
    iget v0, p1, Lcom/android/server/job/controllers/JobStatus;->lastEvaluatedBias:I

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mJobScoreTrackers:Landroid/util/SparseArrayMap;

    .line 425
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;

    if-nez v0, :cond_1

    .line 427
    const-string p0, "JobScheduler.Flex"

    const-string p1, "Unprepared a job that didn\'t result in a score change"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 430
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getPriority()I

    move-result p1

    .line 431
    iget-object p0, p0, Lcom/android/server/job/controllers/FlexibilityController;->mFallbackFlexibilityDeadlineScores:Landroid/util/SparseIntArray;

    sget-object v1, Lcom/android/server/job/controllers/FlexibilityController$FcConfig;->DEFAULT_FALLBACK_FLEXIBILITY_DEADLINE_SCORES:Landroid/util/SparseIntArray;

    div-int/lit8 v2, p1, 0x64

    .line 433
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    .line 431
    invoke-virtual {p0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    neg-int p0, p0

    .line 434
    sget-object p1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {p1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/server/job/controllers/FlexibilityController$JobScoreTracker;->addScore(IJ)V

    return-void
.end method
