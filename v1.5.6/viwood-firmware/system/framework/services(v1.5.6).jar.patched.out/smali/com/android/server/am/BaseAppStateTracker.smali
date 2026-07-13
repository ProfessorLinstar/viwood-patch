.class public abstract Lcom/android/server/am/BaseAppStateTracker;
.super Ljava/lang/Object;
.source "BaseAppStateTracker.java"


# instance fields
.field public final mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

.field public final mBgHandler:Landroid/os/Handler;

.field public final mContext:Landroid/content/Context;

.field public final mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

.field public final mLock:Ljava/lang/Object;

.field public final mStateListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 1

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    .line 90
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mContext:Landroid/content/Context;

    .line 91
    iput-object p2, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 92
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mBgHandler:Landroid/os/Handler;

    .line 93
    invoke-virtual {p2}, Lcom/android/server/am/AppRestrictionController;->getLock()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    if-nez p3, :cond_0

    .line 95
    new-instance p1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    return-void

    .line 99
    :cond_0
    :try_start_0
    filled-new-array {p4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/BaseAppStateTracker$Injector;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 101
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unable to instantiate "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "ActivityManager"

    invoke-static {p3, p2, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    .line 103
    new-instance p1, Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-direct {p1}, Lcom/android/server/am/BaseAppStateTracker$Injector;-><init>()V

    :cond_1
    iput-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    return-void
.end method

.method public static stateIndexToType(I)I
    .locals 1

    .line 0
    const/4 v0, 0x1

    shl-int p0, v0, p0

    return p0
.end method

.method public static stateTypeToIndex(I)I
    .locals 0

    .line 108
    invoke-static {p0}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result p0

    return p0
.end method

.method public static stateTypesToString(I)Ljava/lang/String;
    .locals 4

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-eqz v1, :cond_6

    if-eqz v2, :cond_0

    const/16 v2, 0x7c

    .line 121
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v3, 0x2

    if-eq v1, v3, :cond_4

    const/4 v3, 0x4

    if-eq v1, v3, :cond_3

    const/16 v3, 0x8

    if-eq v1, v3, :cond_2

    const/16 v3, 0x10

    if-eq v1, v3, :cond_1

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ")]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 138
    :cond_1
    const-string v3, "PERMISSION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 135
    :cond_2
    const-string v3, "FGS_NOTIFICATION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 132
    :cond_3
    const-string v3, "FGS_LOCATION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 129
    :cond_4
    const-string v3, "FGS_MEDIA_PLAYBACK"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 126
    :cond_5
    const-string v3, "MEDIA_SESSION"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    not-int v1, v1

    and-int/2addr p0, v1

    .line 119
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v1

    goto :goto_0

    .line 145
    :cond_6
    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 272
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/BaseAppStatePolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public dumpAsProto(Landroid/util/proto/ProtoOutputStream;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getPolicy()Lcom/android/server/am/BaseAppStatePolicy;
    .locals 0

    .line 182
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    return-object p0
.end method

.method public getTrackerInfoForStatsd(I)[B
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public abstract getType()I
.end method

.method public notifyListenersOnStateChange(ILjava/lang/String;ZJI)V
    .locals 11

    .line 157
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 159
    iget-object v3, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/server/am/BaseAppStateTracker$StateListener;

    move v5, p1

    move-object v6, p2

    move v7, p3

    move-wide v8, p4

    move/from16 v10, p6

    invoke-interface/range {v4 .. v10}, Lcom/android/server/am/BaseAppStateTracker$StateListener;->onStateChange(ILjava/lang/String;ZJI)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 161
    :cond_0
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onBackgroundRestrictionChanged(ILjava/lang/String;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLockedBootCompleted()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPropertiesChanged(Ljava/lang/String;)V
    .locals 0

    .line 239
    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/BaseAppStatePolicy;->onPropertiesChanged(Ljava/lang/String;)V

    return-void
.end method

.method public onSystemReady()V
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->onSystemReady()V

    return-void
.end method

.method public onUidAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidGone(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidProcStateChanged(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUidRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserInteractionStarted(Ljava/lang/String;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserStarted(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onUserStopped(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public registerStateListener(Lcom/android/server/am/BaseAppStateTracker$StateListener;)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mStateListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 152
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
