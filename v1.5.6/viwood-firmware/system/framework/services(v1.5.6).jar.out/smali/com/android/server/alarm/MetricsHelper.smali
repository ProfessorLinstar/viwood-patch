.class public Lcom/android/server/alarm/MetricsHelper;
.super Ljava/lang/Object;
.source "MetricsHelper.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public static synthetic $r8$lambda$-APFzMgZ2OP73GrvFugmJhm4wys(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 79
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$1GoER9qkxWf1P5FzYapvM_RxbOk(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 80
    iget p0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4y91Y8420ZQA3DG9whZj5wxswbk(JLcom/android/server/alarm/Alarm;)Z
    .locals 4

    .line 77
    invoke-virtual {p2}, Lcom/android/server/alarm/Alarm;->getRequestedElapsed()J

    move-result-wide v0

    const-wide v2, 0x757b12c00L

    add-long/2addr p0, v2

    cmp-long p0, v0, p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DZKOH7e7jnNUbAvIFuGWW6CbwSg(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 75
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$DZvMFB7IntTkM0QsHfBpPSnjx8A(Lcom/android/server/alarm/Alarm;)Z
    .locals 4

    .line 78
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$HENNyH9_nyhcjjlGijG4NuYqp-U(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    .line 70
    invoke-virtual {p0}, Landroid/app/PendingIntent;->isForegroundService()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$Jl4RmvHh53TkP7OmznigXDAlQIc(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;ILjava/util/List;)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/MetricsHelper;->lambda$registerPuller$12(Ljava/util/function/Supplier;ILjava/util/List;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$KFVaejq7HIrOkrCzotXn7RWgAPI(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 72
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isActivity()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$RUEzFdpyx6ll9-R9YWn7CDmqV6I(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 66
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$VT9P0MxgEOOoFbwVgJ_Jd-rWWZE(Lcom/android/server/alarm/Alarm;)Z
    .locals 4

    .line 63
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$_y7lA7cWhlb0R6DVJOMnVZd28q4(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    return p0
.end method

.method public static synthetic $r8$lambda$xd3B0E1dkSLJejeNxnn2_In4gqo(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 68
    iget p0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic $r8$lambda$xknziif3X5qpXmfS8_07ivDyDHU(Lcom/android/server/alarm/Alarm;)Z
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isService()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    .line 48
    iput-object p2, p0, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method public static pushAlarmBatchDelivered(II[I[I[I)V
    .locals 6

    const/16 v0, 0x16f

    move v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 122
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(III[I[I[I)V

    return-void
.end method

.method public static pushAlarmScheduled(Lcom/android/server/alarm/Alarm;I)V
    .locals 11

    .line 107
    iget v1, p0, Lcom/android/server/alarm/Alarm;->uid:I

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_0

    move v0, v2

    move v2, v3

    move v6, v2

    goto :goto_0

    :cond_0
    move v0, v2

    move v6, v3

    :goto_0
    iget-boolean v3, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    iget v7, p0, Lcom/android/server/alarm/Alarm;->flags:I

    and-int/lit8 v7, v7, 0x4

    if-eqz v7, :cond_1

    move-wide v7, v4

    move v4, v6

    goto :goto_1

    :cond_1
    move-wide v7, v4

    move v4, v0

    :goto_1
    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz v5, :cond_2

    move v5, v6

    goto :goto_2

    :cond_2
    move v5, v0

    :goto_2
    iget-wide v9, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    cmp-long v7, v9, v7

    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move v6, v0

    :goto_3
    iget v0, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    .line 115
    invoke-static {v0}, Lcom/android/server/alarm/MetricsHelper;->reasonToStatsReason(I)I

    move-result v7

    iget p0, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 116
    invoke-static {p0}, Lcom/android/server/alarm/AlarmManagerService;->isRtc(I)Z

    move-result v8

    .line 117
    invoke-static {p1}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v9

    const/16 v0, 0x170

    .line 107
    invoke-static/range {v0 .. v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIZZZZZIZI)V

    return-void
.end method

.method public static reasonToStatsReason(I)I
    .locals 2

    .line 0
    const/4 v0, 0x1

    if-eqz p0, :cond_5

    const/4 v1, 0x2

    if-eq p0, v0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v1, :cond_3

    const/4 v1, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    return v0

    :cond_2
    return v1

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    return v0
.end method


# virtual methods
.method public final synthetic lambda$registerPuller$12(Ljava/util/function/Supplier;ILjava/util/List;)I
    .locals 17

    move/from16 v0, p2

    const/16 v1, 0x277a

    if-ne v0, v1, :cond_0

    .line 58
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    move-object/from16 v3, p0

    .line 59
    iget-object v14, v3, Lcom/android/server/alarm/MetricsHelper;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 60
    :try_start_0
    invoke-interface/range {p1 .. p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/alarm/AlarmStore;

    .line 62
    invoke-interface {v3}, Lcom/android/server/alarm/AlarmStore;->size()I

    move-result v4

    new-instance v5, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;

    invoke-direct {v5}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda1;-><init>()V

    .line 63
    invoke-interface {v3, v5}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v5

    new-instance v6, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda4;-><init>()V

    .line 64
    invoke-interface {v3, v6}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v6

    new-instance v7, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;

    invoke-direct {v7}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda5;-><init>()V

    .line 65
    invoke-interface {v3, v7}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v7

    new-instance v8, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;

    invoke-direct {v8}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda6;-><init>()V

    .line 67
    invoke-interface {v3, v8}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v8

    new-instance v9, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;

    invoke-direct {v9}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda7;-><init>()V

    .line 69
    invoke-interface {v3, v9}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v9

    new-instance v10, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;

    invoke-direct {v10}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda8;-><init>()V

    .line 71
    invoke-interface {v3, v10}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v10

    new-instance v11, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;

    invoke-direct {v11}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda9;-><init>()V

    .line 73
    invoke-interface {v3, v11}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v11

    new-instance v12, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;

    invoke-direct {v12}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda10;-><init>()V

    .line 75
    invoke-interface {v3, v12}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v12

    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;

    invoke-direct {v13, v1, v2}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda11;-><init>(J)V

    .line 76
    invoke-interface {v3, v13}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v1

    new-instance v2, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;

    invoke-direct {v2}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda12;-><init>()V

    .line 78
    invoke-interface {v3, v2}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v2

    new-instance v13, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;

    invoke-direct {v13}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda2;-><init>()V

    .line 79
    invoke-interface {v3, v13}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v13

    new-instance v15, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;

    invoke-direct {v15}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda3;-><init>()V

    .line 80
    invoke-interface {v3, v15}, Lcom/android/server/alarm/AlarmStore;->getCount(Ljava/util/function/Predicate;)I

    move-result v3

    move/from16 v16, v10

    move v10, v1

    move v1, v4

    move v4, v7

    move/from16 v7, v16

    move/from16 v16, v11

    move v11, v2

    move v2, v5

    move v5, v8

    move/from16 v8, v16

    move/from16 v16, v13

    move v13, v3

    move v3, v6

    move v6, v9

    move v9, v12

    move/from16 v12, v16

    .line 61
    invoke-static/range {v0 .. v13}, Lcom/android/internal/util/FrameworkStatsLog;->buildStatsEvent(IIIIIIIIIIIIII)Landroid/util/StatsEvent;

    move-result-object v0

    move-object/from16 v1, p3

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    .line 82
    monitor-exit v14

    return v0

    :catchall_0
    move-exception v0

    .line 83
    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 56
    :cond_0
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown tag"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public registerPuller(Ljava/util/function/Supplier;)V
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/server/alarm/MetricsHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/StatsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatsManager;

    .line 53
    sget-object v1, Lcom/android/internal/util/jobs/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p1}, Lcom/android/server/alarm/MetricsHelper$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/alarm/MetricsHelper;Ljava/util/function/Supplier;)V

    const/16 p0, 0x277a

    const/4 p1, 0x0

    invoke-virtual {v0, p0, p1, v1, v2}, Landroid/app/StatsManager;->setPullAtomCallback(ILandroid/app/StatsManager$PullAtomMetadata;Ljava/util/concurrent/Executor;Landroid/app/StatsManager$StatsPullAtomCallback;)V

    return-void
.end method
