.class public Lcom/android/server/usage/UserUsageStatsService;
.super Ljava/lang/Object;
.source "UserUsageStatsService.java"


# static fields
.field public static final INTERVAL_LENGTH:[J

.field public static final sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

.field public static final sDateFormat:Ljava/text/SimpleDateFormat;

.field public static final sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

.field public static final sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;


# instance fields
.field public final mCachedEarlyEvents:Landroid/util/SparseArrayMap;

.field public final mContext:Landroid/content/Context;

.field public final mCurrentStats:[Lcom/android/server/usage/IntervalStats;

.field public final mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

.field public final mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

.field public mLastBackgroundedPackage:Ljava/lang/String;

.field public final mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

.field public final mLogPrefix:Ljava/lang/String;

.field public mRealTimeSnapshot:J

.field public mStatsChanged:Z

.field public mSystemTimeSnapshot:J

.field public final mUserId:I


# direct methods
.method public static synthetic $r8$lambda$AR4Jje2JY6H4-p2jLdP0IyCqy_Y(JJLjava/lang/String;Landroid/util/ArraySet;ZLcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 2

    .line 688
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 689
    iget-object p1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_0
    if-ge p0, p1, :cond_5

    .line 691
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    .line 692
    iget-wide v0, p8, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 696
    :cond_0
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 699
    :cond_1
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 700
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    if-eqz p6, :cond_3

    .line 702
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootPackage:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 703
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_3
    if-eqz p6, :cond_4

    .line 705
    iget-object v0, p8, Landroid/app/usage/UsageEvents$Event;->mTaskRootClass:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 706
    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 708
    :cond_4
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$g-bl5VNBpy8gjNFALWiQqGzaU1A(JJLjava/lang/String;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 2

    .line 776
    iget-object p7, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p7, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 777
    iget-object p1, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_0
    if-ge p0, p1, :cond_4

    .line 779
    iget-object p7, p6, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p7, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p7

    .line 780
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    cmp-long v0, v0, p2

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    return v1

    .line 784
    :cond_0
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 787
    :cond_1
    invoke-virtual {p7}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    if-ne v0, p5, :cond_2

    .line 788
    invoke-interface {p8, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return v1

    .line 791
    :cond_2
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 793
    invoke-interface {p8, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x1

    return p0
.end method

.method public static synthetic $r8$lambda$p0y5lz5q5TqvoITutDfa1s61KzA(JJLandroid/util/ArraySet;Landroid/util/ArraySet;ILcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z
    .locals 2

    .line 639
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0, p1}, Landroid/app/usage/EventList;->firstIndexOnOrAfter(J)I

    move-result p0

    .line 640
    iget-object p1, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p1}, Landroid/app/usage/EventList;->size()I

    move-result p1

    :goto_0
    if-ge p0, p1, :cond_5

    .line 642
    iget-object p8, p7, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    invoke-virtual {p8, p0}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object p8

    .line 643
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide v0

    cmp-long v0, v0, p2

    if-ltz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 646
    :cond_0
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 649
    :cond_1
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 655
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v1

    if-ne v1, p6, :cond_3

    .line 656
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 657
    invoke-virtual {p8}, Landroid/app/usage/UsageEvents$Event;->getPackageName()Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p4, p8}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_4

    .line 660
    invoke-interface {p9, p8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 75
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x4

    .line 94
    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    .line 394
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$1;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$1;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 412
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$2;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$2;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    .line 430
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$3;

    invoke-direct {v0}, Lcom/android/server/usage/UserUsageStatsService$3;-><init>()V

    sput-object v0, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    return-void

    :array_0
    .array-data 8
        0x5265c00
        0x240c8400
        0x9a7ec800L
        0x757b12c00L
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/io/File;Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;)V
    .locals 2

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 85
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 123
    new-instance v0, Landroid/util/SparseArrayMap;

    invoke-direct {v0}, Landroid/util/SparseArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    .line 128
    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    .line 129
    new-instance p1, Lcom/android/server/usage/UnixCalendar;

    const-wide/16 v0, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 130
    new-instance p1, Lcom/android/server/usage/UsageStatsDatabase;

    invoke-direct {p1, p3}, Lcom/android/server/usage/UsageStatsDatabase;-><init>(Ljava/io/File;)V

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 p1, 0x4

    .line 131
    new-array p1, p1, [Lcom/android/server/usage/IntervalStats;

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    .line 132
    iput-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    .line 133
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "User["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, "] "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    .line 134
    iput p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    .line 135
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 136
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    return-void
.end method

.method public static eventToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 1400
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN_TYPE_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1398
    :pswitch_1
    const-string p0, "APP_COMPONENT_USED"

    return-object p0

    .line 1396
    :pswitch_2
    const-string p0, "LOCUS_ID_SET"

    return-object p0

    .line 1394
    :pswitch_3
    const-string p0, "USER_STOPPED"

    return-object p0

    .line 1392
    :pswitch_4
    const-string p0, "USER_UNLOCKED"

    return-object p0

    .line 1390
    :pswitch_5
    const-string p0, "DEVICE_STARTUP"

    return-object p0

    .line 1388
    :pswitch_6
    const-string p0, "DEVICE_SHUTDOWN"

    return-object p0

    .line 1350
    :pswitch_7
    const-string p0, "ACTIVITY_STOPPED"

    return-object p0

    .line 1354
    :pswitch_8
    const-string p0, "ROLLOVER_FOREGROUND_SERVICE"

    return-object p0

    .line 1358
    :pswitch_9
    const-string p0, "CONTINUING_FOREGROUND_SERVICE"

    return-object p0

    .line 1348
    :pswitch_a
    const-string p0, "FOREGROUND_SERVICE_STOP"

    return-object p0

    .line 1346
    :pswitch_b
    const-string p0, "FOREGROUND_SERVICE_START"

    return-object p0

    .line 1386
    :pswitch_c
    const-string p0, "KEYGUARD_HIDDEN"

    return-object p0

    .line 1384
    :pswitch_d
    const-string p0, "KEYGUARD_SHOWN"

    return-object p0

    .line 1382
    :pswitch_e
    const-string p0, "SCREEN_NON_INTERACTIVE"

    return-object p0

    .line 1380
    :pswitch_f
    const-string p0, "SCREEN_INTERACTIVE"

    return-object p0

    .line 1376
    :pswitch_10
    const-string p0, "SLICE_PINNED"

    return-object p0

    .line 1378
    :pswitch_11
    const-string p0, "SLICE_PINNED_PRIV"

    return-object p0

    .line 1374
    :pswitch_12
    const-string p0, "NOTIFICATION_INTERRUPTION"

    return-object p0

    .line 1372
    :pswitch_13
    const-string p0, "STANDBY_BUCKET_CHANGED"

    return-object p0

    .line 1370
    :pswitch_14
    const-string p0, "NOTIFICATION_SEEN"

    return-object p0

    .line 1368
    :pswitch_15
    const-string p0, "CHOOSER_ACTION"

    return-object p0

    .line 1366
    :pswitch_16
    const-string p0, "SHORTCUT_INVOCATION"

    return-object p0

    .line 1364
    :pswitch_17
    const-string p0, "USER_INTERACTION"

    return-object p0

    .line 1362
    :pswitch_18
    const-string p0, "SYSTEM_INTERACTION"

    return-object p0

    .line 1360
    :pswitch_19
    const-string p0, "CONFIGURATION_CHANGE"

    return-object p0

    .line 1356
    :pswitch_1a
    const-string p0, "CONTINUE_PREVIOUS_DAY"

    return-object p0

    .line 1352
    :pswitch_1b
    const-string p0, "END_OF_DAY"

    return-object p0

    .line 1342
    :pswitch_1c
    const-string p0, "ACTIVITY_PAUSED"

    return-object p0

    .line 1344
    :pswitch_1d
    const-string p0, "ACTIVITY_RESUMED"

    return-object p0

    .line 1340
    :pswitch_1e
    const-string p0, "NONE"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static formatDateTime(JZ)Ljava/lang/String;
    .locals 2

    if-eqz p2, :cond_0

    .line 1074
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\""

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1076
    :cond_0
    invoke-static {p0, p1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static intervalToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 1318
    const-string p0, "?"

    return-object p0

    .line 1316
    :cond_0
    const-string/jumbo p0, "yearly"

    return-object p0

    .line 1314
    :cond_1
    const-string/jumbo p0, "monthly"

    return-object p0

    .line 1312
    :cond_2
    const-string/jumbo p0, "weekly"

    return-object p0

    .line 1310
    :cond_3
    const-string p0, "daily"

    return-object p0
.end method

.method public static printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V
    .locals 2

    .line 1087
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-static {v0, v1, p2}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "time"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1088
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    invoke-static {p2}, Lcom/android/server/usage/UserUsageStatsService;->eventToString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "type"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1089
    const-string/jumbo p2, "package"

    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1090
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mClass:Ljava/lang/String;

    if-eqz p2, :cond_0

    .line 1091
    const-string v0, "class"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1093
    :cond_0
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    if-eqz p2, :cond_1

    .line 1094
    const-string v0, "config"

    invoke-static {p2}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1096
    :cond_1
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mShortcutId:Ljava/lang/String;

    if-eqz p2, :cond_2

    .line 1097
    const-string/jumbo v0, "shortcutId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1099
    :cond_2
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/16 v0, 0xb

    if-ne p2, v0, :cond_3

    .line 1100
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getAppStandbyBucket()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string/jumbo v0, "standbyBucket"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1101
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getStandbyReason()I

    move-result p2

    invoke-static {p2}, Landroid/app/usage/UsageStatsManager;->reasonToString(I)Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "reason"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    if-eq p2, v0, :cond_4

    const/4 v0, 0x2

    if-eq p2, v0, :cond_4

    const/16 v0, 0x17

    if-ne p2, v0, :cond_5

    .line 1105
    :cond_4
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getInstanceId()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const-string v0, "instanceId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1108
    :cond_5
    :goto_0
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 1109
    const-string/jumbo p2, "taskRootPackage"

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1112
    :cond_6
    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 1113
    const-string/jumbo p2, "taskRootClass"

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getTaskRootClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1116
    :cond_7
    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz p2, :cond_8

    .line 1117
    const-string v0, "channelId"

    invoke-virtual {p0, v0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1120
    :cond_8
    iget p2, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v0, 0x7

    if-ne p2, v0, :cond_9

    iget-object p2, p1, Landroid/app/usage/UsageEvents$Event;->mExtras:Landroid/os/PersistableBundle;

    if-eqz p2, :cond_9

    .line 1121
    invoke-virtual {p2}, Landroid/os/PersistableBundle;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1123
    :cond_9
    const-string p2, "flags"

    iget p1, p1, Landroid/app/usage/UsageEvents$Event;->mFlags:I

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/util/IndentingPrintWriter;->printHexPair(Ljava/lang/String;I)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1124
    invoke-virtual {p0}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public static stringToInterval(Ljava/lang/String;)I
    .locals 6

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1323
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    const/4 v4, -0x1

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move p0, v4

    goto :goto_1

    :sswitch_0
    const-string/jumbo v5, "monthly"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move p0, v0

    goto :goto_1

    :sswitch_1
    const-string v5, "daily"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    move p0, v1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v5, "yearly"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, v2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v5, "weekly"

    invoke-virtual {p0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move p0, v3

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v4

    :pswitch_0
    return v1

    :pswitch_1
    return v3

    :pswitch_2
    return v0

    :pswitch_3
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x2f307f7f -> :sswitch_3
        -0x2bc88576 -> :sswitch_2
        0x5aede19 -> :sswitch_1
        0x49b5900d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static validRange(JJJ)Z
    .locals 0

    .line 0
    cmp-long p0, p2, p0

    if-gtz p0, :cond_0

    cmp-long p0, p2, p4

    if-gez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;
    .locals 0

    .line 1411
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1412
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->applyRestoredPayload(Ljava/lang/String;[B)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public final checkAndGetTimeLocked()J
    .locals 12

    .line 277
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 278
    sget-boolean v2, Lcom/android/server/usage/UsageStatsService;->ENABLE_TIME_CHANGE_CORRECTION:Z

    if-nez v2, :cond_0

    goto :goto_0

    .line 281
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 282
    iget-wide v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long v4, v2, v4

    iget-wide v6, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v4, v6

    sub-long v6, v0, v4

    .line 284
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(J)J

    move-result-wide v8

    const-wide/16 v10, 0x7d0

    cmp-long v8, v8, v10

    if-lez v8, :cond_1

    .line 286
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "Time changed in by "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v9, 0x3e8

    div-long/2addr v6, v9

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, " seconds"

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "UsageStatsService"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    invoke-virtual {p0, v4, v5, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->onTimeChanged(JJ)V

    .line 288
    iput-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    .line 289
    iput-wide v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    :cond_1
    :goto_0
    return-wide v0
.end method

.method public checkin(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 2

    .line 967
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    new-instance v1, Lcom/android/server/usage/UserUsageStatsService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/usage/UserUsageStatsService$5;-><init>(Lcom/android/server/usage/UserUsageStatsService;Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->checkinDailyFiles(Lcom/android/server/usage/UsageStatsDatabase$CheckinAction;)Z

    return-void
.end method

.method public final convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V
    .locals 4

    .line 299
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mRealTimeSnapshot:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mSystemTimeSnapshot:J

    add-long/2addr v0, v2

    iput-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    return-void
.end method

.method public deleteDataFor(Ljava/lang/String;)V
    .locals 0

    .line 1002
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->deleteDataFor(Ljava/lang/String;)V

    return-void
.end method

.method public dump(Lcom/android/internal/util/IndentingPrintWriter;Ljava/util/List;Z)V
    .locals 8

    xor-int/lit8 v0, p3, 0x1

    .line 981
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/usage/UserUsageStatsService;->printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V

    const/4 v0, 0x0

    .line 982
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 983
    const-string v1, "In-memory "

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 984
    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 985
    const-string v1, " stats"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 986
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v4, v1, v0

    xor-int/lit8 v5, p3, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move-object v2, p0

    move-object v3, p1

    move-object v7, p2

    .line 988
    invoke-static {v7}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 989
    iget-object p0, v2, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, v3, p3}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    :cond_1
    return-void
.end method

.method public dumpDatabaseInfo(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1

    .line 994
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UsageStatsDatabase;->dump(Lcom/android/internal/util/IndentingPrintWriter;Z)V

    return-void
.end method

.method public dumpFile(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 1006
    array-length v1, p2

    if-nez v1, :cond_0

    goto :goto_1

    .line 1018
    :cond_0
    :try_start_0
    aget-object v1, p2, v0

    invoke-static {v1}, Lcom/android/server/usage/UserUsageStatsService;->stringToInterval(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 1020
    aget-object v0, p2, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    :cond_1
    if-ltz v1, :cond_5

    .line 1028
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length v0, v0

    if-lt v1, v0, :cond_2

    goto :goto_0

    .line 1032
    :cond_2
    array-length v0, p2

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    .line 1034
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    return-void

    .line 1039
    :cond_3
    :try_start_1
    aget-object v0, p2, v2

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1044
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v0

    if-nez v0, :cond_4

    .line 1046
    const-string/jumbo p0, "the specified filename does not exist."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1049
    :cond_4
    aget-object p2, p2, v2

    invoke-static {p2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    return-void

    .line 1041
    :catch_0
    const-string p0, "invalid filename specified."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1029
    :cond_5
    :goto_0
    const-string/jumbo p0, "the specified interval does not exist."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1025
    :catch_1
    const-string p0, "invalid interval specified."

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 1008
    :cond_6
    :goto_1
    iget-object p2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object p2, p2, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    array-length p2, p2

    :goto_2
    if-ge v0, p2, :cond_7

    .line 1010
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "interval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/usage/UserUsageStatsService;->intervalToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1012
    invoke-virtual {p0, p1, v0}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V

    .line 1013
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_7
    return-void
.end method

.method public final dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V
    .locals 6

    .line 1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1067
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 1068
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V

    .line 1069
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public final dumpFileDetailsForInterval(Lcom/android/internal/util/IndentingPrintWriter;I)V
    .locals 6

    .line 1055
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v0, v0, Lcom/android/server/usage/UsageStatsDatabase;->mSortedStatFiles:[Landroid/util/LongSparseArray;

    aget-object v0, v0, p2

    .line 1056
    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 1058
    invoke-virtual {v0, v2}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 1059
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v5, p2, v3, v4}, Lcom/android/server/usage/UsageStatsDatabase;->readIntervalStatsForFile(IJ)Lcom/android/server/usage/IntervalStats;

    move-result-object v5

    .line 1060
    invoke-virtual {p0, p1, v5, v3, v4}, Lcom/android/server/usage/UserUsageStatsService;->dumpFileDetails(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;J)V

    .line 1061
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 998
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->dumpMappings(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method public final formatElapsedTime(JZ)Ljava/lang/String;
    .locals 2

    if-eqz p3, :cond_0

    .line 1081
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\""

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v0, 0x3e8

    div-long/2addr p1, v0

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1083
    :cond_0
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getBackupPayload(Ljava/lang/String;)[B
    .locals 0

    .line 1405
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 1406
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 1407
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1}, Lcom/android/server/usage/UsageStatsDatabase;->getBackupPayload(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public init(JLjava/util/HashMap;Z)V
    .locals 3

    .line 141
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->readPackageMappingsLocked(Ljava/util/HashMap;Z)V

    .line 142
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->init(J)V

    .line 143
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4}, Lcom/android/server/usage/UsageStatsDatabase;->wasUpgradePerformed()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 144
    iget-object p4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p4, p3}, Lcom/android/server/usage/UsageStatsDatabase;->prunePackagesDataOnUpgrade(Ljava/util/HashMap;)V

    :cond_0
    const/4 p3, 0x0

    move p4, p3

    move v0, p4

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v1

    if-ge p4, v2, :cond_2

    .line 149
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, p4}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    aput-object v2, v1, p4

    .line 150
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v1, v1, p4

    if-nez v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_2
    if-lez v0, :cond_4

    .line 158
    array-length p4, v1

    if-eq v0, p4, :cond_3

    .line 161
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Some stats have no latest available"

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    const-string v0, "UsageStatsService"

    invoke-static {v0, p4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    goto :goto_1

    .line 173
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 180
    :goto_1
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object p1, p1, p3

    if-eqz p1, :cond_5

    .line 182
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    iget-wide p3, p1, Lcom/android/server/usage/IntervalStats;->lastTimeSaved:J

    iget-wide v0, p1, Lcom/android/server/usage/IntervalStats;->endTime:J

    .line 183
    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p3

    const/16 v0, 0x1a

    invoke-direct {p2, v0, p3, p4}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 184
    const-string p3, "android"

    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 185
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 186
    new-instance p2, Landroid/app/usage/UsageEvents$Event;

    const/16 p4, 0x1b

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p2, p4, v0, v1}, Landroid/app/usage/UsageEvents$Event;-><init>(IJ)V

    .line 187
    iput-object p3, p2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    .line 188
    invoke-virtual {p1, p2}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 191
    :cond_5
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1}, Lcom/android/server/usage/UsageStatsDatabase;->isNewUpdate()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 192
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyNewUpdate()V

    :cond_6
    return-void
.end method

.method public final loadActiveStats(J)V
    .locals 7

    const/4 v0, 0x0

    move v1, v0

    .line 922
    :goto_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 923
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v2, v1}, Lcom/android/server/usage/UsageStatsDatabase;->getLatestUsageStats(I)Lcom/android/server/usage/IntervalStats;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 924
    iget-wide v3, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    sget-object v5, Lcom/android/server/usage/UserUsageStatsService;->INTERVAL_LENGTH:[J

    aget-wide v5, v5, v1

    add-long/2addr v3, v5

    cmp-long v3, p1, v3

    if-gez v3, :cond_0

    .line 931
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aput-object v2, v3, v1

    goto :goto_1

    .line 940
    :cond_0
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    new-instance v3, Lcom/android/server/usage/IntervalStats;

    invoke-direct {v3}, Lcom/android/server/usage/IntervalStats;-><init>()V

    aput-object v3, v2, v1

    .line 941
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v2, v2, v1

    iput-wide p1, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    const-wide/16 v3, 0x1

    add-long/2addr v3, p1

    .line 942
    iput-wide v3, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 946
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 947
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->updateRolloverDeadline()V

    .line 950
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsReloaded()V

    return-void
.end method

.method public final notifyNewUpdate()V
    .locals 1

    .line 918
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    iget p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    invoke-interface {v0, p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onNewUpdate(I)V

    return-void
.end method

.method public final notifyStatsChanged()V
    .locals 1

    .line 911
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 912
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    .line 913
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mListener:Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;

    invoke-interface {p0}, Lcom/android/server/usage/UserUsageStatsService$StatsUpdatedListener;->onStatsUpdated()V

    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;J)I
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->numMaps()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 204
    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/SparseArrayMap;->keyAt(I)I

    move-result v1

    .line 205
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v2, v1, p1}, Landroid/util/SparseArrayMap;->delete(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 207
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/UsageStatsDatabase;->onPackageRemoved(Ljava/lang/String;J)I

    move-result p0

    return p0
.end method

.method public final onTimeChanged(JJ)V
    .locals 1

    .line 267
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0}, Landroid/util/SparseArrayMap;->clear()V

    .line 268
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 269
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    sub-long p1, p3, p1

    invoke-virtual {v0, p1, p2}, Lcom/android/server/usage/UsageStatsDatabase;->onTimeChanged(J)V

    .line 270
    invoke-virtual {p0, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    return-void
.end method

.method public persistActiveStats()V
    .locals 5

    .line 813
    iget-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z

    if-eqz v0, :cond_1

    .line 814
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Flushing usage stats to disk"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsageStatsService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    :try_start_0
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    invoke-virtual {v0, v2}, Lcom/android/server/usage/UsageStatsDatabase;->obfuscateCurrentStats([Lcom/android/server/usage/IntervalStats;)V

    .line 817
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V

    const/4 v0, 0x0

    move v2, v0

    .line 818
    :goto_0
    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v3

    if-ge v2, v4, :cond_0

    .line 819
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    aget-object v3, v3, v2

    invoke-virtual {v4, v2, v3}, Lcom/android/server/usage/UsageStatsDatabase;->putUsageStats(ILcom/android/server/usage/IntervalStats;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_1

    .line 821
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mStatsChanged:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 823
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "Failed to persist active stats"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-void
.end method

.method public printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V
    .locals 5

    .line 1177
    iget v0, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    .line 1178
    :cond_1
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1179
    const-string p2, ": "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1180
    iget p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->count:I

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(I)V

    .line 1181
    const-string/jumbo p2, "x for "

    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->duration:J

    invoke-virtual {p0, v3, v4, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1183
    iget-wide v3, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    cmp-long p0, v3, v1

    if-eqz p0, :cond_2

    .line 1184
    const-string p0, " (now running, started at "

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1185
    iget-wide p2, p3, Lcom/android/server/usage/IntervalStats$EventTracker;->curStartTime:J

    invoke-static {p2, p3, p4}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    .line 1186
    const-string p0, ")"

    invoke-virtual {p1, p0}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    return-void
.end method

.method public printIntervalStats(Lcom/android/internal/util/IndentingPrintWriter;Lcom/android/server/usage/IntervalStats;ZZLjava/util/List;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p5

    if-eqz v3, :cond_0

    .line 1195
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    iget-wide v8, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    iget-wide v10, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    const v12, 0x20015

    invoke-static/range {v7 .. v12}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "timeRange"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 1198
    :cond_0
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "beginTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1199
    iget-wide v5, v2, Lcom/android/server/usage/IntervalStats;->endTime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    const-string v6, "endTime"

    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1201
    :goto_0
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1202
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1203
    const-string/jumbo v5, "packages"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1204
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1205
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    .line 1206
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v8, 0x0

    .line 1207
    :goto_1
    const-string/jumbo v9, "package"

    if-ge v8, v6, :cond_2

    .line 1208
    invoke-virtual {v5, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/usage/UsageStats;

    .line 1209
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v11

    if-nez v11, :cond_1

    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v11}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_1

    goto :goto_2

    .line 1212
    :cond_1
    iget-object v11, v10, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v11}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1213
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeInForeground:J

    .line 1214
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1213
    const-string/jumbo v11, "totalTimeUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1215
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeUsed:J

    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v11, "lastTimeUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1216
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeVisible:J

    .line 1217
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1216
    const-string/jumbo v11, "totalTimeVisible"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1218
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeVisible:J

    .line 1219
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1218
    const-string v11, "lastTimeVisible"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1220
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeComponentUsed:J

    .line 1221
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1220
    const-string v11, "lastTimeComponentUsed"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1222
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mTotalTimeForegroundServiceUsed:J

    .line 1223
    invoke-virtual {v0, v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1222
    const-string/jumbo v11, "totalTimeFS"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1224
    iget-wide v11, v10, Landroid/app/usage/UsageStats;->mLastTimeForegroundServiceUsed:J

    .line 1225
    invoke-static {v11, v12, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    .line 1224
    const-string v11, "lastTimeFS"

    invoke-virtual {v1, v11, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1226
    iget v9, v10, Landroid/app/usage/UsageStats;->mAppLaunchCount:I

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const-string v10, "appLaunchCount"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1227
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 1229
    :cond_2
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1231
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1232
    const-string v6, "ChooserCounts"

    invoke-virtual {v1, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1233
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1234
    invoke-virtual {v5}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/UsageStats;

    .line 1235
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v10

    if-nez v10, :cond_3

    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-interface {v4, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    goto :goto_3

    .line 1238
    :cond_3
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v9, v10}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1239
    iget-object v10, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    if-eqz v10, :cond_6

    .line 1240
    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_6

    .line 1242
    iget-object v12, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v12, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 1243
    iget-object v13, v8, Landroid/app/usage/UsageStats;->mChooserCounts:Landroid/util/ArrayMap;

    invoke-virtual {v13, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/ArrayMap;

    .line 1244
    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v14, :cond_5

    .line 1246
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Ljava/lang/String;

    .line 1247
    invoke-virtual {v13, v15}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    move-object/from16 v17, v5

    if-eqz v16, :cond_4

    .line 1249
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v18, v8

    const-string v8, ":"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1250
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1249
    invoke-virtual {v1, v6, v5}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1251
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    goto :goto_6

    :cond_4
    move-object/from16 v18, v8

    :goto_6
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v5, v17

    move-object/from16 v8, v18

    goto :goto_5

    :cond_5
    move-object/from16 v17, v5

    move-object/from16 v18, v8

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_6
    move-object/from16 v17, v5

    .line 1256
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    move-object/from16 v5, v17

    goto/16 :goto_3

    .line 1258
    :cond_7
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1260
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 1261
    const-string v5, "configurations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1262
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1263
    iget-object v5, v2, Lcom/android/server/usage/IntervalStats;->configurations:Landroid/util/ArrayMap;

    .line 1264
    invoke-virtual {v5}, Landroid/util/ArrayMap;->size()I

    move-result v6

    const/4 v7, 0x0

    :goto_7
    if-ge v7, v6, :cond_8

    .line 1266
    invoke-virtual {v5, v7}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/usage/ConfigurationStats;

    .line 1267
    iget-object v9, v8, Landroid/app/usage/ConfigurationStats;->mConfiguration:Landroid/content/res/Configuration;

    invoke-static {v9}, Landroid/content/res/Configuration;->resourceQualifierString(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "config"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1269
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mTotalTimeActive:J

    invoke-virtual {v0, v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatElapsedTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string/jumbo v10, "totalTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1270
    iget-wide v9, v8, Landroid/app/usage/ConfigurationStats;->mLastTimeActive:J

    invoke-static {v9, v10, v3}, Lcom/android/server/usage/UserUsageStatsService;->formatDateTime(JZ)Ljava/lang/String;

    move-result-object v9

    const-string v10, "lastTime"

    invoke-virtual {v1, v10, v9}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1271
    iget v8, v8, Landroid/app/usage/ConfigurationStats;->mActivationCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const-string v9, "count"

    invoke-virtual {v1, v9, v8}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1272
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 1274
    :cond_8
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1275
    const-string v5, "event aggregations"

    invoke-virtual {v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1277
    const-string/jumbo v5, "screen-interactive"

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->interactiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1279
    const-string/jumbo v5, "screen-non-interactive"

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->nonInteractiveTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1281
    const-string v5, "keyguard-shown"

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->keyguardShownTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1283
    const-string v5, "keyguard-hidden"

    iget-object v6, v2, Lcom/android/server/usage/IntervalStats;->keyguardHiddenTracker:Lcom/android/server/usage/IntervalStats$EventTracker;

    invoke-virtual {v0, v1, v5, v6, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEventAggregation(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Lcom/android/server/usage/IntervalStats$EventTracker;Z)V

    .line 1285
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_9
    if-nez p4, :cond_d

    .line 1291
    const-string v0, "events"

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1293
    iget-object v0, v2, Lcom/android/server/usage/IntervalStats;->events:Landroid/app/usage/EventList;

    if-eqz v0, :cond_a

    .line 1294
    invoke-virtual {v0}, Landroid/app/usage/EventList;->size()I

    move-result v2

    goto :goto_8

    :cond_a
    const/4 v2, 0x0

    :goto_8
    const/4 v7, 0x0

    :goto_9
    if-ge v7, v2, :cond_c

    .line 1296
    invoke-virtual {v0, v7}, Landroid/app/usage/EventList;->get(I)Landroid/app/usage/UsageEvents$Event;

    move-result-object v5

    .line 1297
    invoke-static {v4}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v6

    if-nez v6, :cond_b

    iget-object v6, v5, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_a

    .line 1300
    :cond_b
    invoke-static {v1, v5, v3}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    :goto_a
    add-int/lit8 v7, v7, 0x1

    goto :goto_9

    .line 1302
    :cond_c
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1304
    :cond_d
    invoke-virtual {v1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public printLast24HrEvents(Lcom/android/internal/util/IndentingPrintWriter;ZLjava/util/List;)V
    .locals 8

    .line 1129
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 1130
    new-instance v0, Lcom/android/server/usage/UnixCalendar;

    invoke-direct {v0, v4, v5}, Lcom/android/server/usage/UnixCalendar;-><init>(J)V

    const/4 v1, -0x1

    .line 1131
    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 1133
    invoke-virtual {v0}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1135
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$6;

    move-object v1, p0

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$6;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJLjava/util/List;)V

    move-object v6, v0

    move-object v0, v1

    const/4 v7, 0x0

    const/4 v1, 0x0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    .line 1157
    const-string p3, "Last 24 hour events ("

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz p2, :cond_0

    .line 1159
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\""

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mContext:Landroid/content/Context;

    move-wide v1, v2

    move-wide v3, v4

    const v5, 0x20015

    invoke-static/range {v0 .. v5}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;JJI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string/jumbo v0, "timeRange"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    goto :goto_0

    .line 1162
    :cond_0
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "beginTime"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1163
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    const-string v0, "endTime"

    invoke-virtual {p1, v0, p3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 1165
    :goto_0
    const-string p3, ")"

    invoke-virtual {p1, p3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    if-eqz p0, :cond_2

    .line 1167
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1168
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/app/usage/UsageEvents$Event;

    .line 1169
    invoke-static {p1, p3, p2}, Lcom/android/server/usage/UserUsageStatsService;->printEvent(Lcom/android/internal/util/IndentingPrintWriter;Landroid/app/usage/UsageEvents$Event;Z)V

    goto :goto_1

    .line 1171
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    :cond_2
    return-void
.end method

.method public pruneUninstalledPackagesData()Z
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->pruneUninstalledPackagesData()Z

    move-result p0

    return p0
.end method

.method public queryConfigurationStats(IJJ)Ljava/util/List;
    .locals 8

    .line 525
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 528
    :cond_0
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sConfigStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryEarliestAppEvents(JJI)Landroid/app/usage/UsageEvents;
    .locals 8

    .line 632
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 635
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    move-wide v1, v2

    move-wide v3, v4

    .line 636
    new-instance v5, Landroid/util/ArraySet;

    invoke-direct {v5}, Landroid/util/ArraySet;-><init>()V

    .line 637
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;

    move v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda1;-><init>(JJLandroid/util/ArraySet;Landroid/util/ArraySet;I)V

    move-wide v4, v3

    move-object p1, v6

    move-wide v2, v1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 666
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_1

    goto :goto_0

    .line 673
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    .line 674
    invoke-static {p1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 675
    new-instance p2, Landroid/app/usage/UsageEvents;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p1, p3}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    :cond_2
    :goto_0
    return-object p2
.end method

.method public queryEarliestEventsForPackage(JJLjava/lang/String;I)Landroid/app/usage/UsageEvents;
    .locals 9

    .line 729
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    .line 730
    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    move-wide p2, v0

    const/4 p4, 0x0

    if-nez p1, :cond_0

    return-object p4

    .line 734
    :cond_0
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p1, p6, p5}, Landroid/util/SparseArrayMap;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    const/4 v8, 0x0

    if-eqz p1, :cond_7

    .line 740
    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_6

    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v0, v2, v0

    if-gtz v0, :cond_6

    .line 741
    iget-object v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez v0, :cond_1

    move v0, v8

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-eqz v0, :cond_2

    .line 742
    iget-object v1, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    add-int/lit8 v0, v0, -0x1

    .line 743
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {v0}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v0

    if-eq v0, p6, :cond_3

    :cond_2
    iget-wide v0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long v2, v0, v4

    if-gez v2, :cond_3

    .line 748
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_2

    .line 752
    :cond_3
    iget-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    cmp-long p0, p2, v4

    if-gtz p0, :cond_5

    .line 753
    iget-object p0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    if-nez p0, :cond_4

    return-object p4

    .line 756
    :cond_4
    new-instance p0, Landroid/app/usage/UsageEvents;

    iget-object p1, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v8}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p0

    :cond_5
    return-object p4

    .line 765
    :cond_6
    iput-wide v2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    :goto_1
    move-wide v1, v2

    goto :goto_2

    .line 768
    :cond_7
    new-instance p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;

    invoke-direct {p1, p4}, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;-><init>(Lcom/android/server/usage/UserUsageStatsService-IA;)V

    .line 769
    iput-wide v2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->searchBeginTime:J

    .line 770
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {v0, p6, p5, p1}, Landroid/util/SparseArrayMap;->add(ILjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 774
    :goto_2
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;

    move v6, p6

    move-wide v3, v4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda2;-><init>(JJLjava/lang/String;I)V

    move-wide v4, v3

    const/4 v7, 0x0

    move-wide v2, v1

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_9

    .line 799
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p6

    if-eqz p6, :cond_8

    goto :goto_3

    .line 807
    :cond_8
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/usage/UsageEvents$Event;

    invoke-virtual {p2}, Landroid/app/usage/UsageEvents$Event;->getTimeStamp()J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 808
    iput-object p0, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    .line 809
    new-instance p1, Landroid/app/usage/UsageEvents;

    filled-new-array {p5}, [Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p0, p2, v8}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p1

    .line 802
    :cond_9
    :goto_3
    invoke-static {p2, p3, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->eventTime:J

    .line 803
    iput-object p4, p1, Lcom/android/server/usage/UserUsageStatsService$CachedEarlyEvents;->events:Ljava/util/List;

    return-object p4
.end method

.method public queryEventStats(IJJ)Ljava/util/List;
    .locals 8

    .line 532
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 535
    :cond_0
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sEventStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public queryEvents(JJI[ILandroid/util/ArraySet;)Landroid/app/usage/UsageEvents;
    .locals 16

    move-object/from16 v0, p6

    .line 540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v1

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    invoke-static/range {v1 .. v6}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result v1

    const/4 v14, 0x0

    if-nez v1, :cond_0

    return-object v14

    .line 545
    :cond_0
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v8

    const/4 v1, 0x0

    const/4 v15, 0x1

    if-eqz p7, :cond_2

    .line 546
    invoke-virtual/range {p7 .. p7}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    move v11, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v11, v15

    :goto_1
    const/16 v2, 0x20

    .line 547
    new-array v9, v2, [Z

    if-nez v8, :cond_4

    .line 549
    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_4

    aget v3, v0, v1

    if-ltz v3, :cond_3

    const/16 v4, 0x1f

    if-gt v3, v4, :cond_3

    .line 553
    aput-boolean v15, v9, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 551
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid event type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 556
    :cond_4
    new-instance v13, Landroid/util/ArraySet;

    invoke-direct {v13}, Landroid/util/ArraySet;-><init>()V

    .line 557
    new-instance v2, Lcom/android/server/usage/UserUsageStatsService$4;

    move-object/from16 v3, p0

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move/from16 v10, p5

    move-object/from16 v12, p7

    invoke-direct/range {v2 .. v13}, Lcom/android/server/usage/UserUsageStatsService$4;-><init>(Lcom/android/server/usage/UserUsageStatsService;JJZ[ZIZLandroid/util/ArraySet;Landroid/util/ArraySet;)V

    move-object v8, v2

    const/4 v9, 0x0

    const/4 v3, 0x0

    move-object/from16 v2, p0

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 616
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    .line 620
    :cond_5
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v13, v1}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    .line 621
    invoke-static {v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 622
    new-instance v2, Landroid/app/usage/UsageEvents;

    invoke-direct {v2, v0, v1, v15}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object v2

    :cond_6
    :goto_3
    return-object v14
.end method

.method public queryEventsForPackage(JJLjava/lang/String;Z)Landroid/app/usage/UsageEvents;
    .locals 8

    .line 681
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p1

    const/4 p2, 0x0

    if-nez p1, :cond_0

    return-object p2

    .line 684
    :cond_0
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 685
    invoke-virtual {v6, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 686
    new-instance v0, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;

    move v7, p6

    move-wide v1, v2

    move-wide v3, v4

    move-object v5, p5

    invoke-direct/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService$$ExternalSyntheticLambda0;-><init>(JJLjava/lang/String;Landroid/util/ArraySet;Z)V

    move-wide v4, v3

    move-object p3, v6

    move p1, v7

    move-wide v2, v1

    const/4 v7, 0x0

    const/4 v1, 0x0

    move-object v6, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 713
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-eqz p4, :cond_1

    goto :goto_0

    .line 717
    :cond_1
    invoke-virtual {p3}, Landroid/util/ArraySet;->size()I

    move-result p2

    new-array p2, p2, [Ljava/lang/String;

    invoke-virtual {p3, p2}, Landroid/util/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 718
    invoke-static {p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 719
    new-instance p3, Landroid/app/usage/UsageEvents;

    invoke-direct {p3, p0, p2, p1}, Landroid/app/usage/UsageEvents;-><init>(Ljava/util/List;[Ljava/lang/String;Z)V

    return-object p3

    :cond_2
    :goto_0
    return-object p2
.end method

.method public final queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;
    .locals 11

    move-wide v0, p4

    const/4 v2, 0x4

    if-ne p1, v2, :cond_0

    .line 453
    iget-object p1, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p1, p2, p3, v0, v1}, Lcom/android/server/usage/UsageStatsDatabase;->findBestFitBucket(JJ)I

    move-result p1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    :cond_0
    move v3, p1

    const/4 p1, 0x0

    if-ltz v3, :cond_4

    .line 461
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v2

    if-lt v3, v4, :cond_1

    goto :goto_0

    .line 468
    :cond_1
    aget-object v10, v2, v3

    .line 475
    iget-wide v4, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long v2, p2, v4

    if-ltz v2, :cond_2

    return-object p1

    .line 487
    :cond_2
    iget-wide v4, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    .line 490
    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide v4, p2

    move-object/from16 v8, p6

    move/from16 v9, p7

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/usage/UsageStatsDatabase;->queryUsageStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p1

    .line 499
    iget-wide v2, v10, Lcom/android/server/usage/IntervalStats;->endTime:J

    cmp-long p2, p2, v2

    if-gez p2, :cond_4

    iget-wide p2, v10, Lcom/android/server/usage/IntervalStats;->beginTime:J

    cmp-long p2, v0, p2

    if-lez p2, :cond_4

    if-nez p1, :cond_3

    .line 505
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 507
    :cond_3
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0, v10}, Lcom/android/server/usage/UsageStatsDatabase;->filterStats(Lcom/android/server/usage/IntervalStats;)V

    const/4 p0, 0x1

    move-object/from16 v8, p6

    .line 508
    invoke-interface {v8, v10, p0, p1}, Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;->combine(Lcom/android/server/usage/IntervalStats;ZLjava/util/List;)Z

    :cond_4
    :goto_0
    return-object p1
.end method

.method public queryUsageStats(IJJ)Ljava/util/List;
    .locals 8

    .line 518
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    move-result-wide v0

    move-wide v2, p2

    move-wide v4, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/usage/UserUsageStatsService;->validRange(JJJ)Z

    move-result p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 521
    :cond_0
    sget-object v6, Lcom/android/server/usage/UserUsageStatsService;->sUsageStatsCombiner:Lcom/android/server/usage/UsageStatsDatabase$StatCombiner;

    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/usage/UserUsageStatsService;->queryStats(IJJLcom/android/server/usage/UsageStatsDatabase$StatCombiner;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public final readPackageMappingsLocked(Ljava/util/HashMap;Z)V
    .locals 1

    .line 212
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {v0}, Lcom/android/server/usage/UsageStatsDatabase;->readMappingsLocked()V

    .line 216
    iget v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mUserId:I

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->updatePackageMappingsLocked(Ljava/util/HashMap;)Z

    :cond_0
    return-void
.end method

.method public reportEvent(Landroid/app/usage/UsageEvents$Event;)V
    .locals 14

    .line 309
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v1, 0x7

    const/16 v2, 0x1f

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    .line 311
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->checkAndGetTimeLocked()J

    .line 312
    invoke-virtual {p0, p1}, Lcom/android/server/usage/UserUsageStatsService;->convertToSystemTimeLocked(Landroid/app/usage/UsageEvents$Event;)V

    .line 315
    :cond_0
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget-object v3, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v3}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v3

    cmp-long v0, v0, v3

    if-ltz v0, :cond_1

    .line 317
    iget-wide v0, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usage/UserUsageStatsService;->rolloverStats(J)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 322
    iget-object v3, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 323
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    iget-object v4, v0, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    if-eqz v4, :cond_2

    .line 326
    invoke-static {v4, v3}, Landroid/content/res/Configuration;->generateDelta(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)Landroid/content/res/Configuration;

    move-result-object v4

    iput-object v4, p1, Landroid/app/usage/UsageEvents$Event;->mConfiguration:Landroid/content/res/Configuration;

    .line 330
    :cond_2
    iget v4, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v6, 0x6

    if-eq v4, v6, :cond_3

    const/16 v6, 0x18

    if-eq v4, v6, :cond_3

    const/16 v6, 0x19

    if-eq v4, v6, :cond_3

    const/16 v6, 0x1a

    if-eq v4, v6, :cond_3

    if-eq v4, v2, :cond_3

    .line 341
    invoke-virtual {v0, p1}, Lcom/android/server/usage/IntervalStats;->addEvent(Landroid/app/usage/UsageEvents$Event;)V

    .line 345
    :cond_3
    iget v0, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 346
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_4
    const/4 v2, 0x2

    if-ne v0, v2, :cond_5

    .line 350
    iget-object v0, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 351
    iput-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mLastBackgroundedPackage:Ljava/lang/String;

    :cond_5
    move v2, v1

    .line 355
    :goto_0
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v4, v0

    move v6, v1

    :goto_1
    if-ge v6, v4, :cond_9

    aget-object v7, v0, v6

    .line 356
    iget v8, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    if-eq v8, v5, :cond_7

    const/16 v9, 0x9

    if-eq v8, v9, :cond_6

    packed-switch v8, :pswitch_data_0

    .line 382
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/app/usage/UsageEvents$Event;->getClassName()Ljava/lang/String;

    move-result-object v9

    iget-wide v10, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    iget v12, p1, Landroid/app/usage/UsageEvents$Event;->mEventType:I

    iget v13, p1, Landroid/app/usage/UsageEvents$Event;->mInstanceId:I

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    if-eqz v2, :cond_8

    .line 385
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/android/server/usage/IntervalStats;->incrementAppLaunchCount(Ljava/lang/String;)V

    goto :goto_3

    .line 379
    :pswitch_0
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateKeyguardHidden(J)V

    goto :goto_3

    .line 376
    :pswitch_1
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateKeyguardShown(J)V

    goto :goto_3

    .line 373
    :pswitch_2
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateScreenNonInteractive(J)V

    goto :goto_3

    .line 370
    :pswitch_3
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v7, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateScreenInteractive(J)V

    goto :goto_3

    .line 361
    :cond_6
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v9, p1, Landroid/app/usage/UsageEvents$Event;->mContentType:Ljava/lang/String;

    iget-object v10, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v7, v8, v9, v10}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    iget-object v8, p1, Landroid/app/usage/UsageEvents$Event;->mContentAnnotations:[Ljava/lang/String;

    if-eqz v8, :cond_8

    .line 364
    array-length v9, v8

    move v10, v1

    :goto_2
    if-ge v10, v9, :cond_8

    aget-object v11, v8, v10

    .line 365
    iget-object v12, p1, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    iget-object v13, p1, Landroid/app/usage/UsageEvents$Event;->mAction:Ljava/lang/String;

    invoke-virtual {v7, v12, v11, v13}, Lcom/android/server/usage/IntervalStats;->updateChooserCounts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 358
    :cond_7
    iget-wide v8, p1, Landroid/app/usage/UsageEvents$Event;->mTimeStamp:J

    invoke-virtual {v7, v3, v8, v9}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    :cond_8
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 391
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xf
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final rolloverStats(J)V
    .locals 24

    move-object/from16 v0, p0

    .line 829
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    .line 830
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "Rolling over usage stats"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "UsageStatsService"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    iget-object v3, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v5, 0x0

    aget-object v3, v3, v5

    iget-object v3, v3, Lcom/android/server/usage/IntervalStats;->activeConfiguration:Landroid/content/res/Configuration;

    .line 837
    new-instance v6, Landroid/util/ArraySet;

    invoke-direct {v6}, Landroid/util/ArraySet;-><init>()V

    .line 838
    new-instance v7, Landroid/util/ArrayMap;

    invoke-direct {v7}, Landroid/util/ArrayMap;-><init>()V

    .line 840
    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    .line 842
    iget-object v9, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    array-length v10, v9

    move v11, v5

    :goto_0
    if-ge v11, v10, :cond_5

    aget-object v12, v9, v11

    .line 843
    iget-object v13, v12, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->size()I

    move-result v13

    move v14, v5

    :goto_1
    const-wide/16 v19, 0x1

    if-ge v14, v13, :cond_4

    .line 845
    iget-object v15, v12, Lcom/android/server/usage/IntervalStats;->packageStats:Landroid/util/ArrayMap;

    invoke-virtual {v15, v14}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/app/usage/UsageStats;

    move/from16 v21, v5

    .line 846
    iget-object v5, v15, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-gtz v5, :cond_1

    iget-object v5, v15, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    .line 847
    invoke-virtual {v5}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move-wide/from16 v22, v1

    move v1, v13

    move v5, v14

    goto :goto_4

    .line 848
    :cond_1
    :goto_2
    iget-object v5, v15, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v5}, Landroid/util/SparseIntArray;->size()I

    move-result v5

    if-lez v5, :cond_2

    .line 849
    iget-object v5, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    move-wide/from16 v22, v1

    iget-object v1, v15, Landroid/app/usage/UsageStats;->mActivities:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v1, v13

    .line 851
    iget-object v13, v15, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v2, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 852
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v16

    sub-long v16, v16, v19

    move-object v2, v15

    move-wide/from16 v15, v16

    const/16 v17, 0x3

    const/16 v18, 0x0

    move v5, v14

    const/4 v14, 0x0

    .line 851
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    goto :goto_3

    :cond_2
    move-wide/from16 v22, v1

    move v1, v13

    move v5, v14

    move-object v2, v15

    .line 855
    :goto_3
    iget-object v13, v2, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v13}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_3

    .line 856
    iget-object v13, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v14, v2, Landroid/app/usage/UsageStats;->mForegroundServices:Landroid/util/ArrayMap;

    invoke-virtual {v8, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    iget-object v13, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    iget-object v14, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 859
    invoke-virtual {v14}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v14

    sub-long v15, v14, v19

    const/16 v17, 0x16

    const/16 v18, 0x0

    const/4 v14, 0x0

    .line 858
    invoke-virtual/range {v12 .. v18}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    .line 862
    :cond_3
    iget-object v2, v2, Landroid/app/usage/UsageStats;->mPackageName:Ljava/lang/String;

    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 863
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    :goto_4
    add-int/lit8 v14, v5, 0x1

    move v13, v1

    move/from16 v5, v21

    move-wide/from16 v1, v22

    goto/16 :goto_1

    :cond_4
    move-wide/from16 v22, v1

    move/from16 v21, v5

    .line 867
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 868
    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v1, v1, v19

    const/4 v5, 0x0

    .line 867
    invoke-virtual {v12, v5, v1, v2}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 869
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    invoke-virtual {v1}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    sub-long v1, v1, v19

    invoke-virtual {v12, v1, v2}, Lcom/android/server/usage/IntervalStats;->commitTime(J)V

    add-int/lit8 v11, v11, 0x1

    move/from16 v5, v21

    move-wide/from16 v1, v22

    goto/16 :goto_0

    :cond_5
    move-wide/from16 v22, v1

    move/from16 v21, v5

    .line 872
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 873
    iget-object v1, v0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    move-wide/from16 v9, p1

    invoke-virtual {v1, v9, v10}, Lcom/android/server/usage/UsageStatsDatabase;->prune(J)V

    .line 874
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/usage/UserUsageStatsService;->loadActiveStats(J)V

    .line 876
    invoke-virtual {v6}, Landroid/util/ArraySet;->size()I

    move-result v1

    move/from16 v2, v21

    :goto_5
    if-ge v2, v1, :cond_a

    .line 878
    invoke-virtual {v6, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v10, v5

    check-cast v10, Ljava/lang/String;

    .line 879
    iget-object v5, v0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    aget-object v9, v5, v21

    iget-wide v12, v9, Lcom/android/server/usage/IntervalStats;->beginTime:J

    .line 880
    array-length v9, v5

    move/from16 v11, v21

    :goto_6
    if-ge v11, v9, :cond_9

    move v14, v9

    aget-object v9, v5, v11

    .line 881
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_7

    .line 883
    invoke-virtual {v7, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/util/SparseIntArray;

    move/from16 v16, v11

    .line 884
    invoke-virtual {v15}, Landroid/util/SparseIntArray;->size()I

    move-result v11

    move/from16 p1, v1

    move/from16 v1, v21

    :goto_7
    if-ge v1, v11, :cond_6

    move/from16 v17, v14

    .line 887
    invoke-virtual {v15, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v14

    move/from16 v18, v2

    move-object v2, v15

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v15

    move/from16 v19, v11

    const/4 v11, 0x0

    .line 886
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v1, v1, 0x1

    move-object v15, v2

    move/from16 v14, v17

    move/from16 v2, v18

    move/from16 v11, v19

    goto :goto_7

    :cond_6
    :goto_8
    move/from16 v18, v2

    move/from16 v17, v14

    goto :goto_9

    :cond_7
    move/from16 p1, v1

    move/from16 v16, v11

    goto :goto_8

    .line 890
    :goto_9
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 892
    invoke-virtual {v8, v10}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/ArrayMap;

    .line 893
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v11, v21

    :goto_a
    if-ge v11, v2, :cond_8

    .line 895
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 896
    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    move/from16 v19, v11

    move-object v11, v14

    move v14, v15

    const/4 v15, 0x0

    .line 895
    invoke-virtual/range {v9 .. v15}, Lcom/android/server/usage/IntervalStats;->update(Ljava/lang/String;Ljava/lang/String;JII)V

    add-int/lit8 v11, v19, 0x1

    goto :goto_a

    .line 899
    :cond_8
    invoke-virtual {v9, v3, v12, v13}, Lcom/android/server/usage/IntervalStats;->updateConfigurationStats(Landroid/content/res/Configuration;J)V

    .line 900
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->notifyStatsChanged()V

    add-int/lit8 v11, v16, 0x1

    move/from16 v1, p1

    move/from16 v9, v17

    move/from16 v2, v18

    goto/16 :goto_6

    :cond_9
    move/from16 p1, v1

    move/from16 v18, v2

    add-int/lit8 v2, v18, 0x1

    goto/16 :goto_5

    .line 903
    :cond_a
    invoke-virtual {v0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 905
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sub-long v1, v1, v22

    .line 906
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "Rolling over usage stats complete. Took "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " milliseconds"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updatePackageMappingsLocked(Ljava/util/HashMap;)Z
    .locals 7

    .line 232
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 236
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 239
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v4, v4, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    sub-int/2addr v4, v1

    :goto_0
    if-ltz v4, :cond_2

    .line 240
    iget-object v5, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v5, v5, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    iget-object v5, v5, Lcom/android/server/usage/PackagesTokenData;->packagesToTokensMap:Landroid/util/ArrayMap;

    invoke-virtual {v5, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 241
    invoke-virtual {p1, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 242
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    .line 245
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    return v1

    .line 250
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    sub-int/2addr p1, v1

    :goto_1
    if-ltz p1, :cond_4

    .line 251
    iget-object v4, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    iget-object v4, v4, Lcom/android/server/usage/UsageStatsDatabase;->mPackagesTokenData:Lcom/android/server/usage/PackagesTokenData;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v4, v5, v2, v3}, Lcom/android/server/usage/PackagesTokenData;->removePackage(Ljava/lang/String;J)I

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    .line 254
    :cond_4
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDatabase:Lcom/android/server/usage/UsageStatsDatabase;

    invoke-virtual {p0}, Lcom/android/server/usage/UsageStatsDatabase;->writeMappingsLocked()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 256
    :catch_0
    const-string p0, "UsageStatsService"

    const-string p1, "Unable to write updated package mappings file on service initialization."

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final updateRolloverDeadline()V
    .locals 4

    .line 954
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mCurrentStats:[Lcom/android/server/usage/IntervalStats;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-wide v1, v1, Lcom/android/server/usage/IntervalStats;->beginTime:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usage/UnixCalendar;->setTimeInMillis(J)V

    .line 956
    iget-object v0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/usage/UnixCalendar;->addDays(I)V

    .line 957
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/usage/UserUsageStatsService;->mLogPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Rollover scheduled @ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/usage/UserUsageStatsService;->sDateFormat:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 958
    invoke-virtual {v2}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mDailyExpiryDate:Lcom/android/server/usage/UnixCalendar;

    .line 959
    invoke-virtual {p0}, Lcom/android/server/usage/UnixCalendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 957
    const-string v0, "UsageStatsService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public userStopped()V
    .locals 0

    .line 198
    invoke-virtual {p0}, Lcom/android/server/usage/UserUsageStatsService;->persistActiveStats()V

    .line 199
    iget-object p0, p0, Lcom/android/server/usage/UserUsageStatsService;->mCachedEarlyEvents:Landroid/util/SparseArrayMap;

    invoke-virtual {p0}, Landroid/util/SparseArrayMap;->clear()V

    return-void
.end method
