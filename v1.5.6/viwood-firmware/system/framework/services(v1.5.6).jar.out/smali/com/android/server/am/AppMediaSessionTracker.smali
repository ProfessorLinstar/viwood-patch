.class public final Lcom/android/server/am/AppMediaSessionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppMediaSessionTracker.java"


# instance fields
.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

.field public final mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;


# direct methods
.method public static synthetic $r8$lambda$QGd-MrvifawKK7V_H96hUv85JPk(Lcom/android/server/am/AppMediaSessionTracker;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->handleMediaSessionChanged(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBgMediaSessionMonitorEnabled(Lcom/android/server/am/AppMediaSessionTracker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->onBgMediaSessionMonitorEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrimDurations(Lcom/android/server/am/AppMediaSessionTracker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/am/AppMediaSessionTracker;->trimDurations()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    const/4 v0, 0x0

    .line 64
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppMediaSessionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 57
    new-instance p1, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppMediaSessionTracker;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 61
    new-instance p1, Lcom/android/internal/app/ProcessMap;

    invoke-direct {p1}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    .line 70
    new-instance p1, Landroid/os/HandlerExecutor;

    iget-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    invoke-direct {p1, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 71
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppMediaSessionTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method

.method private trimDurations()V
    .locals 4

    .line 160
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 161
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppMediaSessionTracker$AppMediaSessionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    return-void
.end method


# virtual methods
.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .locals 1

    .line 76
    new-instance v0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    invoke-direct {v0, p1, p2, p0}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-object v0
.end method

.method public createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;
    .locals 0

    .line 81
    new-instance p0, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-direct {p0, p1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;-><init>(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)V

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 50
    check-cast p1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 171
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 172
    const-string v0, "APP MEDIA SESSION TRACKER:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-super {p0, p1, p2}, Lcom/android/server/am/BaseAppStateEventsTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x4

    return p0
.end method

.method public final handleMediaSessionChanged(Ljava/util/List;)V
    .locals 14

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz p1, :cond_6

    .line 96
    iget-object v9, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 97
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 98
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/session/MediaController;

    .line 99
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    move-result-object v11

    .line 100
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    move-result-object v1

    invoke-virtual {v1}, Landroid/media/session/MediaSession$Token;->getUid()I

    move-result v12

    .line 101
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v1, v12, v11}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    if-nez v1, :cond_0

    .line 103
    invoke-virtual {p0, v12, v11}, Lcom/android/server/am/AppMediaSessionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    move-result-object v1

    .line 104
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2, v12, v11, v1}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_4

    .line 106
    :cond_0
    :goto_1
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-nez v2, :cond_1

    .line 107
    invoke-virtual {v1, v8, v4, v5}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 108
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x1

    const/4 v6, 0x1

    move v0, v2

    move-object v2, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v11, v12, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 121
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 122
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v10

    .line 123
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v11, v1

    :goto_2
    if-ltz v11, :cond_5

    .line 124
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArrayMap;

    .line 125
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v13, v1

    :goto_3
    if-ltz v13, :cond_4

    .line 126
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 127
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    .line 128
    invoke-virtual {v2, v3, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 130
    invoke-virtual {v1, v7, v4, v5}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 131
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v0, v2

    move-object v2, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    :cond_3
    add-int/lit8 v13, v13, -0x1

    goto :goto_3

    :cond_4
    add-int/lit8 v11, v11, -0x1

    goto :goto_2

    .line 136
    :cond_5
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    iget-object v0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mTmpMediaControllers:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->clear()V

    return-void

    .line 136
    :goto_4
    :try_start_1
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 139
    :cond_6
    iget-object v9, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 141
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    .line 142
    invoke-virtual {v1}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v10

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 144
    invoke-virtual {v10}, Landroid/util/SparseArray;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v11, v1

    :goto_5
    if-ltz v11, :cond_9

    .line 145
    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Landroid/util/ArrayMap;

    .line 146
    invoke-virtual {v12}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v8

    move v13, v1

    :goto_6
    if-ltz v13, :cond_8

    .line 147
    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;

    .line 148
    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->isActive()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 149
    invoke-virtual {v1, v7, v4, v5}, Lcom/android/server/am/BaseAppStateDurationsTracker$SimplePackageDurations;->addEvent(ZJ)V

    .line 150
    iget v2, v1, Lcom/android/server/am/BaseAppStateEvents;->mUid:I

    iget-object v1, v1, Lcom/android/server/am/BaseAppStateEvents;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v6, 0x1

    move v0, v2

    move-object v2, v1

    move v1, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/BaseAppStateTracker;->notifyListenersOnStateChange(ILjava/lang/String;ZJI)V

    goto :goto_7

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_7
    :goto_7
    add-int/lit8 v13, v13, -0x1

    goto :goto_6

    :cond_8
    add-int/lit8 v11, v11, -0x1

    goto :goto_5

    .line 155
    :cond_9
    monitor-exit v9

    return-void

    :goto_8
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public final onBgMediaSessionMonitorEnabled(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    iget-object v1, p0, Lcom/android/server/am/AppMediaSessionTracker;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    iget-object p0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void

    .line 89
    :cond_0
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getMediaSessionManager()Landroid/media/session/MediaSessionManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/am/AppMediaSessionTracker;->mSessionsChangedListener:Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    invoke-virtual {p1, p0}, Landroid/media/session/MediaSessionManager;->removeOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;)V

    return-void
.end method
