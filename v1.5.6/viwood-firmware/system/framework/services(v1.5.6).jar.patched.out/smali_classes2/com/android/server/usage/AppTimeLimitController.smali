.class public Lcom/android/server/usage/AppTimeLimitController;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# static fields
.field public static final ONE:Ljava/lang/Integer;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

.field public mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

.field public final mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

.field public final mObserverApps:Landroid/util/SparseArray;

.field public final mUsers:Landroid/util/SparseArray;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$MyHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListener(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usage/AppTimeLimitController;)Lcom/android/server/usage/AppTimeLimitController$Lock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mcancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usage/AppTimeLimitController;->postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mpostInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/Integer;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    sput-object v0, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;Landroid/os/Looper;)V
    .locals 2

    .line 587
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$Lock;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/usage/AppTimeLimitController$Lock;-><init>(Lcom/android/server/usage/AppTimeLimitController-IA;)V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    .line 76
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 84
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    .line 588
    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mContext:Landroid/content/Context;

    .line 589
    new-instance p1, Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    invoke-direct {p1, p0, p3}, Lcom/android/server/usage/AppTimeLimitController$MyHandler;-><init>(Lcom/android/server/usage/AppTimeLimitController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    .line 590
    iput-object p2, p0, Lcom/android/server/usage/AppTimeLimitController;->mListener:Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;

    return-void
.end method


# virtual methods
.method public addAppUsageLimitObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;I)V
    .locals 12

    .line 862
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_3

    .line 865
    iget-object v11, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v11

    move/from16 v0, p9

    .line 866
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    .line 867
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    .line 868
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v0, :cond_0

    .line 871
    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_2

    .line 874
    :cond_0
    :goto_0
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v5, v0

    .line 875
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageLimitObserverPerUidLimit()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_2

    .line 879
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    cmp-long v5, p6, p4

    if-ltz v5, :cond_1

    const/4 v5, 0x0

    move-object v10, v5

    move-object v1, p0

    move v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-object v5, p3

    goto :goto_1

    :cond_1
    move-object/from16 v10, p8

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    .line 880
    :goto_1
    invoke-direct/range {v0 .. v10}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JJLandroid/app/PendingIntent;)V

    .line 881
    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 887
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 888
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 889
    monitor-exit v11

    return-void

    .line 876
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 889
    :goto_2
    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 863
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addAppUsageObserver(II[Ljava/lang/String;JLandroid/app/PendingIntent;I)V
    .locals 10

    .line 753
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_2

    .line 756
    iget-object v9, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v9

    move/from16 v0, p7

    .line 757
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    .line 758
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    .line 759
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    if-eqz v0, :cond_0

    .line 762
    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 765
    :cond_0
    :goto_0
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v5, v0

    .line 766
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getAppUsageObserverPerUidLimit()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    .line 770
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    move-object v1, p0

    move v4, p2

    move-object v5, p3

    move-wide v6, p4

    move-object/from16 v8, p6

    invoke-direct/range {v0 .. v8}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;)V

    .line 772
    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 778
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 779
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 780
    monitor-exit v9

    return-void

    .line 767
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 780
    :goto_1
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 754
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addUsageSessionObserver(II[Ljava/lang/String;JJLandroid/app/PendingIntent;Landroid/app/PendingIntent;I)V
    .locals 13

    .line 810
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v2

    cmp-long v0, p4, v2

    if-ltz v0, :cond_2

    .line 813
    iget-object v12, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v12

    move/from16 v0, p10

    .line 814
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object v2

    .line 815
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object v3

    .line 816
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    if-eqz v0, :cond_0

    .line 819
    invoke-virtual {v0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 822
    :cond_0
    :goto_0
    iget-object v0, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    int-to-long v5, v0

    .line 823
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getUsageSessionObserverPerUidLimit()J

    move-result-wide v7

    cmp-long v0, v5, v7

    if-gez v0, :cond_1

    .line 827
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    move-object v1, p0

    move v4, p2

    move-object/from16 v5, p3

    move-wide/from16 v6, p4

    move-wide/from16 v9, p6

    move-object/from16 v8, p8

    move-object/from16 v11, p9

    invoke-direct/range {v0 .. v11}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;-><init>(Lcom/android/server/usage/AppTimeLimitController;Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;I[Ljava/lang/String;JLandroid/app/PendingIntent;JLandroid/app/PendingIntent;)V

    .line 829
    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {v3, p2, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 831
    invoke-virtual {v2, v0}, Lcom/android/server/usage/AppTimeLimitController$UserData;->addUsageGroup(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V

    .line 832
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v3

    invoke-virtual {p0, v2, v0, v3, v4}, Lcom/android/server/usage/AppTimeLimitController;->noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V

    .line 833
    monitor-exit v12

    return-void

    .line 824
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many app usage observers added by uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 833
    :goto_1
    monitor-exit v12
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 811
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Time limit must be >= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getMinTimeLimit()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final cancelCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 1

    .line 1012
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    return-void
.end method

.method public dump([Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    move v1, v0

    .line 1017
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_3

    .line 1018
    aget-object v2, p1, v1

    .line 1019
    const-string v3, "actives"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1020
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v2

    .line 1021
    :try_start_0
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    move v1, v0

    :goto_1
    if-ge v1, p1, :cond_1

    .line 1023
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    .line 1024
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    iget-object v3, v3, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    .line 1025
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v4

    move v5, v0

    :goto_2
    if-ge v5, v4, :cond_0

    .line 1027
    invoke-virtual {v3, v5}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1030
    :cond_1
    monitor-exit v2

    return-void

    :goto_3
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1036
    :cond_3
    iget-object p1, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p1

    .line 1037
    :try_start_1
    const-string v1, "\n  App Time Limits"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    move v2, v0

    :goto_4
    if-ge v2, v1, :cond_4

    .line 1040
    const-string v3, "   User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1041
    iget-object v3, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UserData;

    invoke-virtual {v3, p2}, Lcom/android/server/usage/AppTimeLimitController$UserData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :catchall_1
    move-exception p0

    goto :goto_6

    .line 1043
    :cond_4
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1044
    iget-object v1, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    :goto_5
    if-ge v0, v1, :cond_5

    .line 1046
    const-string v2, "   Observer App "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1047
    iget-object v2, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    invoke-virtual {v2, p2}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->dump(Ljava/io/PrintWriter;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1049
    :cond_5
    monitor-exit p1

    return-void

    :goto_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0
.end method

.method public getAlarmManager()Landroid/app/AlarmManager;
    .locals 2

    .line 596
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 597
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AlarmManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    .line 599
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mAlarmManager:Landroid/app/AlarmManager;

    return-object p0
.end method

.method public getAppUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;
    .locals 1

    .line 634
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 635
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 636
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppUsageLimit(Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;
    .locals 8

    .line 663
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 664
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p0

    const/4 p2, 0x0

    if-nez p0, :cond_0

    .line 666
    monitor-exit v0

    return-object p2

    :catchall_0
    move-exception p0

    goto/16 :goto_5

    .line 669
    :cond_0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_8

    .line 670
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_4

    .line 674
    :cond_1
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 675
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 676
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    instance-of v4, v4, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz v4, :cond_3

    .line 677
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    move v5, v2

    .line 678
    :goto_1
    iget-object v6, v4, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length v7, v6

    if-ge v5, v7, :cond_3

    .line 679
    aget-object v6, v6, v5

    invoke-virtual {v6, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 680
    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 686
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 687
    monitor-exit v0

    return-object p2

    .line 690
    :cond_5
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    const/4 p1, 0x1

    .line 691
    :goto_3
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result p2

    if-ge p1, p2, :cond_7

    .line 692
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    .line 693
    invoke-virtual {p2}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v2

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-gez v2, :cond_6

    move-object p0, p2

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 697
    :cond_7
    new-instance p1, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;

    .line 698
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getTotaUsageLimit()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->getUsageRemaining()J

    move-result-wide v3

    invoke-direct {p1, v1, v2, v3, v4}, Landroid/app/usage/UsageStatsManagerInternal$AppUsageLimitData;-><init>(JJ)V

    monitor-exit v0

    return-object p1

    .line 671
    :cond_8
    :goto_4
    monitor-exit v0

    return-object p2

    .line 699
    :goto_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppUsageLimitGroup(II)Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;
    .locals 1

    .line 649
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 650
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 652
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAppUsageLimitObserverPerUidLimit()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getAppUsageObserverPerUidLimit()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public getElapsedRealtime()J
    .locals 2

    .line 605
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinTimeLimit()J
    .locals 2

    .line 0
    const-wide/32 v0, 0xea60

    return-wide v0
.end method

.method public final getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;
    .locals 2

    .line 716
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    if-nez v0, :cond_0

    .line 718
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController-IA;)V

    .line 719
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mObserverApps:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public final getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;
    .locals 2

    .line 705
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    if-nez v0, :cond_0

    .line 707
    new-instance v0, Lcom/android/server/usage/AppTimeLimitController$UserData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/server/usage/AppTimeLimitController$UserData;-><init>(Lcom/android/server/usage/AppTimeLimitController;ILcom/android/server/usage/AppTimeLimitController-IA;)V

    .line 708
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public getSessionUsageGroup(II)Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;
    .locals 1

    .line 641
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 642
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 644
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getUsageSessionObserverPerUidLimit()J
    .locals 2

    .line 0
    const-wide/16 v0, 0x3e8

    return-wide v0
.end method

.method public final noteActiveLocked(Lcom/android/server/usage/AppTimeLimitController$UserData;Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 3

    .line 738
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    array-length p0, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 740
    iget-object v1, p1, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->mObserved:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    invoke-virtual {p2, p3, p4}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(J)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;I)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 955
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/server/usage/AppTimeLimitController;->noteUsageStart(Ljava/lang/String;IJ)V

    return-void
.end method

.method public noteUsageStart(Ljava/lang/String;IJ)V
    .locals 6

    .line 920
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 921
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 924
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 926
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_0

    .line 929
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 930
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 933
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    .line 935
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {p0, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 937
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    .line 938
    monitor-exit v0

    return-void

    .line 940
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 942
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    sub-long v4, v1, p3

    .line 943
    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStart(JJ)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 945
    :cond_2
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public noteUsageStop(Ljava/lang/String;I)V
    .locals 4

    .line 965
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 966
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateUserDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$UserData;

    move-result-object p2

    .line 969
    iget-object v1, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_3

    .line 975
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 976
    sget-object v3, Lcom/android/server/usage/AppTimeLimitController;->ONE:Ljava/lang/Integer;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 978
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 979
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 982
    :cond_0
    iget-object v2, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->currentlyActive:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 983
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController;->getElapsedRealtime()J

    move-result-wide v1

    .line 986
    iget-object p0, p2, Lcom/android/server/usage/AppTimeLimitController$UserData;->observedMap:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_1

    .line 987
    monitor-exit v0

    return-void

    .line 989
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 991
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;

    .line 992
    invoke-virtual {v3, v1, v2}, Lcom/android/server/usage/AppTimeLimitController$UsageGroup;->noteUsageStop(J)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 995
    :cond_2
    monitor-exit v0

    return-void

    .line 971
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to stop usage for "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", not in use"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 995
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUserRemoved(I)V
    .locals 1

    .line 726
    iget-object v0, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter v0

    .line 728
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mUsers:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 729
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final postCheckTimeoutLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;J)V
    .locals 1

    .line 1006
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x1

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final postInformLimitReachedListenerLocked(Lcom/android/server/usage/AppTimeLimitController$UsageGroup;)V
    .locals 1

    .line 1000
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController;->mHandler:Lcom/android/server/usage/AppTimeLimitController$MyHandler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public removeAppUsageLimitObserver(III)V
    .locals 0

    .line 901
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 902
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 903
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageLimitGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;

    if-eqz p0, :cond_0

    .line 906
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageLimitGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 908
    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeAppUsageObserver(III)V
    .locals 0

    .line 791
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 792
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 793
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->appUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;

    if-eqz p0, :cond_0

    .line 796
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$AppUsageGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 798
    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeUsageSessionObserver(III)V
    .locals 0

    .line 845
    iget-object p3, p0, Lcom/android/server/usage/AppTimeLimitController;->mLock:Lcom/android/server/usage/AppTimeLimitController$Lock;

    monitor-enter p3

    .line 846
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/usage/AppTimeLimitController;->getOrCreateObserverAppDataLocked(I)Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;

    move-result-object p0

    .line 847
    iget-object p0, p0, Lcom/android/server/usage/AppTimeLimitController$ObserverAppData;->sessionUsageGroups:Landroid/util/SparseArray;

    invoke-virtual {p0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;

    if-eqz p0, :cond_0

    .line 850
    invoke-virtual {p0}, Lcom/android/server/usage/AppTimeLimitController$SessionUsageGroup;->remove()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 852
    :cond_0
    :goto_0
    monitor-exit p3

    return-void

    :goto_1
    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
