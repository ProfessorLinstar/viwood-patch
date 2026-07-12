.class public final Lcom/android/server/am/AppBatteryExemptionTracker;
.super Lcom/android/server/am/BaseAppStateDurationsTracker;
.source "AppBatteryExemptionTracker.java"

# interfaces
.implements Lcom/android/server/am/BaseAppStateEvents$Factory;
.implements Lcom/android/server/am/BaseAppStateTracker$StateListener;


# instance fields
.field public mUidPackageStates:Lcom/android/server/am/UidProcessMap;


# direct methods
.method public static synthetic $r8$lambda$iWmJGcyLLkDvNkQor9pOnxtCJY0(Lcom/android/server/am/AppBatteryExemptionTracker;Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;->lambda$onSystemReady$0(Lcom/android/server/am/BaseAppStateTracker;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monTrackerEnabled(Lcom/android/server/am/AppBatteryExemptionTracker;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;->onTrackerEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtrimDurations(Lcom/android/server/am/AppBatteryExemptionTracker;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryExemptionTracker;->trimDurations()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;)V
    .locals 1

    const/4 v0, 0x0

    .line 78
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/server/am/AppBatteryExemptionTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V
    .locals 0

    .line 84
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/am/BaseAppStateDurationsTracker;-><init>(Landroid/content/Context;Lcom/android/server/am/AppRestrictionController;Ljava/lang/reflect/Constructor;Ljava/lang/Object;)V

    .line 74
    new-instance p1, Lcom/android/server/am/UidProcessMap;

    invoke-direct {p1}, Lcom/android/server/am/UidProcessMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    .line 85
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-direct {p2, p1, p0}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;-><init>(Lcom/android/server/am/BaseAppStateTracker$Injector;Lcom/android/server/am/AppBatteryExemptionTracker;)V

    invoke-virtual {p1, p2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->setPolicy(Lcom/android/server/am/BaseAppStatePolicy;)V

    return-void
.end method


# virtual methods
.method public createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
    .locals 1

    .line 103
    new-instance p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;

    const-string v0, "ActivityManager"

    invoke-direct {p2, p1, v0, p0}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;-><init>(ILjava/lang/String;Lcom/android/server/am/BaseAppStateEvents$MaxTrackingDurationConfig;)V

    return-object p2
.end method

.method public createAppStateEvents(Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;)Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;
    .locals 0

    .line 108
    new-instance p0, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    invoke-direct {p0, p1}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;-><init>(Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;)V

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 62
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryExemptionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic createAppStateEvents(Lcom/android/server/am/BaseAppStateEvents;)Lcom/android/server/am/BaseAppStateEvents;
    .locals 0

    .line 62
    check-cast p1, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryExemptionTracker;->createAppStateEvents(Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;)Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    move-result-object p0

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {p0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void
.end method

.method public getType()I
    .locals 0

    .line 0
    const/4 p0, 0x2

    return p0
.end method

.method public getUidBatteryExemptedUsageSince(IJJI)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;
    .locals 8

    .line 207
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-virtual {v0}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    .line 211
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 212
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v2, ""

    invoke-virtual {v0, p1, v2}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    if-nez v2, :cond_1

    .line 214
    sget-object p0, Lcom/android/server/am/AppBatteryTracker;->BATTERY_USAGE_NONE:Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    monitor-exit v1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_0

    :cond_1
    move-wide v3, p2

    move-wide v5, p4

    move v7, p6

    .line 216
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->getBatteryUsageSince(JJI)Landroid/util/Pair;

    move-result-object p2

    .line 217
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 218
    iget-object p3, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p3}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    .line 220
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 221
    invoke-virtual {p0, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    .line 222
    iget-object p1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    invoke-virtual {p1}, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;->mutate()Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->add(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    iget-object p1, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    invoke-virtual {p0, p1}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->subtract(Lcom/android/server/am/AppBatteryTracker$BatteryUsage;)Lcom/android/server/am/AppBatteryTracker$BatteryUsage;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/AppBatteryTracker$BatteryUsage;->unmutate()Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object p0

    return-object p0

    .line 224
    :cond_2
    iget-object p0, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    return-object p0

    .line 217
    :goto_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$onSystemReady$0(Lcom/android/server/am/BaseAppStateTracker;)V
    .locals 0

    .line 97
    invoke-virtual {p1, p0}, Lcom/android/server/am/BaseAppStateTracker;->registerStateListener(Lcom/android/server/am/BaseAppStateTracker$StateListener;)V

    return-void
.end method

.method public onStateChange(ILjava/lang/String;ZJI)V
    .locals 11

    move/from16 v0, p6

    .line 113
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-virtual {v1}, Lcom/android/server/am/BaseAppStatePolicy;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    .line 117
    invoke-virtual {v1, p1}, Lcom/android/server/am/AppRestrictionController;->getUidBatteryUsage(I)Lcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;

    move-result-object v6

    .line 118
    invoke-static {v0}, Lcom/android/server/am/BaseAppStateTracker;->stateTypeToIndex(I)I

    move-result v7

    .line 119
    iget-object v1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 120
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/UidProcessMap;->getMap()Landroid/util/SparseArray;

    move-result-object v2

    .line 121
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/ArrayMap;

    if-nez v3, :cond_1

    .line 123
    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 124
    invoke-virtual {v2, p1, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto/16 :goto_7

    .line 127
    :cond_1
    :goto_0
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    const/4 v5, 0x0

    if-ltz v4, :cond_2

    .line 129
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_1

    .line 131
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, p2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {v3, p2}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v4

    move p2, v5

    :goto_1
    const/4 v8, 0x1

    if-eqz p3, :cond_5

    .line 138
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v8

    :goto_2
    if-ltz v2, :cond_4

    .line 139
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    and-int/2addr v9, v0

    if-eqz v9, :cond_3

    move v5, v8

    goto :goto_3

    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    :cond_4
    :goto_3
    or-int/2addr p2, v0

    .line 145
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v3, v4, p2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    xor-int/lit8 p2, v5, 0x1

    goto :goto_6

    :cond_5
    not-int v9, v0

    and-int/2addr p2, v9

    .line 152
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v4, v9}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v8

    :goto_4
    if-ltz v9, :cond_7

    .line 155
    invoke-virtual {v3, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    and-int/2addr v10, v0

    if-eqz v10, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_4

    :cond_7
    move v5, v8

    :goto_5
    if-nez p2, :cond_8

    .line 166
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 167
    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result p2

    if-nez p2, :cond_8

    .line 168
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    :cond_8
    move p2, v5

    :goto_6
    if-eqz p2, :cond_a

    .line 173
    iget-object p2, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v0, ""

    invoke-virtual {p2, p1, v0}, Lcom/android/server/am/UidProcessMap;->get(ILjava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    if-nez p2, :cond_9

    .line 175
    const-string p2, ""

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/AppBatteryExemptionTracker;->createAppStateEvents(ILjava/lang/String;)Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;

    move-result-object p2

    .line 176
    iget-object p0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/am/UidProcessMap;->put(ILjava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_9
    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    .line 178
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppBatteryExemptionTracker$UidBatteryStates;->addEvent(ZJLcom/android/server/am/AppBatteryTracker$ImmutableBatteryUsage;I)V

    .line 180
    :cond_a
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onSystemReady()V
    .locals 2

    .line 95
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateTracker;->onSystemReady()V

    .line 96
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mAppRestrictionController:Lcom/android/server/am/AppRestrictionController;

    new-instance v1, Lcom/android/server/am/AppBatteryExemptionTracker$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/am/AppBatteryExemptionTracker$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/AppBatteryExemptionTracker;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRestrictionController;->forEachTracker(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onTrackerEnabled(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 194
    iget-object p1, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 195
    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateEventsTracker;->mPkgEvents:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 196
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 197
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method

.method public reset()V
    .locals 1

    .line 186
    invoke-super {p0}, Lcom/android/server/am/BaseAppStateDurationsTracker;->reset()V

    .line 187
    iget-object v0, p0, Lcom/android/server/am/BaseAppStateTracker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 188
    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/AppBatteryExemptionTracker;->mUidPackageStates:Lcom/android/server/am/UidProcessMap;

    invoke-virtual {p0}, Lcom/android/server/am/UidProcessMap;->clear()V

    .line 189
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final trimDurations()V
    .locals 4

    .line 382
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 383
    iget-object v2, p0, Lcom/android/server/am/BaseAppStateTracker;->mInjector:Lcom/android/server/am/BaseAppStateTracker$Injector;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateTracker$Injector;->getPolicy()Lcom/android/server/am/BaseAppStatePolicy;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/AppBatteryExemptionTracker$AppBatteryExemptionPolicy;

    invoke-virtual {v2}, Lcom/android/server/am/BaseAppStateEventsTracker$BaseAppStateEventsPolicy;->getMaxTrackingDuration()J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/BaseAppStateEventsTracker;->trim(J)V

    return-void
.end method
