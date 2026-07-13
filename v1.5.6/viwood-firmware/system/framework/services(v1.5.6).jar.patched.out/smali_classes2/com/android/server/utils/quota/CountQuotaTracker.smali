.class public Lcom/android/server/utils/quota/CountQuotaTracker;
.super Lcom/android/server/utils/quota/QuotaTracker;
.source "CountQuotaTracker.java"


# static fields
.field public static final ALARM_TAG_CLEANUP:Ljava/lang/String;

.field public static final TAG:Ljava/lang/String; = "CountQuotaTracker"


# instance fields
.field public final mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

.field public mCreateExecutionStats:Ljava/util/function/Function;

.field public mCreateLongArrayQueue:Ljava/util/function/Function;

.field public final mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

.field public final mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

.field public final mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mEventTimes:Lcom/android/server/utils/quota/UptcMap;

.field public final mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

.field public final mHandler:Landroid/os/Handler;

.field public final mMaxCategoryCounts:Landroid/util/ArrayMap;

.field public mMaxPeriodMs:J

.field public mNextCleanupTimeElapsed:J


# direct methods
.method public static synthetic $r8$lambda$22S4fPERakaIsJJ-YO3wZmGu4eo(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$dump$8(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$360T7gdnVB0V0D04-5D-51fvB5g(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 1

    .line 694
    invoke-virtual {p4}, Landroid/util/LongArrayQueue;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 695
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 696
    const-string p1, ":"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 697
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    const/4 p1, 0x0

    .line 698
    invoke-virtual {p4, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroid/util/IndentingPrintWriter;->print(J)V

    const/4 p1, 0x1

    .line 699
    :goto_0
    invoke-virtual {p4}, Landroid/util/LongArrayQueue;->size()I

    move-result p2

    if-ge p1, p2, :cond_0

    .line 700
    const-string p2, ", "

    invoke-virtual {p0, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 701
    invoke-virtual {p4, p1}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide p2

    invoke-virtual {p0, p2, p3}, Landroid/util/IndentingPrintWriter;->print(J)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 703
    :cond_0
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 704
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->println()V

    :cond_1
    return-void
.end method

.method public static synthetic $r8$lambda$GWcz4Ik7FTI__gHddSYzxcG8CG8(Lcom/android/server/utils/quota/CountQuotaTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$new$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$VOFxslBKkJSf6eCdyl4QrLMLIQA(JLcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 455
    iput-wide p0, p2, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$bpXgHbASkT73xHBfIQStDjbYyHs(Ljava/lang/Void;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 0

    .line 669
    new-instance p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    invoke-direct {p0}, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$cM9jWlqtuFAt3Et9NwUilONDTpc(Ljava/lang/Void;)Landroid/util/LongArrayQueue;
    .locals 0

    .line 668
    new-instance p0, Landroid/util/LongArrayQueue;

    invoke-direct {p0}, Landroid/util/LongArrayQueue;-><init>()V

    return-object p0
.end method

.method public static synthetic $r8$lambda$hkNDg6KgiJQSwxtKIIgXVYX6j30(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/utils/quota/CountQuotaTracker;->lambda$maybeUpdateAllQuotaStatusLocked$1(Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qV8EA3F5sjjjybYSibYkmhiaSGQ(Landroid/util/IndentingPrintWriter;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 714
    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 715
    const-string p1, ":"

    invoke-virtual {p0, p1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 716
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 717
    invoke-virtual {p0, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 718
    invoke-virtual {p0}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    :cond_0
    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmCategoryCountWindowSizesMs(Lcom/android/server/utils/quota/CountQuotaTracker;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 65
    const-class v0, Lcom/android/server/utils/quota/CountQuotaTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".cleanup*"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;)V
    .locals 1

    .line 164
    new-instance v0, Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-direct {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;-><init>()V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V
    .locals 1

    .line 170
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;-><init>(Landroid/content/Context;Lcom/android/server/utils/quota/Categorizer;Lcom/android/server/utils/quota/QuotaTracker$Injector;)V

    .line 128
    new-instance p2, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {p2}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    .line 132
    new-instance p2, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {p2}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    const-wide/16 p2, 0x0

    .line 137
    iput-wide p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 139
    new-instance v0, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;)V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 144
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 153
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 157
    iput-wide p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 501
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker-IA;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    .line 637
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-direct {p2, p0, p3}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/CountQuotaTracker-IA;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    .line 668
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda1;

    invoke-direct {p2}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda1;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Ljava/util/function/Function;

    .line 669
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;

    invoke-direct {p2}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda2;-><init>()V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Ljava/util/function/Function;

    .line 172
    new-instance p2, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$CqtHandler;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public bridge synthetic clear()V
    .locals 0

    .line 64
    invoke-super {p0}, Lcom/android/server/utils/quota/QuotaTracker;->clear()V

    return-void
.end method

.method public deleteObsoleteEventsLocked()V
    .locals 1

    .line 643
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public dropEverythingLocked()V
    .locals 1

    .line 276
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/UptcMap;->clear()V

    .line 277
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0}, Lcom/android/server/utils/quota/UptcMap;->clear()V

    return-void
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 5

    .line 683
    sget-object v0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 684
    const-string v0, ":"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 685
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 687
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 688
    :try_start_0
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 689
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 691
    const-string v1, "Instantaneous events:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 693
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda6;

    invoke-direct {v2, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda6;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 707
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 709
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 710
    const-string v1, "Cached execution stats:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 711
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 712
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda7;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 721
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 723
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 724
    const-string v1, "Limits:"

    invoke-virtual {p1, v1}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 726
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 728
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/utils/quota/Category;

    .line 729
    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 730
    const-string v4, ": "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 731
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/Object;)V

    .line 732
    const-string v4, " events in "

    invoke-virtual {p1, v4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 733
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4}, Landroid/util/TimeUtils;->formatDuration(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 735
    :cond_0
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 736
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 737
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void

    .line 736
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public dump(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 11

    .line 747
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    .line 749
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const-wide v1, 0x10b00000001L

    .line 750
    :try_start_0
    invoke-super {p0, p1, v1, v2}, Lcom/android/server/utils/quota/QuotaTracker;->dump(Landroid/util/proto/ProtoOutputStream;J)V

    const/4 v3, 0x0

    .line 752
    :goto_0
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 753
    iget-object v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/utils/quota/Category;

    const-wide v5, 0x20b00000002L

    .line 754
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 755
    invoke-virtual {v4, p1, v1, v2}, Lcom/android/server/utils/quota/Category;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 756
    iget-object v7, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    .line 757
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const-wide v8, 0x10500000002L

    .line 756
    invoke-virtual {p1, v8, v9, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 758
    iget-object v7, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    .line 759
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide v9, 0x10300000003L

    .line 758
    invoke-virtual {p1, v9, v10, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 760
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 763
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    .line 802
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 803
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getEvents(ILjava/lang/String;Ljava/lang/String;)Landroid/util/LongArrayQueue;
    .locals 0

    .line 676
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    return-object p0
.end method

.method public getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 1

    const/4 v0, 0x1

    .line 376
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object p0

    return-object p0
.end method

.method public final getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;
    .locals 7

    .line 384
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateExecutionStats:Ljava/util/function/Function;

    .line 385
    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/android/server/utils/quota/UptcMap;->getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    if-eqz p4, :cond_1

    .line 387
    iget-object p4, p0, Lcom/android/server/utils/quota/QuotaTracker;->mCategorizer:Lcom/android/server/utils/quota/Categorizer;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/server/utils/quota/Categorizer;->getCategory(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/Category;

    move-result-object p4

    .line 388
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    const-wide v2, 0x7fffffffffffffffL

    .line 389
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 388
    invoke-virtual {v1, p4, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 390
    iget-object v3, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    const v4, 0x7fffffff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p4, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    .line 391
    iget-wide v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-object v5, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v5}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-wide v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    cmp-long v3, v3, v1

    if-nez v3, :cond_0

    iget v3, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-eq v3, p4, :cond_1

    .line 395
    :cond_0
    iput-wide v1, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    .line 396
    iput p4, v0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    .line 397
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V

    :cond_1
    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getInQuotaTimeElapsedLocked(ILjava/lang/String;Ljava/lang/String;)J
    .locals 0

    .line 291
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object p0

    iget-wide p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    return-wide p0
.end method

.method public getLimit(Lcom/android/server/utils/quota/Category;)I
    .locals 3

    .line 249
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 250
    :try_start_0
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-eqz p0, :cond_0

    .line 254
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 252
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not defined"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 255
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getWindowSizeMs(Lcom/android/server/utils/quota/Category;)J
    .locals 3

    .line 262
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    :try_start_0
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    if-eqz p0, :cond_0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    monitor-exit v0

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 265
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Limit for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " not defined"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 268
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public handleRemovedAppLocked(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    .line 298
    sget-object p0, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    const-string p1, "Told app removed but given null package name."

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 302
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/quota/UptcMap;->delete(ILjava/lang/String;)Landroid/util/ArrayMap;

    .line 303
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/UptcMap;->delete(ILjava/lang/String;)Landroid/util/ArrayMap;

    return-void
.end method

.method public handleRemovedUserLocked(I)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(I)V

    .line 310
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/UptcMap;->delete(I)V

    return-void
.end method

.method public final invalidateAllExecutionStatsLocked()V
    .locals 3

    .line 452
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v0

    .line 453
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mExecutionStatsCache:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;

    invoke-direct {v2, v0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda3;-><init>(J)V

    invoke-virtual {p0, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final isUnderCountQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z
    .locals 0

    .line 367
    iget p0, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget p1, p1, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-ge p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 64
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isWithinQuota(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isWithinQuotaLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 317
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->isEnabledLocked()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 320
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 324
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result p0

    return p0
.end method

.method public final isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z
    .locals 0

    .line 362
    invoke-virtual {p0, p1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isUnderCountQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$dump$8(Landroid/util/proto/ProtoOutputStream;ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 9

    .line 764
    invoke-virtual {p0, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->isIndividualQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v0

    const-wide v1, 0x20b00000003L

    .line 766
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 768
    new-instance v5, Lcom/android/server/utils/quota/Uptc;

    invoke-direct {v5, p2, p3, p4}, Lcom/android/server/utils/quota/Uptc;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    const-wide v6, 0x10b00000001L

    .line 769
    invoke-virtual {v5, p1, v6, v7}, Lcom/android/server/utils/quota/Uptc;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    const-wide v5, 0x10800000002L

    .line 771
    invoke-virtual {p1, v5, v6, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 773
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    const-wide p2, 0x10300000001L

    if-eqz p0, :cond_0

    .line 775
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    :goto_0
    if-ltz p4, :cond_0

    .line 776
    invoke-virtual {p1, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v5

    .line 777
    invoke-virtual {p0, p4}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v7

    invoke-virtual {p1, p2, p3, v7, v8}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 778
    invoke-virtual {p1, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    add-int/lit8 p4, p4, -0x1

    goto :goto_0

    :cond_0
    const-wide v0, 0x20b00000004L

    .line 782
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 784
    iget-wide v5, p5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p2, 0x10300000002L

    .line 787
    iget-wide v5, p5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    invoke-virtual {p1, p2, p3, v5, v6}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p2, 0x10500000003L

    .line 790
    iget p0, p5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p2, 0x10500000004L

    .line 791
    iget p0, p5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    invoke-virtual {p1, p2, p3, p0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p2, 0x10300000005L

    .line 794
    iget-wide p4, p5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 797
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 799
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public final synthetic lambda$maybeUpdateAllQuotaStatusLocked$1(Lcom/android/server/utils/quota/UptcMap;ILjava/lang/String;Ljava/lang/String;Landroid/util/LongArrayQueue;)V
    .locals 0

    .line 332
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/server/utils/quota/UptcMap;->contains(ILjava/lang/String;Ljava/lang/String;)Z

    move-result p5

    if-nez p5, :cond_0

    .line 333
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 334
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p1, p2, p3, p4, p0}, Lcom/android/server/utils/quota/UptcMap;->add(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final synthetic lambda$new$0()V
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public maybeScheduleCleanupAlarmLocked()V
    .locals 8

    .line 508
    iget-wide v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    iget-object v2, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    goto :goto_0

    .line 519
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->reset()V

    .line 520
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/quota/UptcMap;->forEach(Ljava/util/function/Consumer;)V

    .line 521
    iget-object v0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEarliestEventTimeFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;

    iget-wide v0, v0, Lcom/android/server/utils/quota/CountQuotaTracker$EarliestEventTimeFunctor;->earliestTimeElapsed:J

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    :goto_0
    return-void

    .line 533
    :cond_1
    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    add-long/2addr v0, v2

    .line 534
    iget-wide v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x927c0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_2

    add-long/2addr v0, v4

    :cond_2
    move-wide v4, v0

    .line 539
    iput-wide v4, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mNextCleanupTimeElapsed:J

    .line 540
    sget-object v6, Lcom/android/server/utils/quota/CountQuotaTracker;->ALARM_TAG_CLEANUP:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventCleanupAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const/4 v3, 0x3

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleAlarm(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;)V

    return-void
.end method

.method public maybeUpdateAllQuotaStatusLocked()V
    .locals 3

    .line 330
    new-instance v0, Lcom/android/server/utils/quota/UptcMap;

    invoke-direct {v0}, Lcom/android/server/utils/quota/UptcMap;-><init>()V

    .line 331
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    new-instance v2, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, v0}, Lcom/android/server/utils/quota/CountQuotaTracker$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/utils/quota/CountQuotaTracker;Lcom/android/server/utils/quota/UptcMap;)V

    invoke-virtual {v1, v2}, Lcom/android/server/utils/quota/UptcMap;->forEach(Lcom/android/server/utils/quota/UptcMap$UptcDataConsumer;)V

    return-void
.end method

.method public maybeUpdateQuotaStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 344
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z

    .line 345
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final maybeUpdateStatusForUptcLocked(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    .line 585
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v1

    .line 584
    invoke-virtual {p0, v1}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v1

    .line 588
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->isEnabledLocked()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 592
    :cond_0
    invoke-virtual {p0, p1, p2, p3, v3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Z)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v2

    .line 591
    invoke-virtual {p0, v2}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result v2

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    if-nez v2, :cond_2

    .line 596
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->maybeScheduleStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 598
    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->cancelScheduledStartAlarmLocked(ILjava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eq v1, v2, :cond_3

    .line 607
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_3
    return v0
.end method

.method public noteEvent(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 10

    .line 183
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->isEnabledLocked()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/quota/QuotaTracker;->isQuotaFreeLocked(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 187
    :cond_0
    iget-object v1, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v3

    .line 189
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    iget-object v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCreateLongArrayQueue:Ljava/util/function/Function;

    .line 190
    invoke-virtual {v1, p1, p2, p3, v5}, Lcom/android/server/utils/quota/UptcMap;->getOrCreate(ILjava/lang/String;Ljava/lang/String;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/LongArrayQueue;

    .line 191
    invoke-virtual {v1, v3, v4}, Landroid/util/LongArrayQueue;->addLast(J)V

    .line 192
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/CountQuotaTracker;->getExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;)Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;

    move-result-object v5

    .line 193
    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    add-int/2addr v6, v2

    iput v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 194
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    iget-wide v8, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v8, v3

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    iput-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 196
    iget v2, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-ne v2, v6, :cond_2

    .line 197
    iget-wide v6, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    sub-long/2addr v3, v6

    .line 198
    :goto_0
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v6

    cmp-long v2, v6, v3

    if-gez v2, :cond_1

    .line 199
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->removeFirst()J

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 201
    :cond_1
    invoke-virtual {v1}, Landroid/util/LongArrayQueue;->peekFirst()J

    move-result-wide v1

    iget-wide v3, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v1, v3

    iput-wide v1, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 202
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/QuotaTracker;->postQuotaStatusChanged(ILjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const/16 v1, 0x9

    if-le v6, v1, :cond_3

    mul-int/lit8 v6, v6, 0x4

    .line 203
    div-int/lit8 v6, v6, 0x5

    if-ne v2, v6, :cond_3

    .line 206
    sget-object v1, Lcom/android/server/utils/quota/CountQuotaTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2, p3}, Lcom/android/server/utils/quota/Uptc;->string(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has reached 80% of it\'s count limit of "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, v5, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->maybeScheduleCleanupAlarmLocked()V

    .line 210
    invoke-virtual {p0, v5}, Lcom/android/server/utils/quota/CountQuotaTracker;->isWithinQuotaLocked(Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)Z

    move-result p0

    monitor-exit v0

    return p0

    .line 185
    :cond_4
    :goto_2
    monitor-exit v0

    return v2

    .line 211
    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setCountLimit(Lcom/android/server/utils/quota/Category;IJ)V
    .locals 4

    if-ltz p2, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v0, p3, v0

    if-ltz v0, :cond_1

    .line 228
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 229
    :try_start_0
    iget-object v1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxCategoryCounts:Landroid/util/ArrayMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-wide v2, 0x9a7ec800L

    .line 231
    invoke-static {p3, p4, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p3

    const-wide/16 v2, 0x4e20

    .line 230
    invoke-static {v2, v3, p3, p4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    .line 232
    iget-object v2, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mCategoryCountWindowSizesMs:Landroid/util/ArrayMap;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz v1, :cond_0

    if-eqz p1, :cond_0

    .line 234
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    cmp-long p1, p1, p3

    if-nez p1, :cond_0

    .line 236
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 238
    :cond_0
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-static {p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->-$$Nest$mupdateMaxPeriod(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)V

    .line 239
    iget-object p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mDeleteOldEventTimesFunctor:Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;

    invoke-static {p1}, Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;->-$$Nest$fgetmMaxPeriodMs(Lcom/android/server/utils/quota/CountQuotaTracker$DeleteEventTimesFunctor;)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    .line 240
    invoke-virtual {p0}, Lcom/android/server/utils/quota/CountQuotaTracker;->invalidateAllExecutionStatsLocked()V

    .line 241
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    invoke-virtual {p0}, Lcom/android/server/utils/quota/QuotaTracker;->scheduleQuotaCheck()V

    return-void

    .line 241
    :goto_0
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 226
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Limit and window size must be nonnegative."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic setEnabled(Z)V
    .locals 0

    .line 64
    invoke-super {p0, p1}, Lcom/android/server/utils/quota/QuotaTracker;->setEnabled(Z)V

    return-void
.end method

.method public updateExecutionStatsLocked(ILjava/lang/String;Ljava/lang/String;Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;)V
    .locals 11

    const/4 v0, 0x0

    .line 408
    iput v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    .line 409
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    const-wide v1, 0x7fffffffffffffffL

    if-nez v0, :cond_0

    .line 411
    iput-wide v1, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 413
    iput-wide v3, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    .line 418
    :goto_0
    iget-object v0, p0, Lcom/android/server/utils/quota/QuotaTracker;->mInjector:Lcom/android/server/utils/quota/QuotaTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/utils/quota/QuotaTracker$Injector;->getElapsedRealtime()J

    move-result-wide v3

    .line 419
    iget-wide v5, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mMaxPeriodMs:J

    add-long/2addr v5, v3

    iput-wide v5, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    .line 421
    iget-object p0, p0, Lcom/android/server/utils/quota/CountQuotaTracker;->mEventTimes:Lcom/android/server/utils/quota/UptcMap;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/utils/quota/UptcMap;->get(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/LongArrayQueue;

    if-nez p0, :cond_1

    return-void

    :cond_1
    sub-long/2addr v1, v3

    .line 430
    iget-wide p1, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    sub-long p1, v3, p1

    .line 431
    invoke-virtual {p0}, Landroid/util/LongArrayQueue;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    :goto_1
    if-ltz p3, :cond_4

    .line 432
    invoke-virtual {p0, p3}, Landroid/util/LongArrayQueue;->get(I)J

    move-result-wide v5

    cmp-long v0, v5, p1

    if-gez v0, :cond_2

    goto :goto_2

    .line 437
    :cond_2
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    sub-long v7, v5, p1

    .line 438
    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 440
    iget v0, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countInWindow:I

    iget v7, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->countLimit:I

    if-lt v0, v7, :cond_3

    .line 441
    iget-wide v7, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    iget-wide v9, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->windowSizeMs:J

    add-long/2addr v5, v9

    invoke-static {v7, v8, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->inQuotaTimeElapsed:J

    :cond_3
    add-int/lit8 p3, p3, -0x1

    goto :goto_1

    :cond_4
    :goto_2
    add-long/2addr v3, v1

    .line 446
    iput-wide v3, p4, Lcom/android/server/utils/quota/CountQuotaTracker$ExecutionStats;->expirationTimeElapsed:J

    return-void
.end method
