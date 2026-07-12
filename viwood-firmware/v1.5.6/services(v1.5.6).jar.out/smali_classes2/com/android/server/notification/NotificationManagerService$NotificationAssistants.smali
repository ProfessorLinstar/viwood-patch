.class public Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;
.super Lcom/android/server/notification/ManagedServices;
.source "NotificationManagerService.java"


# instance fields
.field public mAdjustmentKeyDeniedPackages:Ljava/util/Map;

.field public mAllowedAdjustments:Ljava/util/Set;

.field public mAllowedClassificationTypes:Ljava/util/Set;

.field public mDefaultFromConfig:Landroid/content/ComponentName;

.field public mDeniedAdjustments:Ljava/util/Set;

.field public final mLock:Ljava/lang/Object;

.field public mNasUnsupported:Ljava/util/Map;

.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$5vL6yJfer7Zdx2EbcgYtsQLHhBA(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantExpansionChangedLocked$4(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ee7CaSIdQ6RZAi0O2_hzQW-5MTE(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantNotificationDirectReplyLocked$5(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ew6032arg6YYkbIZxTH_wu2-PH4(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 12685
    invoke-interface {p0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ITkgMmj84OpUm9GlVdhPrTueLi4(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onNotificationsSeenLocked$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$IaZN9bpRjPnBphyi8VMl-aCgDCc(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantActionClicked$7(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$JaP2g16OT1H17pGrOy_OzDklhPs(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelRevealed$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$aECXYnUCR0b92CL_vudQbpnY8y0(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$disallowAdjustmentType$12(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJbcAalcJTPB4ZWuiwdWGms0pP0(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantNotificationClicked$9(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cr2bUV1rlb8Y6czZsCx7TdSE7P8(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantVisibilityChangedLocked$3(Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$egp56sRA3DO2m7RoRfiB32DPib8(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantSnoozedLocked$8(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ktC3e8dmg0Hz37lGdFdzA1P73kQ(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$allowAdjustmentType$11(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qswTSiOPe4q3U5Q1-LevM3uWdzY(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$onPanelHidden$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rxiPtFLD6dJzRx_3jr0h1oCyUks(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->lambda$notifyAssistantSuggestedReplySent$6(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mnotifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetNasUnsupportedDefaults(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setNasUnsupportedDefaults(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V
    .locals 0

    .line 12205
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12206
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/server/notification/ManagedServices;-><init>(Landroid/content/Context;Ljava/lang/Object;Lcom/android/server/notification/ManagedServices$UserProfiles;Landroid/content/pm/IPackageManager;)V

    .line 12120
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    .line 12122
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    .line 12125
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedAdjustments:Ljava/util/Set;

    .line 12128
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDeniedAdjustments:Ljava/util/Set;

    .line 12131
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    .line 12136
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAdjustmentKeyDeniedPackages:Ljava/util/Map;

    const/4 p1, 0x0

    .line 12139
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    .line 12214
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    sget-object p1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

    invoke-static {p1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V
    .locals 3

    .line 12194
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12195
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 12196
    array-length v1, v0

    const/4 v2, 0x1

    if-le v1, v2, :cond_0

    .line 12197
    iget-object p1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    const-string v1, "More than one approved assistants"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 12198
    aget-object p1, v0, p1

    .line 12201
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ManagedServices;->addApprovedList(Ljava/lang/String;IZLjava/lang/String;)V

    return-void
.end method

.method public final addDefaultClassificationTypes()V
    .locals 2

    .line 12741
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12742
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12743
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENT_KEY_TYPES:[Ljava/lang/Integer;

    .line 12744
    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 12743
    invoke-interface {p0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12746
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

.method public allowAdjustmentType(Ljava/lang/String;)V
    .locals 4

    .line 12755
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDeniedAdjustments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12756
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12757
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda10;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 12759
    :cond_0
    const-string v0, "key_type"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 12760
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->addDefaultClassificationTypes()V

    :cond_1
    return-void
.end method

.method public allowRebindForParentUser()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 0

    .line 12233
    invoke-static {p1}, Landroid/service/notification/INotificationListener$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/notification/INotificationListener;

    move-result-object p0

    return-object p0
.end method

.method public checkType(Landroid/os/IInterface;)Z
    .locals 0

    .line 12238
    instance-of p0, p1, Landroid/service/notification/INotificationListener;

    return p0
.end method

.method public clearDefaults()V
    .locals 1

    .line 12714
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultComponents:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 12715
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mDefaultPackages:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->clear()V

    return-void
.end method

.method public disallowAdjustmentType(Ljava/lang/String;)V
    .locals 3

    .line 12770
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDeniedAdjustments:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 12771
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12772
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ensureFilters(Landroid/content/pm/ServiceInfo;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 0

    .line 12339
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 12344
    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x0

    .line 12345
    new-array p0, p0, [Ljava/lang/String;

    return-object p0

    :catchall_0
    move-exception p1

    .line 12344
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getAllowedAssistantAdjustments()Ljava/util/Set;
    .locals 3

    .line 12278
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12280
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    sget-object v2, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Set;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12281
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDeniedAdjustments:Ljava/util/Set;

    invoke-interface {v1, p0}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 12282
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 12288
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAllowedClassificationTypes()[I
    .locals 2

    .line 12314
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12316
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v1, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;

    invoke-direct {v1}, Lcom/android/server/audio/AudioService$$ExternalSyntheticLambda8;-><init>()V

    .line 12317
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->toArray()[I

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 12319
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getConfig()Lcom/android/server/notification/ManagedServices$Config;
    .locals 1

    .line 12220
    new-instance p0, Lcom/android/server/notification/ManagedServices$Config;

    invoke-direct {p0}, Lcom/android/server/notification/ManagedServices$Config;-><init>()V

    .line 12221
    const-string/jumbo v0, "notification assistant"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 12222
    const-string v0, "android.service.notification.NotificationAssistantService"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 12223
    const-string v0, "enabled_assistants"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->xmlTag:Ljava/lang/String;

    .line 12224
    const-string v0, "enabled_notification_assistant"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->secureSettingName:Ljava/lang/String;

    .line 12225
    const-string v0, "android.permission.BIND_NOTIFICATION_ASSISTANT_SERVICE"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 12226
    const-string v0, "android.settings.MANAGE_DEFAULT_APPS_SETTINGS"

    iput-object v0, p0, Lcom/android/server/notification/ManagedServices$Config;->settingsAction:Ljava/lang/String;

    const v0, 0x10406f2

    .line 12227
    iput v0, p0, Lcom/android/server/notification/ManagedServices$Config;->clientLabel:I

    return-object p0
.end method

.method public getDefaultFromConfig()Landroid/content/ComponentName;
    .locals 1

    .line 12177
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 12178
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    .line 12180
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    return-object p0
.end method

.method public getRequiredPermission()Ljava/lang/String;
    .locals 0

    .line 12274
    const-string p0, "android.permission.REQUEST_NOTIFICATION_ASSISTANT_SERVICE"

    return-object p0
.end method

.method public getUnsupportedAdjustments(I)Ljava/util/Set;
    .locals 1

    .line 12802
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    return-object p0
.end method

.method public hasUserSet(I)Z
    .locals 0

    .line 12423
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    if-eqz p0, :cond_0

    .line 12424
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAdjustmentAllowed(Ljava/lang/String;)Z
    .locals 2

    .line 12292
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12294
    :try_start_0
    sget-object v1, Lcom/android/server/notification/NotificationManagerService;->DEFAULT_ALLOWED_ADJUSTMENTS:[Ljava/lang/String;

    invoke-static {v1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDeniedAdjustments:Ljava/util/Set;

    .line 12295
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    .line 12299
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isAdjustmentAllowedForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 12350
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter p0

    .line 12355
    :try_start_0
    monitor-exit p0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public isAdjustmentKeyTypeAllowed(I)Z
    .locals 1

    .line 12304
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12306
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 12308
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isEnabled()Z
    .locals 0

    .line 12690
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final isVerboseLogEnabled()Z
    .locals 1

    .line 12736
    const-string/jumbo p0, "notification_assistant"

    const/4 v0, 0x2

    invoke-static {p0, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$allowAdjustmentType$11(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 12757
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public final synthetic lambda$disallowAdjustmentType$12(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 12772
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public final synthetic lambda$notifyAssistantActionClicked$7(Ljava/lang/String;Landroid/app/Notification$Action;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 12571
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onActionClicked(Ljava/lang/String;Landroid/app/Notification$Action;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12578
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (snoozed): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyAssistantExpansionChangedLocked$4(Ljava/lang/String;ZZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 12513
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onNotificationExpansionChanged(Ljava/lang/String;ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12515
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (expanded): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyAssistantNotificationClicked$9(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 12622
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationClicked(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12624
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to notify assistant (clicked): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyAssistantNotificationDirectReplyLocked$5(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 12530
    :try_start_0
    invoke-interface {p2, p1}, Landroid/service/notification/INotificationListener;->onNotificationDirectReply(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12532
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "unable to notify assistant (expanded): "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyAssistantSnoozedLocked$8(Ljava/lang/String;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 2

    .line 12596
    const-string/jumbo v0, "unable to notify assistant (snoozed): "

    .line 12600
    :try_start_0
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v1, p3}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 12602
    invoke-interface {p2, v1, p1}, Landroid/service/notification/INotificationListener;->onNotificationSnoozedUntilContext(Landroid/service/notification/IStatusBarNotificationHolder;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_0

    :catch_1
    move-exception p1

    goto :goto_1

    .line 12608
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 12606
    :goto_1
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method public final synthetic lambda$notifyAssistantSuggestedReplySent$6(Ljava/lang/String;Ljava/lang/CharSequence;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 12548
    :try_start_0
    invoke-interface {p4, p1, p2, p3}, Landroid/service/notification/INotificationListener;->onSuggestedReplySent(Ljava/lang/String;Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12555
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p3, "unable to notify assistant (snoozed): "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$notifyAssistantVisibilityChangedLocked$3(Ljava/lang/String;ZLandroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 12493
    :try_start_0
    invoke-interface {p3, p1, p2}, Landroid/service/notification/INotificationListener;->onNotificationVisibilityChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 12495
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p4, "unable to notify assistant (visible): "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$onNotificationsSeenLocked$0(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 0

    .line 12387
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    return-void
.end method

.method public final synthetic lambda$onPanelHidden$2(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3

    .line 12412
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12414
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onPanelHidden()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12416
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to notify assistant (panel hidden): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final synthetic lambda$onPanelRevealed$1(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 2

    .line 12397
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12399
    :try_start_0
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onPanelRevealed(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 12401
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify assistant (panel revealed): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public loadDefaultsFromConfig()V
    .locals 1

    const/4 v0, 0x1

    .line 12143
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig(Z)V

    return-void
.end method

.method public loadDefaultsFromConfig(Z)V
    .locals 6

    .line 12147
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 12148
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040230

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ":"

    .line 12150
    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 12148
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    const/4 v1, 0x0

    move v2, v1

    .line 12151
    :goto_0
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 12153
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 12154
    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 12156
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    .line 12158
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/high16 v5, 0xc0000

    .line 12161
    invoke-virtual {p0, v4, v5, v1}, Lcom/android/server/notification/ManagedServices;->queryPackageForServices(Ljava/lang/String;II)Landroid/util/ArraySet;

    move-result-object v4

    .line 12163
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz p1, :cond_2

    .line 12167
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/server/notification/ManagedServices;->addDefaultComponentOrPackage(Ljava/lang/String;)V

    goto :goto_1

    .line 12170
    :cond_2
    iput-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mDefaultFromConfig:Landroid/content/ComponentName;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public notifyAssistantActionClicked(Lcom/android/server/notification/NotificationRecord;Landroid/app/Notification$Action;Z)V
    .locals 3

    .line 12564
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12566
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12567
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Landroid/app/Notification$Action;Z)V

    const/4 p2, 0x1

    .line 12565
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantExpansionChangedLocked(Landroid/service/notification/StatusBarNotification;IZZ)V
    .locals 2

    .line 12506
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12507
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;ZZ)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantFeedbackReceived(Lcom/android/server/notification/NotificationRecord;Landroid/os/Bundle;)V
    .locals 7

    .line 12631
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 12633
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12634
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12635
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v4

    .line 12634
    invoke-virtual {v3, v0, v4, v2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12636
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 12638
    iget-object v3, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v3, Landroid/service/notification/INotificationListener;

    .line 12640
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v2}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v2

    .line 12641
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2, p2}, Landroid/service/notification/INotificationListener;->onNotificationFeedbackReceived(Ljava/lang/String;Landroid/service/notification/NotificationRankingUpdate;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 12643
    iget-object v4, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "unable to notify assistant (feedback): "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V
    .locals 8

    .line 12664
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 12668
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12670
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyAssistantLocked() called with: sbn = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "], sameUserOnly = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, "], callback = ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12674
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12675
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, p1, p2, v3}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz p3, :cond_1

    .line 12676
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-eqz v1, :cond_3

    .line 12678
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyAssistantLocked info="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " snbVisible="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-nez v4, :cond_4

    goto :goto_0

    .line 12683
    :cond_4
    iget-object v4, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v4, Landroid/service/notification/INotificationListener;

    .line 12684
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 12685
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v6, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda11;

    invoke-direct {v6, p4, v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda11;-><init>(Ljava/util/function/BiConsumer;Landroid/service/notification/INotificationListener;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_5
    return-void
.end method

.method public notifyAssistantNotificationClicked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 12615
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12617
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12618
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12616
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantNotificationDirectReplyLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 3

    .line 12523
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12525
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12526
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 12524
    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final notifyAssistantSnoozedLocked(Lcom/android/server/notification/NotificationRecord;Ljava/lang/String;)V
    .locals 2

    .line 12591
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 12592
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;)V

    const/4 p2, 0x1

    .line 12590
    invoke-virtual {p0, v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantSuggestedReplySent(Landroid/service/notification/StatusBarNotification;ILjava/lang/CharSequence;Z)V
    .locals 2

    .line 12541
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12542
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Ljava/lang/CharSequence;Z)V

    const/4 p3, 0x1

    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public notifyAssistantVisibilityChangedLocked(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 4

    .line 12483
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 12484
    sget-boolean v1, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v1, :cond_0

    .line 12485
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyAssistantVisibilityChangedLocked: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12488
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12489
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result p1

    new-instance v2, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda5;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Ljava/lang/String;Z)V

    const/4 p2, 0x1

    .line 12487
    invoke-virtual {p0, v1, p1, p2, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->notifyAssistantLocked(Landroid/service/notification/StatusBarNotification;IZLjava/util/function/BiConsumer;)V

    return-void
.end method

.method public final notifyCapabilitiesChanged(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 3

    .line 12911
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12913
    :try_start_0
    invoke-interface {v0}, Landroid/service/notification/INotificationListener;->onAllowedAdjustmentsChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12915
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unable to notify assistant (capabilities): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final notifySeen(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V
    .locals 2

    .line 12433
    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v0, Landroid/service/notification/INotificationListener;

    .line 12435
    :try_start_0
    invoke-interface {v0, p2}, Landroid/service/notification/INotificationListener;->onNotificationsSeen(Ljava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    .line 12437
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unable to notify assistant (seen): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final onNotificationEnqueuedLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 8

    .line 12443
    const-string/jumbo v0, "unable to notify assistant (enqueued): "

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isVerboseLogEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 12445
    iget-object v1, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onNotificationEnqueuedLocked() called with: r = ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 12447
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    .line 12449
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12450
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12451
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v5

    .line 12450
    invoke-virtual {v4, v1, v5, v3}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12452
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 12454
    new-instance v4, Lcom/android/server/notification/NotificationManagerService$TrimCache;

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v4, v5, v1}, Lcom/android/server/notification/NotificationManagerService$TrimCache;-><init>(Lcom/android/server/notification/NotificationManagerService;Landroid/service/notification/StatusBarNotification;)V

    .line 12455
    iget-object v5, v3, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v5, Landroid/service/notification/INotificationListener;

    .line 12456
    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$TrimCache;->ForListener(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 12457
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v6, v3}, Lcom/android/server/notification/NotificationManagerService;->makeRankingUpdateLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Landroid/service/notification/NotificationRankingUpdate;

    move-result-object v6

    .line 12464
    :try_start_0
    new-instance v7, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;

    invoke-direct {v7, v4}, Lcom/android/server/notification/NotificationManagerService$StatusBarNotificationHolder;-><init>(Landroid/service/notification/StatusBarNotification;)V

    .line 12467
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-interface {v5, v7, v4, v6}, Landroid/service/notification/INotificationListener;->onNotificationEnqueuedWithChannel(Landroid/service/notification/IStatusBarNotificationHolder;Landroid/app/NotificationChannel;Landroid/service/notification/NotificationRankingUpdate;)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :catch_1
    move-exception v4

    goto :goto_2

    .line 12473
    :goto_1
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 12471
    :goto_2
    iget-object v5, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onNotificationsSeenLocked(Ljava/util/ArrayList;)V
    .locals 9

    .line 12375
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12376
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12377
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :cond_1
    :goto_1
    if-ge v4, v3, :cond_2

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 12378
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 12379
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v8

    .line 12378
    invoke-virtual {v6, v7, v8, v1}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12380
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v6

    invoke-virtual {v1, v6}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSameUser(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 12382
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12386
    :cond_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 12387
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v4, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda8;

    invoke-direct {v4, p0, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onPanelHidden()V
    .locals 4

    .line 12410
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12411
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onPanelRevealed(I)V
    .locals 4

    .line 12395
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices;->getServices()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 12396
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0, v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onServiceAdded(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 0

    .line 12243
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->registerGuestService(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public onServiceRemovedLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V
    .locals 1

    .line 12255
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    iget-object v0, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/os/IInterface;I)V

    return-void
.end method

.method public onUserUnlocked(I)V
    .locals 3

    .line 12260
    iget-boolean v0, p0, Lcom/android/server/notification/ManagedServices;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onUserUnlocked u="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    .line 12263
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/ManagedServices;->rebindServices(ZI)V

    return-void
.end method

.method public readExtraAttributes(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 2

    .line 12830
    const-string/jumbo v0, "service_listing"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 12831
    const-string/jumbo p1, "unsupported_adjustments"

    invoke-static {p2, p1}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 12832
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter p2

    if-nez p1, :cond_0

    .line 12834
    :try_start_0
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setNasUnsupportedDefaults(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12836
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 12837
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    new-instance v0, Ljava/util/HashSet;

    const-string v1, ","

    .line 12838
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 12837
    invoke-interface {p0, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 12840
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p3, Ljava/util/HashSet;

    invoke-direct {p3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12843
    :goto_0
    monitor-exit p2

    return-void

    :goto_1
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method public readExtraTag(Ljava/lang/String;Lcom/android/modules/utils/TypedXmlPullParser;)V
    .locals 0

    .line 0
    return-void
.end method

.method public resetDefaultAssistantsIfNecessary()V
    .locals 5

    .line 12694
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getAliveUsers()Ljava/util/List;

    move-result-object v0

    .line 12695
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 12696
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 12697
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->hasUserSet(I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 12698
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->isNASMigrationDone(I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 12699
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultFromConfig()V

    .line 12700
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    .line 12702
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Approving default notification assistant for user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12703
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/notification/NotificationManagerService;->setDefaultAssistantForUser(I)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public resetDefaultFromConfig()V
    .locals 0

    .line 12709
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    .line 12710
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->loadDefaultsFromConfig()V

    return-void
.end method

.method public setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public setAdjustmentTypeSupportedState(ILjava/lang/String;Z)V
    .locals 3

    .line 12784
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    .line 12785
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    if-eqz p3, :cond_0

    .line 12787
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12789
    :cond_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12791
    :goto_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12792
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAssistantAdjustmentKeyTypeState(IZ)V
    .locals 1

    .line 12329
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    .line 12331
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 12333
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mAllowedClassificationTypes:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 12335
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final setNasUnsupportedDefaults(I)V
    .locals 3

    .line 12806
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 12807
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mDefaultUnsupportedAdjustments:[Ljava/lang/String;

    invoke-static {v2}, Ljava/util/List;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12808
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_0
    return-void
.end method

.method public setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z
    .locals 3

    if-eqz p4, :cond_1

    .line 12723
    invoke-virtual {p0, p2}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object v0

    .line 12724
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 12725
    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 12726
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    .line 12727
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1, v0, p2, v2, p5}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V

    .line 12731
    :cond_1
    invoke-super/range {p0 .. p5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    move-result p0

    return p0
.end method

.method public setUserSet(IZ)V
    .locals 0

    .line 12428
    iget-object p0, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public upgradeUserSet()V
    .locals 4

    .line 12185
    iget-object v0, p0, Lcom/android/server/notification/ManagedServices;->mApproved:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12186
    iget-object v2, p0, Lcom/android/server/notification/ManagedServices;->mUserSetServices:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArraySet;

    .line 12187
    iget-object v3, p0, Lcom/android/server/notification/ManagedServices;->mIsUserChanged:Landroid/util/ArrayMap;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_1

    :cond_0
    const/4 v2, 0x0

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    return-void
.end method

.method public writeExtraAttributes(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 4

    .line 12818
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 12819
    :try_start_0
    const-string/jumbo v1, "unsupported_adjustments"

    const-string v2, ","

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->mNasUnsupported:Ljava/util/Map;

    .line 12820
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    invoke-interface {p0, p2, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Iterable;

    .line 12819
    invoke-static {v2, p0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    invoke-interface {p1, p2, v1, p0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 12821
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public writeExtraXmlTags(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 0

    .line 0
    return-void
.end method
