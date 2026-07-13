.class public Lcom/android/server/notification/NotificationManagerService$12;
.super Landroid/app/INotificationManager$Stub;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public static synthetic $r8$lambda$-bEcbv2XyMra1ibE6xDuYV909N4(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$getActiveNotificationsWithAttribution$0(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$9e1Zv0Eb_mTwUeFMV5TGSei42ck(I)Ljava/lang/Boolean;
    .locals 2

    const-wide/32 v0, 0x1265ee9d

    .line 6493
    invoke-static {v0, v1, p0}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$AiVXW_Mz68xRVFQJEQCJ4W9_HZQ(Lcom/android/server/notification/NotificationManagerService$12;Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$requestInterruptionFilterFromListener$1(Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$yqPQmPTqL0XGRX7x2Rn5ugf6JAE(Lcom/android/server/notification/NotificationManagerService$12;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->lambda$validateAutomaticZenRule$2(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 3968
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/app/INotificationManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public addAutomaticZenRule(Landroid/app/AutomaticZenRule;Ljava/lang/String;Z)Ljava/lang/String;
    .locals 9

    const/4 v0, 0x0

    .line 6203
    invoke-virtual {p0, v0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->validateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    .line 6204
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6205
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 6206
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getInterruptionFilter()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6207
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ZenPolicy is only applicable to INTERRUPTION_FILTER_PRIORITY filters"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6210
    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string v1, "addAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6211
    invoke-virtual {p0, p3, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6212
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 6217
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingAppIdSystem()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6218
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 6219
    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    :cond_2
    move-object v4, p2

    .line 6223
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6224
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v6

    const-string v7, "addAutomaticZenRule"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v5, p1

    .line 6223
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->addAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final addToListIfNeeded(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;I)V
    .locals 3

    if-nez p1, :cond_0

    goto :goto_0

    .line 6046
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    .line 6047
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getNotificationType()I

    move-result v2

    invoke-virtual {v1, v0, v2, p2}, Lcom/android/server/notification/NotificationManagerService;->isVisibleToListener(Landroid/service/notification/StatusBarNotification;ILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_1

    :goto_0
    return-void

    .line 6048
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasSensitiveContent(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p1

    iget p2, p2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->uid:I

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isUidTrusted(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6049
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->redactStatusBarNotification(Landroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p3, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void

    :cond_2
    if-nez p4, :cond_3

    goto :goto_1

    .line 6051
    :cond_3
    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->cloneLight()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    :goto_1
    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public allowAssistantAdjustment(Ljava/lang/String;)V
    .locals 1

    .line 4463
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4464
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->allowAdjustmentType(Ljava/lang/String;)V

    .line 4465
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4472
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public appCanBePromoted(Ljava/lang/String;I)Z
    .locals 1

    .line 4590
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4594
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canBePromoted(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public applyAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .locals 1

    .line 7046
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7047
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7048
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    return-void
.end method

.method public applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V
    .locals 9

    .line 7056
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7058
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7059
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7060
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/Adjustment;

    .line 7061
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    if-eqz v5, :cond_0

    .line 7062
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v7

    invoke-virtual {v6, p1, v7}, Lcom/android/server/notification/ManagedServices;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 7063
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v7, 0x1

    invoke-static {v6, v5, v4, v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mapplyAdjustmentLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V

    .line 7067
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "key_importance"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7068
    invoke-virtual {v4}, Landroid/service/notification/Adjustment;->getSignals()Landroid/os/Bundle;

    move-result-object v4

    const-string v6, "key_importance"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_1

    .line 7070
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lcom/android/server/notification/NotificationManagerService$12;->cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 7072
    :cond_1
    invoke-virtual {v5, v7}, Lcom/android/server/notification/NotificationRecord;->setPendingLogUpdate(Z)V

    move v3, v7

    goto :goto_0

    .line 7077
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 7079
    :try_start_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p0}, Lcom/android/server/notification/RankingHandler;->requestSort()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 7082
    :cond_3
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 7077
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 7082
    :goto_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7083
    throw p0
.end method

.method public applyEnqueuedAdjustmentFromAssistant(Landroid/service/notification/INotificationListener;Landroid/service/notification/Adjustment;)V
    .locals 10

    .line 7015
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7017
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7018
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7019
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    if-ge v5, v3, :cond_1

    .line 7021
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 7022
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7023
    invoke-virtual {p2}, Landroid/service/notification/Adjustment;->getUser()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 7024
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUserId()I

    move-result v9

    invoke-virtual {v8, p1, v9}, Lcom/android/server/notification/ManagedServices;->isSameUser(Landroid/os/IInterface;I)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 7025
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6, v7, p2, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mapplyAdjustmentLocked(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/NotificationRecord;Landroid/service/notification/Adjustment;Z)V

    .line 7026
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->applyAdjustments()V

    .line 7030
    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->calculateImportance()V

    const/4 v6, 0x1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    if-nez v6, :cond_2

    .line 7035
    invoke-static {p2}, Ljava/util/List;->of(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->applyAdjustmentsFromAssistant(Landroid/service/notification/INotificationListener;Ljava/util/List;)V

    .line 7037
    :cond_2
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 7037
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 7039
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7040
    throw p0
.end method

.method public applyRestore([BI)V
    .locals 5

    .line 6651
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6652
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const/4 v1, 0x0

    const-string v2, "NotificationService"

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "applyRestore u="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " payload="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    .line 6653
    new-instance v3, Ljava/lang/String;

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v3, p1, v4}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto :goto_0

    :cond_0
    move-object v3, v1

    :goto_0
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6652
    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    .line 6655
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "applyRestore: no payload to restore for user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6658
    :cond_2
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 6660
    :try_start_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {p1, v0, v3, p2, v1}, Lcom/android/server/notification/NotificationManagerService;->readPolicyXml(Ljava/io/InputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 6661
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 6663
    const-string p1, "applyRestore: error reading payload"

    invoke-static {v2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public areBubblesAllowed(Ljava/lang/String;)Z
    .locals 1

    .line 4350
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getBubblePreferenceForPackage(Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    return p1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public areBubblesEnabled(Landroid/os/UserHandle;)Z
    .locals 3

    .line 4359
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4360
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "areBubblesEnabled for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4362
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4360
    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4364
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PreferencesHelper;->bubblesEnabled(Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public areChannelsBypassingDnd()Z
    .locals 1

    .line 5257
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5258
    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->hasPriorityChannels()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public areNotificationsEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 4326
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    .locals 2

    .line 4334
    const-string v0, "Caller not system or systemui or same package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4336
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result p1

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 4337
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canNotifyAsPackage for uid "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4342
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mareNotificationsEnabledForPackageInt(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result p0

    return p0
.end method

.method public canBePromoted(Ljava/lang/String;)Z
    .locals 1

    .line 4600
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4604
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->canBePromoted(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final canManageGlobalZenPolicy(Ljava/lang/String;I)Z
    .locals 2

    .line 6492
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6495
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6496
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6497
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    const-string v0, "android.app.role.COMPANION_DEVICE_WATCH"

    const-string v1, "android.app.role.SYSTEM_AUTOMOTIVE_PROJECTION"

    .line 6498
    invoke-static {v0, v1}, Ljava/util/Set;->of(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    .line 6497
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhasCompanionDevice(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;ILjava/util/Set;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 4

    .line 4736
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4737
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4738
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 4739
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    if-eq v1, p3, :cond_0

    .line 4740
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canNotifyAsPackage for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4744
    :cond_0
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p0, 0x1

    return p0

    .line 4748
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    const-wide/32 v2, 0xc0000

    .line 4749
    invoke-interface {v1, p2, v2, v3, p3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object p3

    if-eqz p3, :cond_2

    .line 4753
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, p2, p3, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->isDelegateAllowed(Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method public canShowBadge(Ljava/lang/String;I)Z
    .locals 1

    .line 4449
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4450
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->canShowBadge(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public canUseFullScreenIntent(Landroid/content/AttributionSource;)Z
    .locals 5

    .line 4764
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4765
    invoke-virtual {p1}, Landroid/content/AttributionSource;->getUid()I

    move-result v1

    .line 4766
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4767
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;II)V

    const/4 v1, 0x0

    .line 4771
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v0, v4, v2}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4777
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckUseFullScreenIntentPermission(Lcom/android/server/notification/NotificationManagerService;Landroid/content/AttributionSource;Landroid/content/pm/ApplicationInfo;Z)Z

    move-result p0

    return p0

    :catch_0
    move-exception p0

    .line 4774
    const-string p1, "NotificationService"

    const-string v0, "Failed to getApplicationInfo() in canUseFullScreenIntent()"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public cancelAllNotifications(Ljava/lang/String;I)V
    .locals 10

    .line 4248
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4250
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4251
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "cancelAllNotifications"

    const/4 v4, 0x1

    move-object v7, p1

    move v3, p2

    .line 4250
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 4255
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const v7, 0x18040

    const/16 v9, 0x9

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 4259
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I

    move-result v1

    .line 4262
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2

    .line 4263
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v3, v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V

    .line 4265
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {v0, v3, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V

    .line 4267
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public cancelNotificationFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 5987
    const-string p0, "NotificationService"

    const-string p1, "Ignoring deprecated cancelNotification(pkg, tag, id) use cancelNotification(key) instead."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;III)V
    .locals 12

    .line 5849
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    const/4 v8, 0x1

    const v7, 0x10002

    move-object v11, p1

    move v1, p2

    move v2, p3

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v9, p7

    move/from16 v10, p8

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->cancelNotification(IILjava/lang/String;Ljava/lang/String;IIIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    return-void
.end method

.method public cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 11

    .line 4235
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const v0, 0x8440

    :goto_0
    const/high16 v1, 0x10000

    or-int v10, v0, v1

    .line 4242
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v3, p1

    move-object v4, p2

    move-object v7, p3

    move v8, p4

    move/from16 v9, p5

    invoke-virtual/range {v2 .. v10}, Lcom/android/server/notification/NotificationManagerService;->cancelNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;III)V

    return-void
.end method

.method public cancelNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v9, p2

    .line 5664
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5665
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 5666
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 5672
    :try_start_0
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5673
    :try_start_1
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v5

    .line 5674
    iget-object v6, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v12

    .line 5675
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 5677
    :try_start_2
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v12}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I

    move-result v8

    .line 5681
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v13, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 5685
    :try_start_3
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, v1}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x16

    goto :goto_0

    :cond_0
    const/16 v1, 0xa

    :goto_0
    if-eqz v9, :cond_6

    .line 5690
    array-length v4, v9

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_1
    if-ge v6, v4, :cond_5

    .line 5692
    iget-object v8, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v8, v8, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v14, v9, v6

    invoke-virtual {v8, v14}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/notification/NotificationRecord;

    if-nez v8, :cond_1

    goto :goto_2

    .line 5694
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v14

    invoke-virtual {v14}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v14

    .line 5695
    iget v15, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v14, v15, :cond_2

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v15}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v15

    .line 5696
    invoke-virtual {v15, v14}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v15

    if-nez v15, :cond_2

    :goto_2
    move v8, v1

    move v14, v4

    move-object v1, v5

    move v15, v6

    goto :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    :cond_2
    if-nez v7, :cond_4

    .line 5699
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v15, v1

    .line 5700
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getUpdateTimeMs()J

    move-result-wide v0

    invoke-static {v7, v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNotificationRecent(Lcom/android/server/notification/NotificationManagerService;J)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_3

    :cond_3
    const/16 v16, 0x0

    goto :goto_4

    :cond_4
    move v15, v1

    :goto_3
    const/16 v16, 0x1

    .line 5702
    :goto_4
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 5703
    invoke-virtual {v8}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v7

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    move v8, v15

    move v15, v6

    move v6, v7

    move v7, v14

    move v14, v4

    move-object v4, v0

    move-object/from16 v0, p0

    .line 5701
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService$12;->cancelNotificationFromListenerLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IILjava/lang/String;Ljava/lang/String;III)V

    move/from16 v7, v16

    :goto_5
    add-int/lit8 v6, v15, 0x1

    move-object v5, v1

    move v1, v8

    move v4, v14

    goto :goto_1

    :cond_5
    move-object v9, v0

    goto :goto_8

    :cond_6
    move-object v1, v5

    .line 5706
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x0

    :cond_7
    if-ge v6, v5, :cond_8

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/notification/NotificationRecord;

    .line 5707
    iget-object v9, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7}, Lcom/android/server/notification/NotificationRecord;->getUpdateTimeMs()J

    move-result-wide v14

    invoke-static {v9, v14, v15}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNotificationRecent(Lcom/android/server/notification/NotificationManagerService;J)Z

    move-result v7

    if-eqz v7, :cond_7

    const/4 v14, 0x1

    :goto_6
    move-object v4, v0

    goto :goto_7

    :cond_8
    const/4 v14, 0x0

    goto :goto_6

    .line 5713
    :goto_7
    iget-object v0, v4, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move v5, v2

    move v2, v3

    iget v3, v1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    .line 5714
    invoke-virtual {v1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->supportsProfiles()Z

    move-result v6

    const v7, 0x10022

    const/16 v4, 0xb

    move v9, v5

    move-object v5, v1

    move v1, v9

    move-object/from16 v9, p0

    .line 5713
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/NotificationManagerService;->cancelAllLocked(IIIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;ZI)V

    move v2, v1

    .line 5719
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-static {v0, v1, v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V

    .line 5721
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-static {v0, v1, v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mmaybeNotifySystemUiListenerLifetimeExtendedListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/List;I)V

    move v7, v14

    .line 5729
    :goto_8
    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v7, :cond_9

    .line 5731
    :try_start_4
    iget-object v0, v9, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v1, 0x8e

    move-object v3, v12

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_9

    :catchall_1
    move-exception v0

    goto :goto_b

    .line 5735
    :cond_9
    :goto_9
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5729
    :goto_a
    :try_start_5
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception v0

    .line 5675
    :try_start_7
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 5735
    :goto_b
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5736
    throw v0
.end method

.method public cancelToast(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    .line 4149
    const-string v0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cancelToast pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_3

    .line 4156
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4157
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4159
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_1

    .line 4161
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService;->cancelToastLocked(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4163
    :cond_1
    const-string p0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toast already cancelled. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4167
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4169
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 4167
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4168
    throw p0

    .line 4169
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0

    .line 4152
    :cond_2
    :goto_3
    const-string p0, "NotificationService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Not cancelling notification. pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final checkCanEnqueueToast(Ljava/lang/String;IIZZ)Z
    .locals 8

    .line 4109
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->isPackagePaused(Ljava/lang/String;)Z

    move-result v0

    .line 4110
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v1

    .line 4114
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 4116
    :try_start_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmActivityManager(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManager;

    move-result-object v4

    invoke-virtual {v4, p2}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/16 v5, 0x64

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-ne v4, v5, :cond_0

    move v4, v6

    goto :goto_0

    :cond_0
    move v4, v7

    .line 4119
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4122
    const-string v2, "Suppressing toast from package "

    const-string v3, "NotificationService"

    if-nez p5, :cond_4

    if-nez v1, :cond_1

    if-eqz v4, :cond_2

    :cond_1
    if-eqz v0, :cond_4

    .line 4124
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 4125
    const-string p1, " due to package suspended."

    goto :goto_1

    .line 4126
    :cond_3
    const-string p1, " by user request."

    :goto_1
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 4124
    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4130
    :cond_4
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4131
    invoke-static {v0, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misPackageInForegroundForToast(Lcom/android/server/notification/NotificationManagerService;I)Z

    move-result v1

    .line 4130
    invoke-static {v0, p2, p5, p4, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mblockToast(Lcom/android/server/notification/NotificationManagerService;IZZZ)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 4132
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Blocking custom toast from package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " due to package not in the foreground at time the toast was posted"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    .line 4137
    :cond_5
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p4

    if-nez p5, :cond_6

    .line 4138
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p4, p3}, Lcom/android/server/pm/UserManagerInternal;->isUserVisible(II)Z

    move-result p0

    if-nez p0, :cond_6

    .line 4139
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is not visible on display "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v7

    :cond_6
    return v6

    :catchall_0
    move-exception p0

    .line 4119
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4120
    throw p0
.end method

.method public final checkPackagePolicyAccess(Ljava/lang/String;)Z
    .locals 1

    .line 6515
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    .line 6516
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6515
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final checkPolicyAccess(Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    .line 6522
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 6523
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 6522
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 6524
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v3, "android.permission.MANAGE_NOTIFICATIONS"

    const/4 v4, -0x1

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v1, v4, v5}, Lcom/android/server/notification/NotificationManagerService;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v2, :cond_0

    return v5

    .line 6540
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPackagePolicyAccess(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v2

    .line 6541
    invoke-virtual {v2, p1}, Lcom/android/server/notification/ManagedServices;->isComponentEnabledForPackage(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p1

    .line 6542
    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveProfileOwner(I)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    .line 6543
    invoke-virtual {p0, v1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    return v5

    :catch_0
    return v0
.end method

.method public cleanUpCallersAfter(J)V
    .locals 1

    .line 6624
    const-string v0, "INotificationManager.cleanUpCallersAfter"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6625
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ZenModeHelper;->cleanUpCallersAfter(J)V

    return-void
.end method

.method public clearData(Ljava/lang/String;IZ)V
    .locals 10

    .line 5279
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5281
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5282
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    .line 5283
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    const/16 v9, 0x15

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v4, p1

    .line 5282
    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 5286
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p1

    .line 5287
    invoke-virtual {p1, v4, v0}, Lcom/android/server/notification/ConditionProviders;->resetPackage(Ljava/lang/String;I)Z

    move-result p1

    .line 5290
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 5291
    invoke-virtual {v1, v4, v0}, Lcom/android/server/notification/ManagedServices;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 5292
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v5, 0x1

    if-gtz v2, :cond_1

    .line 5293
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v5

    :goto_1
    or-int/2addr p1, v2

    move v2, v3

    .line 5296
    :goto_2
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_2

    .line 5297
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v7

    .line 5298
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 5297
    invoke-virtual {v7, v6, v0, v3, v5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 5303
    :cond_2
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 5304
    invoke-virtual {v1, v4, v0}, Lcom/android/server/notification/ManagedServices;->resetComponents(Ljava/lang/String;I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 5305
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_4

    .line 5306
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    move v2, v3

    goto :goto_4

    :cond_4
    :goto_3
    move v2, v5

    :goto_4
    or-int/2addr p1, v2

    move v2, v5

    .line 5309
    :goto_5
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v2, v7, :cond_5

    .line 5310
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 5311
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 5310
    invoke-virtual {v7, v6, v0, v5, v3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 5316
    :cond_5
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    .line 5318
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    .line 5320
    invoke-virtual {v1, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 5319
    invoke-virtual {v2, v1, v0, v3, v5}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    .line 5326
    :cond_6
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {v1, v2, v4}, Lcom/android/server/notification/SnoozeHelper;->clearData(ILjava/lang/String;)V

    if-nez p3, :cond_7

    .line 5330
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p3, v4, p2}, Lcom/android/server/notification/PreferencesHelper;->clearData(Ljava/lang/String;I)V

    :cond_7
    if-eqz p1, :cond_8

    .line 5334
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5336
    invoke-virtual {p2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    const/high16 p3, 0x4000000

    .line 5337
    invoke-virtual {p2, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p2

    .line 5338
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    const/4 v0, 0x0

    .line 5334
    invoke-virtual {p1, p2, p3, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 5341
    :cond_8
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public clearRequestedListenerHints(Landroid/service/notification/INotificationListener;)V
    .locals 4

    .line 6058
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6060
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6061
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 6062
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    .line 6063
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6064
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6065
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 6065
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 6067
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6068
    throw p0
.end method

.method public final computeZenOrigin(Z)I
    .locals 0

    if-eqz p1, :cond_1

    .line 6374
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    .line 6379
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    const/4 p0, 0x4

    return p0
.end method

.method public createConversationNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;Ljava/lang/String;)V
    .locals 3

    .line 4885
    const-string/jumbo v0, "only system can call this"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4886
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4887
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4888
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v0

    .line 4890
    const-string v1, "%1$s : %2$s"

    filled-new-array {v0, p4}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/app/NotificationChannel;->setId(Ljava/lang/String;)V

    .line 4892
    invoke-virtual {p3, v0, p4}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 4893
    new-instance p4, Landroid/content/pm/ParceledListSlice;

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/app/NotificationChannel;

    const/4 v1, 0x0

    aput-object p3, v0, v1

    .line 4894
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p4, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 4893
    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 4895
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mRankingHandler:Lcom/android/server/notification/RankingHandler;

    invoke-interface {p1}, Lcom/android/server/notification/RankingHandler;->requestSort()V

    .line 4896
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createConversationNotificationChannelForPackageFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 10

    .line 7091
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7092
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7093
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7094
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 7096
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 7097
    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystemUi()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    .line 7098
    invoke-static {v1, v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misNotificationAssistant(Lcom/android/server/notification/NotificationManagerService;Landroid/os/IInterface;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationListenerStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationListenerStats;

    move-result-object v1

    .line 7099
    invoke-virtual {v1, p1}, Lcom/android/server/notification/NotificationListenerStats;->isAllowedToCreateChannel(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7100
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "NLS "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " has created too many channels already! Rejecting "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 7105
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v5

    .line 7106
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p3, p3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v1, 0x0

    .line 7107
    invoke-virtual {p3, p2, v5, p4, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p3

    if-nez p3, :cond_1

    return-object v2

    .line 7112
    :cond_1
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p2

    move-object v6, p4

    move-object v7, p5

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_2

    return-object p2

    .line 7120
    :cond_2
    const-string p2, "%1$s : %2$s"

    filled-new-array {v6, v7}, [Ljava/lang/Object;

    move-result-object p4

    invoke-static {p2, p4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 7122
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->copy()Landroid/app/NotificationChannel;

    move-result-object p3

    .line 7123
    invoke-virtual {p3, p2}, Landroid/app/NotificationChannel;->setId(Ljava/lang/String;)V

    .line 7124
    invoke-virtual {p3, v6, v7}, Landroid/app/NotificationChannel;->setConversationId(Ljava/lang/String;Ljava/lang/String;)V

    .line 7125
    new-instance p2, Landroid/content/pm/ParceledListSlice;

    new-array p4, v0, [Landroid/app/NotificationChannel;

    aput-object p3, p4, v1

    .line 7126
    invoke-static {p4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    .line 7125
    invoke-virtual {p0, v4, v5, p2}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    .line 7128
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, p2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 7131
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationListenerStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationListenerStats;

    move-result-object p3

    invoke-virtual {p3, p1, v0}, Lcom/android/server/notification/NotificationListenerStats;->logCreatedChannels(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 7132
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_3
    return-object p2
.end method

.method public createNotificationChannelGroups(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 9

    .line 4792
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4793
    invoke-virtual {p2}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p2

    .line 4794
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 4796
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/app/NotificationChannelGroup;

    .line 4797
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v4, p1

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4799
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public createNotificationChannels(Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 4

    .line 4863
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 4867
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-wide/16 v2, 0x0

    .line 4866
    invoke-interface {v0, p1, v2, v3, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result v0

    .line 4868
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAtm(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/ActivityTaskManagerInternal;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTaskToShowPermissionDialogOn(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v0, -0x1

    .line 4872
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V

    return-void
.end method

.method public createNotificationChannelsForPackage(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .locals 1

    .line 4878
    const-string/jumbo v0, "only system can call this"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4879
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V

    return-void
.end method

.method public final createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;)V
    .locals 1

    const/4 v0, -0x1

    .line 4804
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V

    return-void
.end method

.method public final createNotificationChannelsImpl(Ljava/lang/String;ILandroid/content/pm/ParceledListSlice;I)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v9, p4

    .line 4810
    invoke-virtual/range {p3 .. p3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    .line 4811
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    .line 4812
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v12, 0x1

    const/4 v13, 0x0

    .line 4813
    invoke-virtual {v1, v2, v3, v12, v13}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4815
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    move v14, v12

    goto :goto_0

    :cond_0
    move v14, v13

    :goto_0
    move v1, v13

    move v15, v1

    move/from16 v16, v15

    :goto_1
    if-ge v15, v11, :cond_7

    .line 4819
    invoke-interface {v10, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Landroid/app/NotificationChannel;

    .line 4820
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4821
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object v5, v1

    iget-object v1, v5, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v5

    .line 4824
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 4823
    invoke-virtual {v5, v2, v6}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v6

    .line 4824
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4825
    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v8

    const/4 v5, 0x1

    .line 4821
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/notification/PreferencesHelper;->createNotificationChannel(Ljava/lang/String;ILandroid/app/NotificationChannel;ZZIZ)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 4827
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    .line 4828
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v7, v7, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4829
    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v2, v3, v4, v13}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v4

    .line 4827
    invoke-virtual {v5, v2, v6, v4, v12}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    if-nez v14, :cond_2

    if-eqz v16, :cond_1

    goto :goto_2

    :cond_1
    move v4, v13

    goto :goto_3

    :cond_2
    :goto_2
    move v4, v12

    :goto_3
    if-nez v4, :cond_4

    .line 4835
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 4836
    invoke-virtual {v4, v2, v3, v12, v13}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 4838
    invoke-virtual {v4}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    move v4, v12

    goto :goto_4

    :cond_3
    move v4, v13

    :cond_4
    :goto_4
    if-nez v14, :cond_6

    if-eqz v4, :cond_6

    if-nez v16, :cond_6

    const/4 v4, -0x1

    if-eq v9, v4, :cond_6

    .line 4846
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v4

    if-nez v4, :cond_5

    .line 4847
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-class v5, Lcom/android/server/policy/PermissionPolicyInternal;

    .line 4848
    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v4, v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/policy/PermissionPolicyInternal;)V

    .line 4850
    :cond_5
    iget-object v4, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v5, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;

    .line 4851
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionPolicyInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/policy/PermissionPolicyInternal;

    move-result-object v7

    invoke-direct {v5, v2, v6, v9, v7}, Lcom/android/server/notification/NotificationManagerService$ShowNotificationPermissionPromptRunnable;-><init>(Ljava/lang/String;IILcom/android/server/policy/PermissionPolicyInternal;)V

    .line 4850
    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move/from16 v16, v12

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto/16 :goto_1

    :cond_7
    if-eqz v1, :cond_8

    .line 4857
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_8
    return-void
.end method

.method public deleteNotificationChannel(Ljava/lang/String;Ljava/lang/String;)V
    .locals 12

    .line 4964
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4965
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 4966
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v11

    .line 4967
    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 4968
    const-string/jumbo v1, "miscellaneous"

    invoke-virtual {v1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 4975
    sget-object v1, Landroid/app/NotificationChannel;->SYSTEM_RESERVED_IDS:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4976
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " cannot delete a reserved channel"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4980
    :cond_0
    invoke-virtual {p0, p1, v8, p2}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    .line 4981
    invoke-virtual {p0, p1, v8, p2}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoUserInitiatedJob(Ljava/lang/String;ILjava/lang/String;)V

    .line 4982
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    const/4 v7, 0x0

    const/16 v9, 0x14

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 4984
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move v5, v10

    move-object v2, p1

    move-object v4, p2

    move v3, v10

    move v6, v11

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;IZ)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4989
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object v1

    invoke-virtual {v1, p1, v8, p2}, Lcom/android/server/notification/NotificationManagerService$Archive;->removeChannelNotifications(Ljava/lang/String;ILjava/lang/String;)V

    .line 4990
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object v1

    invoke-virtual {v1, p1, v3, p2}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V

    .line 4991
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 4992
    invoke-static {v3}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v7, 0x1

    .line 4993
    invoke-virtual {v6, p1, v3, p2, v7}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object v3

    const/4 v4, 0x3

    .line 4991
    invoke-virtual {v1, p1, v5, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    .line 4995
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_1
    return-void

    .line 4969
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot delete default channel"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public deleteNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    .line 5026
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5028
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5029
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v6

    .line 5030
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v7, 0x0

    move-object/from16 v4, p2

    .line 5031
    invoke-virtual {v1, v2, v3, v4, v7}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 5035
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v8

    .line 5036
    invoke-virtual {v10}, Landroid/app/NotificationChannelGroup;->getChannels()Ljava/util/List;

    move-result-object v1

    move v5, v7

    .line 5037
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v9

    if-ge v5, v9, :cond_0

    .line 5038
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/NotificationChannel;

    invoke-virtual {v9}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v9

    .line 5039
    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V

    .line 5040
    invoke-virtual {v0, v2, v8, v9}, Lcom/android/server/notification/NotificationManagerService$12;->enforceDeletingChannelHasNoUserInitiatedJob(Ljava/lang/String;ILjava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5042
    :cond_0
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move v5, v3

    .line 5043
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/PreferencesHelper;->deleteNotificationChannelGroup(Ljava/lang/String;ILjava/lang/String;IZ)Ljava/util/List;

    move-result-object v11

    move v12, v3

    move v13, v7

    .line 5045
    :goto_1
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    const/4 v14, 0x3

    if-ge v13, v1, :cond_1

    .line 5046
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Landroid/app/NotificationChannel;

    .line 5047
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v2

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v3

    invoke-virtual {v15}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/16 v9, 0x14

    const/4 v6, 0x0

    move-object/from16 v4, p1

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    move-object v2, v4

    .line 5050
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 5051
    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 5050
    invoke-virtual {v1, v2, v3, v15, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;I)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_1
    move-object/from16 v2, p1

    .line 5055
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    .line 5056
    invoke-static {v12}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v3

    .line 5055
    invoke-virtual {v1, v2, v3, v10, v14}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->notifyNotificationChannelGroupChanged(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannelGroup;I)V

    .line 5058
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_2
    return-void
.end method

.method public deleteNotificationHistoryItem(Ljava/lang/String;IJ)V
    .locals 1

    .line 4412
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4413
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/NotificationHistoryManager;->deleteNotificationHistoryItem(Ljava/lang/String;IJ)V

    return-void
.end method

.method public disallowAssistantAdjustment(Ljava/lang/String;)V
    .locals 1

    .line 4478
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4479
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->disallowAdjustmentType(Ljava/lang/String;)V

    .line 4480
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    .line 4493
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 6548
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "NotificationService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 6549
    :cond_0
    invoke-static {p3}, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->parseFromArguments([Ljava/lang/String;)Lcom/android/server/notification/NotificationManagerService$DumpFilter;

    move-result-object p3

    .line 6550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6552
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6553
    invoke-virtual {v2}, Lcom/android/server/notification/NotificationManagerService;->getAllUsersNotificationPermissions()Landroid/util/ArrayMap;

    move-result-object v2

    .line 6554
    iget-boolean v3, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->stats:Z

    if-eqz v3, :cond_1

    .line 6555
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p2, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpJson(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6556
    :cond_1
    iget-boolean v3, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->rvStats:Z

    if-eqz v3, :cond_2

    .line 6557
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpRemoteViewStats(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    .line 6558
    :cond_2
    iget-boolean v3, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->proto:Z

    if-eqz v3, :cond_3

    .line 6559
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpProto(Lcom/android/server/notification/NotificationManagerService;Ljava/io/FileDescriptor;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V

    goto :goto_0

    .line 6560
    :cond_3
    iget-boolean p1, p3, Lcom/android/server/notification/NotificationManagerService$DumpFilter;->criticalPriority:Z

    if-eqz p1, :cond_4

    .line 6561
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mdumpNotificationRecords(Lcom/android/server/notification/NotificationManagerService;Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;)V

    goto :goto_0

    .line 6563
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p2, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->dumpImpl(Ljava/io/PrintWriter;Lcom/android/server/notification/NotificationManagerService$DumpFilter;Landroid/util/ArrayMap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6566
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6567
    throw p0
.end method

.method public final enforceDeletingChannelHasNoFgService(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4938
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Landroid/app/ActivityManagerInternal;->hasForegroundServiceNotification(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    .line 4939
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not delete notification channel \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' with fg service"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4942
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed to delete channel "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with a foreground service"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceDeletingChannelHasNoUserInitiatedJob(Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    .line 4951
    const-class p0, Lcom/android/server/job/JobSchedulerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/job/JobSchedulerInternal;

    if-eqz p0, :cond_1

    .line 4952
    invoke-interface {p0, p3, p2, p1}, Lcom/android/server/job/JobSchedulerInternal;->isNotificationChannelAssociatedWithAnyUserInitiatedJobs(Ljava/lang/String;ILjava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    .line 4954
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package u"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " may not delete notification channel \'"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\' with user-initiated job"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4957
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Not allowed to delete channel "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " with a user-initiated job"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public final enforcePolicyAccess(ILjava/lang/String;)V
    .locals 7

    .line 6472
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6477
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0

    .line 6478
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v2, v1, :cond_2

    .line 6480
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    aget-object v5, v0, v2

    .line 6481
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    .line 6480
    invoke-virtual {v4, v5, v6}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    if-eqz v3, :cond_3

    :goto_1
    return-void

    .line 6486
    :cond_3
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification policy access denied calling "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6487
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Notification policy access denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 6503
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6507
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6508
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_1

    :goto_0
    return-void

    .line 6509
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Notification policy access denied calling "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NotificationService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6510
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Notification policy access denied"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final enforceSystemOrSystemUI(Ljava/lang/String;)V
    .locals 1

    .line 6456
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 6457
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 6463
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 6465
    :catch_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string p1, "android.permission.STATUS_BAR_SERVICE"

    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_1

    .line 6387
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 6388
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Calling %s with fromUser == true is only allowed for system"

    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method public enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    .locals 11

    .line 4225
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 4226
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    .line 4225
    invoke-virtual/range {v0 .. v10}, Lcom/android/server/notification/NotificationManagerService;->enqueueNotificationInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZZ)V

    return-void
.end method

.method public enqueueTextToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;IZILandroid/app/ITransientNotificationCallback;)Z
    .locals 9

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, p4

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    .line 3976
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result p0

    return p0
.end method

.method public enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Landroid/app/ITransientNotification;IZI)Z
    .locals 9

    const/4 v3, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    .line 3983
    invoke-virtual/range {v0 .. v8}, Lcom/android/server/notification/NotificationManagerService$12;->enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IZILandroid/app/ITransientNotificationCallback;)Z

    move-result p0

    return p0
.end method

.method public final enqueueToast(Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;IZILandroid/app/ITransientNotificationCallback;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move/from16 v8, p5

    move/from16 v2, p6

    move/from16 v3, p7

    .line 3990
    sget-boolean v4, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v4, :cond_0

    .line 3991
    const-string v5, "NotificationService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "enqueueToast pkg="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " token="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " duration="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " isUiContext="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " displayId="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v12, 0x0

    if-eqz v1, :cond_1

    if-nez p3, :cond_2

    if-eqz p4, :cond_1

    goto :goto_1

    :cond_1
    :goto_0
    move-object v5, v6

    move-object/from16 v6, p3

    goto/16 :goto_c

    :cond_2
    :goto_1
    if-eqz p3, :cond_3

    if-nez p4, :cond_1

    :cond_3
    if-nez v6, :cond_4

    goto :goto_0

    .line 4002
    :cond_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    if-nez p6, :cond_6

    if-nez v3, :cond_6

    .line 4003
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v5

    .line 4004
    invoke-virtual {v5}, Landroid/os/UserManager;->isVisibleBackgroundUsersSupported()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 4008
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 4009
    iget-object v7, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v7

    invoke-virtual {v7, v5}, Lcom/android/server/pm/UserManagerInternal;->getMainDisplayAssignedToUser(I)I

    move-result v7

    if-eq v3, v7, :cond_6

    if-eqz v4, :cond_5

    .line 4012
    const-string v4, "NotificationService"

    const-string v9, "Changing display id from %d to %d on user %d"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 4013
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    filled-new-array {v3, v10, v5}, [Ljava/lang/Object;

    move-result-object v3

    .line 4012
    invoke-static {v4, v9, v3}, Lcom/android/server/utils/Slogf;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move v10, v7

    goto :goto_2

    :cond_6
    move v10, v3

    .line 4019
    :goto_2
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4020
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result v3

    const/4 v13, 0x1

    if-nez v3, :cond_8

    const-string v3, "android"

    .line 4021
    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_3

    :cond_7
    move v4, v12

    goto :goto_4

    :cond_8
    :goto_3
    move v4, v13

    :goto_4
    move v5, v4

    if-eqz p4, :cond_9

    move v4, v13

    :goto_5
    move v3, v10

    goto :goto_6

    :cond_9
    move v4, v12

    goto :goto_5

    .line 4023
    :goto_6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/notification/NotificationManagerService$12;->checkCanEnqueueToast(Ljava/lang/String;IIZZ)Z

    move-result v4

    move-object v14, v0

    move v10, v3

    if-nez v4, :cond_a

    return v12

    .line 4028
    :cond_a
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v15, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v15

    move v0, v2

    .line 4029
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    .line 4030
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4033
    :try_start_1
    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, v1, v6}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_b

    .line 4037
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/toast/ToastRecord;

    .line 4038
    invoke-virtual {v0, v8}, Lcom/android/server/notification/toast/ToastRecord;->update(I)V

    goto/16 :goto_9

    :catchall_0
    move-exception v0

    goto/16 :goto_a

    .line 4043
    :cond_b
    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    move v4, v12

    move v7, v4

    :goto_7
    if-ge v4, v3, :cond_d

    .line 4045
    iget-object v9, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v9, v9, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/notification/toast/ToastRecord;

    .line 4046
    iget-object v9, v9, Lcom/android/server/notification/toast/ToastRecord;->pkg:Ljava/lang/String;

    invoke-virtual {v9, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    add-int/lit8 v7, v7, 0x1

    const/4 v9, 0x5

    if-lt v7, v9, :cond_c

    .line 4049
    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package has already queued "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " toasts. Not showing more. Package="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4084
    :try_start_2
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v15
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return v12

    :catchall_1
    move-exception v0

    goto/16 :goto_b

    :cond_c
    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    .line 4056
    :cond_d
    :try_start_3
    new-instance v9, Landroid/os/Binder;

    invoke-direct {v9}, Landroid/os/Binder;-><init>()V

    .line 4057
    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmWindowManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    const/16 v4, 0x7d5

    const/4 v7, 0x0

    invoke-virtual {v3, v9, v4, v10, v7}, Lcom/android/server/wm/WindowManagerInternal;->addWindowToken(Landroid/os/IBinder;IILandroid/os/Bundle;)V

    move v1, v0

    .line 4059
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    move-object/from16 v3, p1

    move-object/from16 v7, p4

    move-object/from16 v11, p8

    move v4, v5

    move-object v5, v6

    move-object/from16 v6, p3

    invoke-static/range {v0 .. v11}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetToastRecord(Lcom/android/server/notification/NotificationManagerService;IILjava/lang/String;ZLandroid/os/IBinder;Ljava/lang/CharSequence;Landroid/app/ITransientNotification;ILandroid/os/Binder;ILandroid/app/ITransientNotificationCallback;)Lcom/android/server/notification/toast/ToastRecord;

    move-result-object v0

    move v5, v4

    .line 4063
    iget-object v1, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-eqz v5, :cond_e

    .line 4065
    invoke-virtual {v14}, Lcom/android/server/notification/NotificationManagerService$12;->getInsertIndexForSystemToastLocked()I

    move-result v1

    .line 4067
    :cond_e
    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_f

    .line 4069
    iget-object v3, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    move v3, v1

    goto :goto_8

    .line 4071
    :cond_f
    iget-object v1, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4072
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v13

    move v3, v0

    .line 4074
    :goto_8
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mkeepProcessAliveForToastIfNeededLocked(Lcom/android/server/notification/NotificationManagerService;I)V

    :goto_9
    if-nez v3, :cond_10

    .line 4081
    iget-object v0, v14, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/notification/NotificationManagerService;->showNextToastLocked(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4084
    :cond_10
    :try_start_4
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4086
    monitor-exit v15

    return v13

    .line 4084
    :goto_a
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4085
    throw v0

    .line 4086
    :goto_b
    monitor-exit v15
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 3997
    :goto_c
    const-string v0, "NotificationService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not enqueuing toast. pkg="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " callback= token="

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v12
.end method

.method public finishToken(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5

    .line 4205
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4206
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4208
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->indexOfToastLocked(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    if-ltz v3, :cond_0

    .line 4210
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/notification/toast/ToastRecord;

    .line 4211
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p1, Lcom/android/server/notification/toast/ToastRecord;->windowToken:Landroid/os/Binder;

    iget p1, p1, Lcom/android/server/notification/toast/ToastRecord;->displayId:I

    invoke-virtual {p0, p2, p1}, Lcom/android/server/notification/NotificationManagerService;->finishWindowTokenLocked(Landroid/os/IBinder;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 4213
    :cond_0
    const-string p0, "NotificationService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Toast already killed. pkg="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " token="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4217
    :goto_0
    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4219
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p0

    goto :goto_2

    .line 4217
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4218
    throw p0

    .line 4219
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    const/4 v0, 0x0

    .line 5362
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public getActiveNotificationsFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 6004
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6005
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 6007
    array-length v3, p2

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_4

    :cond_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 6008
    :goto_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    if-ge v1, v3, :cond_3

    if-eqz v2, :cond_2

    .line 6011
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v6, p2, v1

    invoke-virtual {v5, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    goto :goto_3

    .line 6012
    :cond_2
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v5, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    .line 6013
    :goto_3
    invoke-virtual {p0, v5, p1, v4, p3}, Lcom/android/server/notification/NotificationManagerService$12;->addToListIfNeeded(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 6015
    :cond_3
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v4}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    .line 6016
    :goto_4
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getActiveNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;
    .locals 8

    .line 5376
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getActiveNotificationsWithAttribution_enforcePermission()V

    .line 5378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5379
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 5381
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, -0x1

    .line 5382
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5383
    new-instance v1, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, v7}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/util/ArrayList;)V

    invoke-static {v1}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 5390
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v1

    const/16 v2, 0x19

    const/4 v6, 0x0

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    .line 5393
    :cond_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 5394
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p2, :cond_2

    .line 5396
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v2

    .line 5397
    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5398
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5401
    :cond_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5403
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/service/notification/StatusBarNotification;

    return-object p0

    .line 5401
    :goto_2
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 4553
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4554
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAdjustmentDeniedPackages(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedAdjustmentKeyTypes()[I
    .locals 1

    .line 4528
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4529
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedClassificationTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public getAllowedAssistantAdjustments(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    .line 5346
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5348
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 5349
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5350
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not currently an assistant"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5353
    :cond_1
    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getAllowedAssistantAdjustments()Ljava/util/Set;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method

.method public getAllowedNotificationAssistant()Landroid/content/ComponentName;
    .locals 1

    .line 6870
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getAllowedNotificationAssistantForUser(I)Landroid/content/ComponentName;
    .locals 2

    .line 6859
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6860
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    .line 6861
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-gt p1, v0, :cond_0

    .line 6865
    invoke-static {p0}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/ComponentName;

    return-object p0

    .line 6862
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "At most one NotificationAssistant: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6863
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAppActiveNotifications(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 5421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5422
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 5423
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v5, 0x0

    const-string v6, "getAppActiveNotifications"

    const/4 v4, 0x1

    move-object v7, p1

    move v3, p2

    .line 5422
    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    .line 5425
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5426
    :try_start_0
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 5427
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 5428
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    .line 5430
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 5431
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 5430
    invoke-virtual {p0, v7, p1, v4}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 5433
    invoke-virtual {v4}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    :cond_0
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 5436
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1, p1, v7}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed(ILjava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    .line 5437
    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    invoke-virtual {p0, v7, p1, v3}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 5439
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 5442
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_3
    if-ge v2, v1, :cond_5

    .line 5444
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 5445
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 5444
    invoke-virtual {p0, v7, p1, v3}, Lcom/android/server/notification/NotificationManagerService$12;->sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 5447
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 5450
    :cond_5
    new-instance p0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 5451
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5452
    new-instance p1, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p1, p0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit p2

    return-object p1

    .line 5453
    :goto_4
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;
    .locals 2

    .line 6194
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6195
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6196
    const-string v1, "getAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6197
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;I)Landroid/app/AutomaticZenRule;

    move-result-object p0

    return-object p0
.end method

.method public getAutomaticZenRuleState(Ljava/lang/String;)I
    .locals 2

    .line 6331
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6332
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6333
    const-string v1, "getAutomaticZenRuleState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6334
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getAutomaticZenRules()Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 6182
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6183
    const-string v1, "getAutomaticZenRules"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6184
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6185
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6186
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object p0

    .line 6185
    invoke-virtual {v2, p0, v0}, Lcom/android/server/notification/ZenModeHelper;->getAutomaticZenRules(Landroid/os/UserHandle;I)Ljava/util/Map;

    move-result-object p0

    .line 6186
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    .line 6185
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 6187
    new-instance v2, Landroid/app/AutomaticZenRule$AzrWithId;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AutomaticZenRule;

    invoke-direct {v2, v3, v0}, Landroid/app/AutomaticZenRule$AzrWithId;-><init>(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6189
    :cond_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getBackupPayload(I)[B
    .locals 4

    .line 6637
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6638
    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v1, "NotificationService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBackupPayload u="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6639
    :cond_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v2, 0x0

    .line 6641
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3, p1, v2}, Lcom/android/server/notification/NotificationManagerService;->writePolicyXml(Ljava/io/OutputStream;ZILandroid/app/backup/BackupRestoreEventLogger;)V

    .line 6642
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 6644
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBackupPayload: error writing payload for user "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v2
.end method

.method public getBlockedChannelCount(Ljava/lang/String;I)I
    .locals 1

    .line 5113
    const-string v0, "getBlockedChannelCount"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5114
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBlockedChannelCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getBubblePreferenceForPackage(Ljava/lang/String;I)I
    .locals 3

    .line 4369
    const-string v0, "Caller not system or systemui or same package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 4372
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 4373
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getBubblePreferenceForPackage for uid "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4378
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getBubblePreference(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final getCallingZenUser()Landroid/os/UserHandle;
    .locals 0

    .line 6361
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 6362
    sget-object p0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    return-object p0

    .line 6364
    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object p0

    return-object p0
.end method

.method public getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;
    .locals 2

    .line 6729
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6731
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConsolidatedNotificationPolicy()Landroid/app/NotificationManager$Policy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6733
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6734
    throw p0
.end method

.method public getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;
    .locals 7

    .line 4910
    invoke-virtual {p0, p1, p3, p2}, Lcom/android/server/notification/NotificationManagerService$12;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4911
    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4922
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "Pkg "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4914
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p3, p2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move v2, p1

    goto :goto_2

    :catch_0
    const/4 p1, -0x1

    goto :goto_1

    .line 4918
    :goto_2
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v6, 0x0

    move-object v1, p3

    move-object v3, p4

    move v5, p5

    move-object v4, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getConversations(Z)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 5120
    const-string v0, "getConversations"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5121
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object v0

    .line 5122
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5123
    invoke-virtual {v1, v0, p1}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Landroid/util/IntArray;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 5124
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/service/notification/ConversationChannelWrapper;

    .line 5125
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    if-nez v3, :cond_0

    const/4 v3, 0x0

    .line 5126
    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 5128
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v3

    .line 5129
    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v4

    .line 5130
    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getPkg()Ljava/lang/String;

    move-result-object v5

    .line 5131
    invoke-virtual {v2}, Landroid/service/notification/ConversationChannelWrapper;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 5128
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 5134
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getConversationsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 7

    .line 5179
    const-string v0, "getConversationsForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5180
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5181
    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getConversations(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 5182
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Landroid/service/notification/ConversationChannelWrapper;

    .line 5183
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v4

    if-nez v4, :cond_0

    const/4 v4, 0x0

    .line 5184
    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 5186
    :cond_0
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmShortcutHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ShortcutHelper;

    move-result-object v4

    .line 5187
    invoke-virtual {v3}, Landroid/service/notification/ConversationChannelWrapper;->getNotificationChannel()Landroid/app/NotificationChannel;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/NotificationChannel;->getConversationId()Ljava/lang/String;

    move-result-object v5

    .line 5189
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 5186
    invoke-virtual {v4, v5, p1, v6}, Lcom/android/server/notification/ShortcutHelper;->getValidShortcutInfo(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/service/notification/ConversationChannelWrapper;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    goto :goto_0

    .line 5192
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getDefaultNotificationAssistant()Landroid/content/ComponentName;
    .locals 1

    .line 6875
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6876
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getDefaultFromConfig()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;
    .locals 2

    .line 6836
    const-string v0, "INotificationManager.getDefaultZenPolicy"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6837
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6839
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getDefaultZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6841
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6842
    throw p0
.end method

.method public getDeletedChannelCount(Ljava/lang/String;I)I
    .locals 1

    .line 5107
    const-string v0, "getDeletedChannelCount"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5108
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getDeletedChannelCount(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getEffectsSuppressor()Landroid/content/ComponentName;
    .locals 5

    .line 6572
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 6573
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmEffectsSuppressors(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 6575
    :goto_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6576
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 6577
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 6576
    invoke-virtual {p0, v2, v3, v4}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    return-object v0
.end method

.method public getEnabledNotificationListenerPackages()Ljava/util/List;
    .locals 1

    .line 6847
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6848
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/notification/ManagedServices;->getAllowedPackages(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getEnabledNotificationListeners(I)Ljava/util/List;
    .locals 1

    .line 6853
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    .line 6854
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->getAllowedComponents(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public getHintsFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 0

    .line 6096
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6097
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 6098
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHintsFromListenerNoToken()I
    .locals 1

    .line 6103
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6104
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListenerHints(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 6105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getHistoricalNotifications(Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 1

    const/4 v0, 0x0

    .line 5488
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    return-object p0
.end method

.method public getHistoricalNotificationsWithAttribution(Ljava/lang/String;Ljava/lang/String;IZ)[Landroid/service/notification/StatusBarNotification;
    .locals 6

    .line 5501
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getHistoricalNotificationsWithAttribution_enforcePermission()V

    .line 5504
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5507
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return-object p0

    .line 5510
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object p1

    monitor-enter p1

    .line 5511
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmArchive(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$Archive;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object p0

    invoke-virtual {p2, p0, p3, p4}, Lcom/android/server/notification/NotificationManagerService$Archive;->getArray(Landroid/os/UserManager;IZ)[Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    .line 5512
    monitor-exit p1

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getInsertIndexForSystemToastLocked()I
    .locals 6

    .line 4094
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/toast/ToastRecord;

    if-nez v2, :cond_1

    .line 4095
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmIsCurrentToastShown(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4099
    :cond_1
    iget-boolean v4, v4, Lcom/android/server/notification/toast/ToastRecord;->isSystemToast:Z

    if-nez v4, :cond_0

    :cond_2
    return v2
.end method

.method public getInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;)I
    .locals 0

    .line 6138
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p1

    .line 6139
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmInterruptionFilter(Lcom/android/server/notification/NotificationManagerService;)I

    move-result p0

    monitor-exit p1

    return p0

    :catchall_0
    move-exception p0

    .line 6140
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getListenerFilter(Landroid/content/ComponentName;I)Landroid/service/notification/NotificationListenerFilter;
    .locals 1

    .line 4418
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4419
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannel;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 4902
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$12;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelForPackage(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Z)Landroid/app/NotificationChannel;
    .locals 7

    .line 4929
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4930
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v5, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/PreferencesHelper;->getConversationNotificationChannel(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;ZZ)Landroid/app/NotificationChannel;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationChannelGroup;
    .locals 2

    .line 5001
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5002
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5003
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/4 v1, 0x0

    .line 5002
    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupForPackage(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;
    .locals 1

    .line 5206
    const-string v0, "getNotificationChannelGroupForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5207
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroup(Ljava/lang/String;Ljava/lang/String;I)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroups(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 5009
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5010
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5011
    invoke-static {}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->forAllGroups()Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    move-result-object v1

    .line 5010
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;ILcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 5140
    const-string v0, "getNotificationChannelGroupsForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5141
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    new-instance v0, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    move v1, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;-><init>(ZZZZLjava/util/Set;)V

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;ILcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelGroupsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 7168
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7169
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 7170
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7172
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7173
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7174
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    .line 7173
    invoke-virtual {v0, p2, p0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 7175
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 5017
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5018
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 5019
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5020
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5019
    invoke-virtual {p0, p1, v1}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupsWithoutChannels(Ljava/lang/String;I)Ljava/util/Collection;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5021
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v0}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getNotificationChannels(Ljava/lang/String;Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 2

    .line 5213
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->canNotifyAsPackage(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5214
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallingUidSystem()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 5224
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pkg "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " cannot read channels for "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " in "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5217
    :cond_1
    :goto_0
    :try_start_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPackageManagerClient(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/4 p1, -0x1

    .line 5221
    :goto_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 p3, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0, p2, p1, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 5231
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5232
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 5233
    invoke-static {}, Landroid/content/pm/ParceledListSlice;->emptyList()Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0

    .line 5235
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelsBypassingDnd(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsForPackage(Ljava/lang/String;IZ)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 5087
    const-string v0, "getNotificationChannelsForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5088
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationChannelsFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/pm/ParceledListSlice;
    .locals 1

    .line 7156
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7157
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 7158
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7160
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7161
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    const/4 p3, 0x0

    .line 7160
    invoke-virtual {p1, p2, p0, p3, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannels(Ljava/lang/String;IZZ)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationDelegate(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 4730
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4731
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationDelegate(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationHistory(Ljava/lang/String;Ljava/lang/String;)Landroid/app/NotificationHistory;
    .locals 6

    .line 5528
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->getNotificationHistory_enforcePermission()V

    .line 5529
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 5532
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAppOps(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x19

    const/4 v5, 0x0

    move-object v3, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 p2, 0x3

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 5543
    :cond_0
    new-instance p0, Landroid/app/NotificationHistory;

    invoke-direct {p0}, Landroid/app/NotificationHistory;-><init>()V

    return-object p0

    .line 5535
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->getCurrentProfileIds()Landroid/util/IntArray;

    move-result-object p1

    .line 5536
    const-string/jumbo p2, "notifHistoryReadHistory"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, p2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5538
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p0

    invoke-virtual {p1}, Landroid/util/IntArray;->toArray()[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationHistoryManager;->readNotificationHistory([I)Landroid/app/NotificationHistory;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5540
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-object p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 5541
    throw p0
.end method

.method public getNotificationPolicy(Ljava/lang/String;)Landroid/app/NotificationManager$Policy;
    .locals 4

    .line 6714
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6715
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v1

    .line 6716
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->canManageGlobalZenPolicy(Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 6717
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, v1, p1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicyFromImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;)Landroid/app/NotificationManager$Policy;

    move-result-object p0

    return-object p0

    .line 6719
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 6721
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, v1}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6723
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6724
    throw p0
.end method

.method public getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I
    .locals 1

    .line 5094
    const-string v0, "getNumNotificationChannelsForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5095
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 5096
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService;->getNumNotificationChannelsForPackage(Ljava/lang/String;IZ)I

    move-result p0

    return p0
.end method

.method public getPackageImportance(Ljava/lang/String;)I
    .locals 1

    .line 4433
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4434
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getPackagesBypassingDnd(I)Landroid/content/pm/ParceledListSlice;
    .locals 4

    .line 5241
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5243
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5244
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5245
    invoke-virtual {v1, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagesBypassingDnd(I)Ljava/util/ArrayList;

    move-result-object p1

    .line 5246
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5247
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ZenBypassingApp;

    invoke-virtual {v2}, Landroid/app/ZenBypassingApp;->getPkg()Ljava/lang/String;

    move-result-object v2

    .line 5248
    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5249
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 5252
    :cond_1
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public getPackagesWithAnyChannels(I)Ljava/util/List;
    .locals 4

    .line 5264
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5265
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 5266
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v1, p1}, Lcom/android/server/notification/PreferencesHelper;->getPackagesWithAnyChannels(I)Ljava/util/List;

    move-result-object p1

    .line 5267
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 5268
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 5269
    invoke-virtual {p0, v2, v0}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v3

    invoke-virtual {p0, v2, v3}, Lcom/android/server/notification/NotificationManagerService$12;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5270
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    return-object p1
.end method

.method public getPopulatedNotificationChannelGroupForPackage(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;
    .locals 1

    .line 5198
    const-string v0, "getPopulatedNotificationChannelGroupForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5199
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroupWithChannels(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannelGroup;

    move-result-object p0

    return-object p0
.end method

.method public getPrivateNotificationsAllowed()Z
    .locals 2

    .line 7207
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7208
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    .line 7212
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result p0

    return p0

    .line 7209
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string v0, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getRecentBlockedNotificationChannelGroupsForPackage(Ljava/lang/String;I)Landroid/content/pm/ParceledListSlice;
    .locals 8

    .line 5149
    const-string v0, "getRecentBlockedNotificationChannelGroupsForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5150
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 5151
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/32 v1, 0x48190800

    sub-long v3, v5, v1

    .line 5153
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStatsManagerInternal(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/usage/UsageStatsManagerInternal;

    move-result-object v1

    .line 5154
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const/4 v7, 0x0

    .line 5153
    invoke-virtual/range {v1 .. v7}, Landroid/app/usage/UsageStatsManagerInternal;->queryEventsForUser(IJJI)Landroid/app/usage/UsageEvents;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 5157
    new-instance v2, Landroid/app/usage/UsageEvents$Event;

    invoke-direct {v2}, Landroid/app/usage/UsageEvents$Event;-><init>()V

    .line 5158
    :cond_0
    :goto_0
    invoke-virtual {v1}, Landroid/app/usage/UsageEvents;->hasNextEvent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5159
    invoke-virtual {v1, v2}, Landroid/app/usage/UsageEvents;->getNextEvent(Landroid/app/usage/UsageEvents$Event;)Z

    .line 5160
    invoke-virtual {v2}, Landroid/app/usage/UsageEvents$Event;->getEventType()I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_0

    .line 5161
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5162
    iget-object v3, v2, Landroid/app/usage/UsageEvents$Event;->mNotificationChannelId:Ljava/lang/String;

    if-eqz v3, :cond_0

    .line 5164
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5171
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 5172
    invoke-static {v0}, Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;->onlySpecifiedOrBlockedChannels(Ljava/util/Set;)Lcom/android/internal/notification/NotificationChannelGroupsHelper$Params;

    move-result-object v0

    .line 5171
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannelGroups(Ljava/lang/String;ILcom/android/internal/notification/NotificationChannelGroupsHelper$Params;)Landroid/content/pm/ParceledListSlice;

    move-result-object p0

    return-object p0
.end method

.method public getRuleInstanceCount(Landroid/content/ComponentName;)I
    .locals 1

    .line 6322
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6323
    const-string v0, "getRuleInstanceCount"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6325
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {v0, p0, p1}, Lcom/android/server/notification/ZenModeHelper;->getCurrentInstanceCount(Landroid/os/UserHandle;Landroid/content/ComponentName;)I

    move-result p0

    return p0
.end method

.method public getSnoozedNotificationsFromListener(Landroid/service/notification/INotificationListener;I)Landroid/content/pm/ParceledListSlice;
    .locals 6

    .line 6031
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6032
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 6033
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {v1}, Lcom/android/server/notification/SnoozeHelper;->getSnoozed()Ljava/util/List;

    move-result-object v1

    .line 6034
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 6035
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_0

    .line 6037
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p0, v5, p1, v3, p2}, Lcom/android/server/notification/NotificationManagerService$12;->addToListIfNeeded(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Ljava/util/ArrayList;I)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6039
    :cond_0
    new-instance p0, Landroid/content/pm/ParceledListSlice;

    invoke-direct {p0, v3}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    monitor-exit v0

    return-object p0

    .line 6040
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I
    .locals 4

    .line 7262
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7264
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    const-wide/16 v2, 0x0

    invoke-interface {p0, p1, v2, v3, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;JI)I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7266
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7267
    throw p0
.end method

.method public getUnsupportedAdjustmentTypes()Ljava/util/List;
    .locals 3

    .line 4518
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4519
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4520
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 4521
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 4520
    invoke-virtual {p0, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->getUnsupportedAdjustments(I)Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    .line 4522
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getZenMode()I
    .locals 0

    .line 6155
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getZenMode()I

    move-result p0

    return p0
.end method

.method public getZenModeConfig()Landroid/service/notification/ZenModeConfig;
    .locals 1

    .line 6160
    const-string v0, "INotificationManager.getZenModeConfig"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6161
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/ZenModeHelper;->getConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public hasEnabledNotificationListener(Ljava/lang/String;I)Z
    .locals 1

    .line 6893
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6894
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasSentValidBubble(Ljava/lang/String;I)Z
    .locals 1

    .line 4698
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4699
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidBubble(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasSentValidMsg(Ljava/lang/String;I)Z
    .locals 1

    .line 4673
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4674
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasSentValidMsg(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z
    .locals 1

    .line 4685
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4686
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->hasUserDemotedInvalidMsgApp(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public incrementCounter(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public isAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 4559
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4560
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->isAdjustmentAllowedForPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isImportanceLocked(Ljava/lang/String;I)Z
    .locals 1

    .line 4443
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4444
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isImportanceLocked(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isInCall(Ljava/lang/String;I)Z
    .locals 1

    .line 7180
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7181
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallNotification(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isInInvalidMsgState(Ljava/lang/String;I)Z
    .locals 1

    .line 4679
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4680
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->isInInvalidMsgState(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationAssistantAccessGranted(Landroid/content/ComponentName;)Z
    .locals 2

    .line 6916
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6917
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6918
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 6919
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6918
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationListenerAccessGranted(Landroid/content/ComponentName;)Z
    .locals 2

    .line 6899
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6900
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6901
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    .line 6902
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6901
    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;I)Z
    .locals 1

    .line 6908
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6909
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6910
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public final isNotificationListenerAccessUserSet(Landroid/content/ComponentName;I)Z
    .locals 0

    .line 6992
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentUserSet(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isNotificationPolicyAccessGranted(Ljava/lang/String;)Z
    .locals 0

    .line 6669
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isNotificationPolicyAccessGrantedForPackage(Ljava/lang/String;)Z
    .locals 1

    .line 6674
    const-string/jumbo v0, "request policy access status for another package"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUIOrSamePackage(Ljava/lang/String;Ljava/lang/String;)V

    .line 6676
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->checkPolicyAccess(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isPackagePaused(Ljava/lang/String;)Z
    .locals 1

    .line 7217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7218
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 7220
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService;->isPackagePausedOrSuspended(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isPermissionFixed(Ljava/lang/String;I)Z
    .locals 1

    .line 7225
    const-string v0, "isPermissionFixed"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 7226
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PermissionHelper;->isPermissionFixed(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public isSystemConditionProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .line 6630
    const-string v0, "INotificationManager.isSystemConditionProviderEnabled"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6631
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->isSystemProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$getActiveNotificationsWithAttribution$0(Ljava/util/ArrayList;)V
    .locals 3

    .line 5384
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object p0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object p0

    array-length v0, p0

    :goto_0
    if-ge v1, v0, :cond_0

    aget v2, p0, v1

    .line 5385
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final synthetic lambda$requestInterruptionFilterFromListener$1(Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V
    .locals 8

    .line 6127
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "listener:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 6128
    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object p0, p4, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 6129
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const/4 v3, 0x0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v7, p5

    .line 6127
    invoke-virtual/range {v0 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$validateAutomaticZenRule$2(I)Ljava/lang/Boolean;
    .locals 0

    .line 6277
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmDpm(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/admin/DevicePolicyManagerInternal;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/admin/DevicePolicyManagerInternal;->isActiveDeviceOwner(I)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public matchesCallFilter(Landroid/os/Bundle;)Z
    .locals 9

    .line 6589
    const-string/jumbo v1, "matchesCallFilter requires listener permission, contacts read access, or system level access"

    const-string v2, "android.permission.READ_CONTACTS"

    const/4 v3, 0x0

    .line 6591
    :try_start_0
    const-string v0, "INotificationManager.matchesCallFilter"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    move v4, v0

    goto :goto_0

    :catch_0
    move v4, v3

    .line 6598
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-interface {v0, v5}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move v5, v3

    .line 6599
    :goto_1
    :try_start_2
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 6601
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v6

    aget-object v7, v0, v3

    .line 6602
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v8

    .line 6601
    invoke-virtual {v6, v7, v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->hasAllowedListener(Ljava/lang/String;I)Z

    move-result v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    or-int/2addr v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p1, v0

    move v3, v5

    goto :goto_3

    :catch_1
    move v3, v5

    goto :goto_4

    :cond_0
    if-nez v4, :cond_2

    if-nez v5, :cond_2

    .line 6607
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :catchall_1
    move-exception v0

    move-object p1, v0

    :goto_3
    if-nez v4, :cond_1

    if-nez v3, :cond_1

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6611
    :cond_1
    throw p1

    :catch_2
    :goto_4
    if-nez v4, :cond_2

    if-nez v3, :cond_2

    goto :goto_2

    .line 6613
    :cond_2
    :goto_5
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6614
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mRankingHelper:Lcom/android/server/notification/RankingHelper;

    const-class v0, Lcom/android/server/notification/ValidateNotificationPeople;

    .line 6616
    invoke-virtual {p0, v0}, Lcom/android/server/notification/RankingHelper;->findExtractor(Ljava/lang/Class;)Lcom/android/server/notification/NotificationSignalExtractor;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Lcom/android/server/notification/ValidateNotificationPeople;

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6619
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v5, 0xbb8

    move-object v3, p1

    .line 6613
    invoke-virtual/range {v1 .. v7}, Lcom/android/server/notification/ZenModeHelper;->matchesCallFilter(Landroid/os/UserHandle;Landroid/os/Bundle;Lcom/android/server/notification/ValidateNotificationPeople;IFI)Z

    move-result p0

    return p0
.end method

.method public migrateNotificationFilter(Landroid/service/notification/INotificationListener;ILjava/util/List;)V
    .locals 11

    .line 5940
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5942
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5943
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5945
    iget-object v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    iget v4, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v3

    .line 5947
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getNotificationListenerFilter(Landroid/util/Pair;)Landroid/service/notification/NotificationListenerFilter;

    move-result-object v4

    if-nez v4, :cond_0

    .line 5949
    new-instance v4, Landroid/service/notification/NotificationListenerFilter;

    invoke-direct {v4}, Landroid/service/notification/NotificationListenerFilter;-><init>()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 5951
    :cond_0
    :goto_0
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->getDisallowedPackages()Landroid/util/ArraySet;

    move-result-object v5

    invoke-virtual {v5}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_3

    if-eqz p3, :cond_3

    .line 5952
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5954
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v6

    iget v7, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/os/UserManager;->getProfileIds(IZ)[I

    move-result-object v6

    array-length v7, v6

    :goto_1
    if-ge v8, v7, :cond_1

    aget v9, v6, v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5956
    :try_start_2
    invoke-static {v9}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v9

    invoke-virtual {p0, v5, v9}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v9

    const/4 v10, -0x1

    if-eq v9, v10, :cond_2

    .line 5958
    new-instance v10, Landroid/content/pm/VersionedPackage;

    invoke-direct {v10, v5, v9}, Landroid/content/pm/VersionedPackage;-><init>(Ljava/lang/String;I)V

    .line 5959
    invoke-virtual {v4, v10}, Landroid/service/notification/NotificationListenerFilter;->addPackage(Landroid/content/pm/VersionedPackage;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catch_0
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 5967
    :cond_3
    :try_start_3
    invoke-virtual {v4}, Landroid/service/notification/NotificationListenerFilter;->areAllTypesAllowed()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 5968
    invoke-virtual {v4, p2}, Landroid/service/notification/NotificationListenerFilter;->setTypes(I)V

    .line 5970
    :cond_4
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    .line 5971
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 5973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5971
    :goto_2
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p0

    .line 5973
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5974
    throw p0
.end method

.method public notifyConditions(Ljava/lang/String;Landroid/service/notification/IConditionProvider;[Landroid/service/notification/Condition;)V
    .locals 2

    .line 6420
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p2

    .line 6421
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6422
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v1, Lcom/android/server/notification/NotificationManagerService$12$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12$1;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;[Landroid/service/notification/Condition;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 7274
    new-instance v0, Lcom/android/server/notification/NotificationShellCmd;

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {v0, v1}, Lcom/android/server/notification/NotificationShellCmd;-><init>(Lcom/android/server/notification/NotificationManagerService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    .line 7275
    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onlyHasDefaultChannel(Ljava/lang/String;I)Z
    .locals 1

    .line 5101
    const-string/jumbo v0, "onlyHasDefaultChannel"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5102
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onlyHasDefaultChannel(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public pullStats(JIZLjava/util/List;)J
    .locals 9

    .line 7291
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 7292
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    .line 7294
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    .line 7296
    const-string v7, "NotificationService"

    if-eq p3, v4, :cond_0

    goto :goto_0

    .line 7298
    :cond_0
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "pullStats REPORT_REMOTE_VIEWS from: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "  with "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7300
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUsageStats(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/notification/NotificationUsageStats;->remoteViewStats(JZ)Lcom/android/server/notification/PulledStats;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 7302
    invoke-virtual {p0, p3}, Lcom/android/server/notification/PulledStats;->toParcelFileDescriptor(I)Landroid/os/ParcelFileDescriptor;

    move-result-object p1

    invoke-interface {p5, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7303
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "exiting pullStats with: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v7, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7305
    invoke-virtual {p0}, Lcom/android/server/notification/PulledStats;->endTimeMs()J

    move-result-wide p0

    invoke-virtual {v1, p0, p1, v0}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7315
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide p0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    goto :goto_1

    .line 7308
    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "null stats for: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7315
    :goto_0
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7317
    const-string p0, "exiting pullStats: bad request"

    invoke-static {v7, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v5

    .line 7312
    :goto_1
    :try_start_2
    const-string p1, "exiting pullStats: on error"

    invoke-static {v7, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7315
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-wide v5

    :goto_2
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7316
    throw p0
.end method

.method public registerCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .locals 7

    .line 5559
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->registerCallNotificationEventListener_enforcePermission()V

    .line 5561
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    .line 5562
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    .line 5564
    :goto_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 5566
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    new-instance v3, Landroid/util/ArrayMap;

    invoke-direct {v3}, Landroid/util/ArrayMap;-><init>()V

    .line 5567
    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/ArrayMap;

    .line 5569
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/os/RemoteCallbackList;

    invoke-direct {v4}, Landroid/os/RemoteCallbackList;-><init>()V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/RemoteCallbackList;

    .line 5571
    invoke-virtual {v3, p3}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5572
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v2, p2, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5573
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p2, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5580
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5582
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter p2

    .line 5583
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_1
    :goto_1
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 5584
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    const-class v6, Landroid/app/Notification$CallStyle;

    invoke-virtual {v5, v6}, Landroid/app/Notification;->isStyle(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5585
    invoke-static {v4, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$smnotificationMatchesUserId(Lcom/android/server/notification/NotificationRecord;IZ)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5586
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v5, :cond_1

    .line 5588
    :try_start_2
    invoke-virtual {v4}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v4

    invoke-interface {p3, p1, v4}, Landroid/app/ICallNotificationEventCallback;->onCallNotificationPosted(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception p0

    .line 5590
    :try_start_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 5594
    :cond_2
    monitor-exit p2

    return-void

    :goto_2
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    .line 5575
    :cond_3
    :try_start_4
    const-string p0, "NotificationService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerCallNotificationEventListener failed to register listener: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5578
    monitor-exit v1

    return-void

    .line 5580
    :goto_3
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0
.end method

.method public registerListener(Landroid/service/notification/INotificationListener;Landroid/content/ComponentName;I)V
    .locals 1

    .line 5643
    const-string v0, "INotificationManager.registerListener"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 5644
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/ManagedServices;->registerSystemService(Landroid/os/IInterface;Landroid/content/ComponentName;II)V

    return-void
.end method

.method public removeAutomaticZenRule(Ljava/lang/String;Z)Z
    .locals 8

    .line 6297
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6299
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "removeAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6300
    invoke-virtual {p0, p2, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6301
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 6303
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v5

    const-string/jumbo v6, "removeAutomaticZenRule"

    .line 6304
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v4, p1

    .line 6303
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public removeAutomaticZenRules(Ljava/lang/String;Z)Z
    .locals 7

    .line 6310
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6311
    const-string/jumbo v0, "removeAutomaticZenRules"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6312
    invoke-virtual {p0, p2, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6313
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 6315
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6316
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "|removeAutomaticZenRules"

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 6317
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v3, p1

    .line 6315
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->removeAutomaticZenRules(Landroid/os/UserHandle;Ljava/lang/String;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public requestBindListener(Landroid/content/ComponentName;)V
    .locals 4

    .line 5746
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5747
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5748
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    .line 5749
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5753
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5754
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    .line 5755
    :goto_0
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5757
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5758
    throw p0
.end method

.method public requestBindProvider(Landroid/content/ComponentName;)V
    .locals 4

    .line 6445
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 6446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6447
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6449
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x1

    invoke-virtual {p0, p1, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6451
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6452
    throw p0
.end method

.method public requestHintsFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 4

    .line 6073
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6075
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6076
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    and-int/lit8 v3, p2, 0x7

    if-eqz v3, :cond_0

    .line 6082
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$maddDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6084
    :cond_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mremoveDisabledHints(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)Z

    .line 6086
    :goto_0
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateListenerHintsLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6087
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mupdateEffectsSuppressorLocked(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6088
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 6088
    :goto_1
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 6090
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6091
    throw p0
.end method

.method public requestInterruptionFilterFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 7

    .line 6111
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 6113
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 6114
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object v5

    .line 6115
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, -0x1

    .line 6117
    invoke-static {p2, p1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v3

    if-ne v3, p1, :cond_0

    return-void

    .line 6120
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 6121
    iget-object p1, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, v6}, Lcom/android/server/notification/NotificationManagerService$12;->canManageGlobalZenPolicy(Ljava/lang/String;I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 6122
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    iget-object p1, v5, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 6123
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 6122
    invoke-virtual {p0, v2, p1, v6, v3}, Lcom/android/server/notification/ZenModeHelper;->applyGlobalZenModeAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;II)V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6125
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v4

    .line 6126
    new-instance v0, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/notification/NotificationManagerService$12;Landroid/os/UserHandle;IILcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    invoke-static {v0}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 6115
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public requestUnbindListener(Landroid/service/notification/INotificationListener;)V
    .locals 5

    .line 5763
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5764
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5767
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5768
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    .line 5769
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    .line 5770
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v4, 0x0

    .line 5769
    invoke-virtual {p1, p0, v0, v4}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V

    .line 5771
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5773
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 5771
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 5773
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5774
    throw p0
.end method

.method public requestUnbindListenerComponent(Landroid/content/ComponentName;)V
    .locals 5

    .line 5779
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5780
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 5781
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 5782
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 5784
    :try_start_0
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5787
    :try_start_1
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v4, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v4, p1}, Lcom/android/server/notification/ManagedServices;->isComponentEnabledForCurrentProfiles(Landroid/content/ComponentName;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 5788
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    .line 5789
    :goto_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4, v0}, Lcom/android/server/notification/ManagedServices;->isPackageOrComponentAllowed(Ljava/lang/String;I)Z

    move-result v4

    if-eqz v4, :cond_1

    const/4 v4, 0x0

    .line 5790
    invoke-virtual {p0, p1, v0, v4}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V

    .line 5792
    :cond_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5794
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5792
    :goto_1
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 5794
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5795
    throw p0
.end method

.method public requestUnbindProvider(Landroid/service/notification/IConditionProvider;)V
    .locals 4

    .line 6432
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 6433
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6436
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/ConditionProviders;->checkServiceToken(Landroid/service/notification/IConditionProvider;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p0

    .line 6437
    invoke-virtual {p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->getOwner()Lcom/android/server/notification/ManagedServices;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    const/4 v3, 0x0

    invoke-virtual {p1, p0, v0, v3}, Lcom/android/server/notification/ManagedServices;->setComponentState(Landroid/content/ComponentName;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6439
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6440
    throw p0
.end method

.method public final sanitizeSbn(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Landroid/service/notification/StatusBarNotification;
    .locals 14

    .line 5459
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v0

    const/4 v1, 0x0

    move/from16 v2, p2

    if-ne v0, v2, :cond_1

    .line 5460
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 5464
    :cond_0
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v9

    .line 5468
    invoke-virtual {v9, v1}, Landroid/app/Notification;->overrideAllowlistToken(Landroid/os/IBinder;)V

    .line 5469
    new-instance v2, Landroid/service/notification/StatusBarNotification;

    .line 5470
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 5471
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOpPkg()Ljava/lang/String;

    move-result-object v4

    .line 5472
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v5

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUid()I

    move-result v7

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getInitialPid()I

    move-result v8

    .line 5474
    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getUser()Landroid/os/UserHandle;

    move-result-object v10

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getOverrideGroupKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p3 .. p3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v12

    invoke-direct/range {v2 .. v13}, Landroid/service/notification/StatusBarNotification;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;Landroid/os/UserHandle;Ljava/lang/String;J)V

    return-object v2

    :cond_1
    return-object v1
.end method

.method public setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    .line 4566
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4567
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAdjustmentSupportedForPackage(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 4584
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAdjustmentTypeSupportedState(Landroid/service/notification/INotificationListener;Ljava/lang/String;Z)V
    .locals 4

    .line 4500
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4502
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4503
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-nez p2, :cond_0

    .line 4505
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 4507
    :cond_0
    :try_start_2
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget p1, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAdjustmentTypeSupportedState(ILjava/lang/String;Z)V

    .line 4508
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4512
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4508
    :goto_0
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 4510
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4511
    throw p0
.end method

.method public setAssistantAdjustmentKeyTypeState(IZ)V
    .locals 1

    .line 4535
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4536
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setAssistantAdjustmentKeyTypeState(IZ)V

    .line 4548
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setAutomaticZenRuleState(Ljava/lang/String;Landroid/service/notification/Condition;)V
    .locals 8

    .line 6339
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6340
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6341
    invoke-virtual {p2}, Landroid/service/notification/Condition;->validate()V

    .line 6343
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "setAutomaticZenRuleState"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6344
    iget v0, p2, Landroid/service/notification/Condition;->source:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 6345
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 6347
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6348
    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v6

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    move-object v4, p1

    move-object v5, p2

    .line 6347
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setAutomaticZenRuleState(Landroid/os/UserHandle;Ljava/lang/String;Landroid/service/notification/Condition;II)V

    return-void
.end method

.method public setBubblesAllowed(Ljava/lang/String;II)V
    .locals 2

    .line 4383
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4384
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setBubblesAllowed(Ljava/lang/String;II)V

    .line 4385
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setCanBePromoted(Ljava/lang/String;IZZ)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    .line 4615
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4619
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-virtual {v3, v1, v4, v2, v5}, Lcom/android/server/notification/PreferencesHelper;->setCanBePromoted(Ljava/lang/String;IZZ)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4622
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4624
    :try_start_0
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    .line 4625
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    .line 4624
    invoke-static {v5, v6, v1, v7}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindAppNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v5

    .line 4626
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const v7, -0x40001

    const/4 v8, 0x1

    const/high16 v9, 0x40000

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_1

    .line 4628
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v10

    invoke-virtual {v10}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 4629
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v10

    if-le v10, v8, :cond_1

    .line 4630
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v7, v6, Landroid/app/Notification;->flags:I

    or-int/2addr v7, v9

    iput v7, v6, Landroid/app/Notification;->flags:I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_2

    :cond_1
    if-nez v2, :cond_0

    .line 4632
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v8, v6, Landroid/app/Notification;->flags:I

    and-int/2addr v7, v8

    iput v7, v6, Landroid/app/Notification;->flags:I

    goto :goto_0

    .line 4636
    :cond_2
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v5, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    .line 4637
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 4636
    invoke-static {v5, v6, v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mfindAppNotificationByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 4638
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v13, v4

    check-cast v13, Lcom/android/server/notification/NotificationRecord;

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    .line 4639
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4640
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    invoke-virtual {v5, v6, v9}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_4

    .line 4641
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 4642
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v5

    if-le v5, v8, :cond_4

    .line 4643
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    or-int/2addr v6, v9

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 4647
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    move-result-object v5

    .line 4648
    invoke-interface {v5, v4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v16

    .line 4651
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v11, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 4652
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 4651
    invoke-virtual {v4, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    :cond_4
    if-nez v2, :cond_3

    .line 4655
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 4656
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v6

    iget v6, v6, Landroid/app/Notification;->flags:I

    invoke-virtual {v5, v6, v9}, Lcom/android/server/notification/NotificationManagerService;->hasFlag(II)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 4657
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object v5

    iget v6, v5, Landroid/app/Notification;->flags:I

    and-int/2addr v6, v7

    iput v6, v5, Landroid/app/Notification;->flags:I

    .line 4658
    iget-object v5, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    move-result-object v5

    .line 4659
    invoke-interface {v5, v4}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v16

    .line 4660
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v11, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v10, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 4661
    invoke-virtual {v13}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v12

    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-direct/range {v10 .. v16}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 4660
    invoke-virtual {v4, v10}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/16 :goto_1

    .line 4666
    :cond_5
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4667
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4666
    :goto_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_6
    return-void
.end method

.method public setHideSilentStatusIcons(Z)V
    .locals 1

    .line 4402
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4404
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/PreferencesHelper;->setHideSilentStatusIcons(Z)V

    .line 4405
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    .line 4407
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onStatusBarIconsBehaviorChanged(Z)V

    return-void
.end method

.method public setInterruptionFilter(Ljava/lang/String;IZ)V
    .locals 12

    .line 6395
    const-string/jumbo v0, "setInterruptionFilter"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, -0x1

    .line 6396
    invoke-static {p2, v1}, Landroid/app/NotificationManager;->zenModeFromInterruptionFilter(II)I

    move-result v4

    if-eq v4, v1, :cond_1

    .line 6398
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 6399
    invoke-virtual {p0, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6400
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 6402
    invoke-virtual {p0, p1, v9}, Lcom/android/server/notification/NotificationManagerService$12;->canManageGlobalZenPolicy(Ljava/lang/String;I)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6403
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, v3, p1, v9, v4}, Lcom/android/server/notification/ZenModeHelper;->applyGlobalZenModeAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;II)V

    return-void

    .line 6407
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v10

    .line 6409
    :try_start_0
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, p2, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v6

    const-string/jumbo v7, "setInterruptionFilter"

    const/4 v5, 0x0

    move-object v8, p1

    invoke-virtual/range {v2 .. v9}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6413
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6414
    throw p0

    .line 6397
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid filter: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V
    .locals 1

    .line 4691
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4692
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setInvalidMsgAppDemoted(Ljava/lang/String;IZ)V

    .line 4693
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setListenerFilter(Landroid/content/ComponentName;ILandroid/service/notification/NotificationListenerFilter;)V
    .locals 1

    .line 4425
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4426
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p1

    invoke-virtual {v0, p1, p3}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setNotificationListenerFilter(Landroid/util/Pair;Landroid/service/notification/NotificationListenerFilter;)V

    .line 4428
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setManualZenRuleDeviceEffects(Landroid/service/notification/ZenDeviceEffects;)V
    .locals 7

    .line 6229
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6230
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 6232
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v0, 0x1

    .line 6233
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v4

    const-string v5, "Update manual mode non-policy settings"

    .line 6234
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    move-object v3, p1

    .line 6232
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setManualZenRuleDeviceEffects(Landroid/os/UserHandle;Landroid/service/notification/ZenDeviceEffects;ILjava/lang/String;I)V

    return-void
.end method

.method public setNASMigrationDoneAndResetDefault(IZ)V
    .locals 1

    .line 6881
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6882
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->setNASMigrationDone(I)V

    if-eqz p2, :cond_0

    .line 6884
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->resetDefaultFromConfig()V

    return-void

    .line 6886
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->clearDefaults()V

    return-void
.end method

.method public setNotificationAssistantAccessGranted(Landroid/content/ComponentName;Z)V
    .locals 1

    .line 6933
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6932
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V

    return-void
.end method

.method public setNotificationAssistantAccessGrantedForUser(Landroid/content/ComponentName;IZ)V
    .locals 4

    .line 6998
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6999
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUm(Lcom/android/server/notification/NotificationManagerService;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->getEnabledProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 7000
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v3, v1, v2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->setUserSet(IZ)V

    goto :goto_0

    .line 7002
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7004
    :try_start_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/notification/NotificationManagerService;->setNotificationAssistantAccessGrantedForUserInternal(Landroid/content/ComponentName;IZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7007
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7008
    throw p0
.end method

.method public setNotificationDelegate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 4704
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4705
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 4706
    invoke-static {v0}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v1

    if-nez p2, :cond_0

    .line 4708
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p2, p2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p2, p1, v0}, Lcom/android/server/notification/PreferencesHelper;->revokeNotificationDelegate(Ljava/lang/String;I)V

    .line 4709
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 4712
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 4715
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const-wide/32 v3, 0xc0000

    .line 4713
    invoke-interface {v2, p2, v3, v4, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4717
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, p1, v0, p2, v1}, Lcom/android/server/notification/PreferencesHelper;->setNotificationDelegate(Ljava/lang/String;ILjava/lang/String;I)V

    .line 4719
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 4722
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    :cond_1
    return-void
.end method

.method public setNotificationListenerAccessGranted(Landroid/content/ComponentName;ZZ)V
    .locals 1

    .line 6926
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6925
    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V

    return-void
.end method

.method public setNotificationListenerAccessGrantedForUser(Landroid/content/ComponentName;IZZ)V
    .locals 9

    .line 6939
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6940
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    if-eq v0, p2, :cond_0

    .line 6941
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setNotificationListenerAccessGrantedForUser for user "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.permission.INTERACT_ACROSS_USERS"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 6945
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/pm/UserManagerInternal;

    move-result-object v0

    .line 6946
    invoke-virtual {v0, p2}, Lcom/android/server/pm/UserManagerInternal;->isVisibleBackgroundFullUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 6954
    :cond_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->checkNotificationListenerAccess()V

    if-eqz p3, :cond_3

    .line 6955
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sget v1, Landroid/app/NotificationManager;->MAX_SERVICE_COMPONENT_NAME_LENGTH:I

    if-gt v0, v1, :cond_2

    goto :goto_0

    .line 6957
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Component name too long: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6958
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    :goto_0
    if-nez p4, :cond_4

    .line 6960
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->isNotificationListenerAccessUserSet(Landroid/content/ComponentName;I)Z

    move-result v0

    if-eqz v0, :cond_4

    :goto_1
    return-void

    .line 6964
    :cond_4
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 6966
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v0

    .line 6967
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->getRequiredPermission()Ljava/lang/String;

    move-result-object v5

    .line 6966
    invoke-interface {v0, v3, v4, v5}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6968
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 6969
    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move v5, p2

    move v7, p3

    move v8, p4

    .line 6968
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    move-result p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p2, :cond_5

    .line 6987
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 6975
    :cond_5
    :try_start_1
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZZ)Z

    .line 6978
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance p3, Landroid/content/Intent;

    const-string p4, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {p3, p4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6980
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 p3, 0x40000000    # 2.0f

    .line 6981
    invoke-virtual {p1, p3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 6982
    invoke-static {v5}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    const/4 p4, 0x0

    .line 6978
    invoke-virtual {p2, p1, p3, p4}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6984
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 6987
    :cond_6
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6988
    throw p0
.end method

.method public setNotificationPolicy(Ljava/lang/String;Landroid/app/NotificationManager$Policy;Z)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    .line 6746
    const-string/jumbo v4, "setNotificationPolicy"

    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(Ljava/lang/String;Ljava/lang/String;)V

    .line 6747
    invoke-virtual {v0, v3, v4}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6748
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 6749
    invoke-virtual {v0, v3}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v3

    .line 6750
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v5

    .line 6752
    iget-object v6, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v6}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$misCallerSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v6

    .line 6753
    invoke-virtual {v0, v1, v4}, Lcom/android/server/notification/NotificationManagerService$12;->canManageGlobalZenPolicy(Ljava/lang/String;I)Z

    move-result v7

    .line 6755
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 6757
    :try_start_0
    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v10, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 6758
    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v11

    const-wide/16 v12, 0x0

    .line 6757
    invoke-interface {v10, v1, v12, v13, v11}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    .line 6759
    iget-object v11, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v11, v11, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v11, v5}, Lcom/android/server/notification/ZenModeHelper;->getNotificationPolicy(Landroid/os/UserHandle;)Landroid/app/NotificationManager$Policy;

    move-result-object v11

    .line 6761
    iget v12, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v13, 0x1c

    if-ge v12, v13, :cond_0

    .line 6762
    iget v12, v2, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit16 v12, v12, -0xe1

    .line 6768
    iget v13, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    and-int/lit8 v14, v13, 0x20

    or-int/2addr v12, v14

    and-int/lit8 v14, v13, 0x40

    or-int/2addr v12, v14

    and-int/lit16 v13, v13, 0x80

    or-int/2addr v12, v13

    .line 6775
    new-instance v13, Landroid/app/NotificationManager$Policy;

    iget v14, v2, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v15, v2, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v2, v2, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    invoke-direct {v13, v12, v14, v15, v2}, Landroid/app/NotificationManager$Policy;-><init>(IIII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_2

    :cond_0
    move-object v13, v2

    .line 6779
    :goto_0
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v12, 0x1e

    if-ge v2, v12, :cond_1

    .line 6780
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v12, v13, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v14, v11, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    const/16 v15, 0x100

    invoke-virtual {v2, v12, v15, v14}, Lcom/android/server/notification/NotificationManagerService;->correctCategory(III)I

    move-result v17

    .line 6784
    new-instance v16, Landroid/app/NotificationManager$Policy;

    iget v2, v13, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v12, v13, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v13, v13, Landroid/app/NotificationManager$Policy;->suppressedVisualEffects:I

    iget v14, v11, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move/from16 v18, v2

    move/from16 v19, v12

    move/from16 v20, v13

    move/from16 v21, v14

    invoke-direct/range {v16 .. v21}, Landroid/app/NotificationManager$Policy;-><init>(IIIII)V

    move-object/from16 v13, v16

    .line 6789
    :cond_1
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget v12, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-virtual {v2, v13, v11, v12}, Lcom/android/server/notification/NotificationManagerService;->calculateSuppressedVisualEffects(Landroid/app/NotificationManager$Policy;Landroid/app/NotificationManager$Policy;I)I

    move-result v18

    const/4 v2, -0x1

    if-eqz v6, :cond_2

    .line 6802
    iget v6, v13, Landroid/app/NotificationManager$Policy;->state:I

    if-eq v6, v2, :cond_2

    .line 6804
    invoke-virtual {v11}, Landroid/app/NotificationManager$Policy;->hasPriorityChannels()Z

    move-result v2

    .line 6805
    invoke-virtual {v13}, Landroid/app/NotificationManager$Policy;->allowPriorityChannels()Z

    move-result v6

    .line 6803
    invoke-static {v2, v6}, Landroid/app/NotificationManager$Policy;->policyState(ZZ)I

    move-result v2

    :cond_2
    move/from16 v19, v2

    .line 6807
    new-instance v14, Landroid/app/NotificationManager$Policy;

    iget v15, v13, Landroid/app/NotificationManager$Policy;->priorityCategories:I

    iget v2, v13, Landroid/app/NotificationManager$Policy;->priorityCallSenders:I

    iget v6, v13, Landroid/app/NotificationManager$Policy;->priorityMessageSenders:I

    iget v11, v13, Landroid/app/NotificationManager$Policy;->priorityConversationSenders:I

    move/from16 v16, v2

    move/from16 v17, v6

    move/from16 v20, v11

    invoke-direct/range {v14 .. v20}, Landroid/app/NotificationManager$Policy;-><init>(IIIIII)V

    if-nez v7, :cond_3

    .line 6817
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v5, v1, v4, v14}, Lcom/android/server/notification/ZenModeHelper;->applyGlobalPolicyAsImplicitZenRule(Landroid/os/UserHandle;Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    goto :goto_1

    .line 6820
    :cond_3
    iget v2, v10, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v1, v2, v14}, Lcom/android/server/notification/ZenLog;->traceSetNotificationPolicy(Ljava/lang/String;ILandroid/app/NotificationManager$Policy;)V

    .line 6822
    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v0, v5, v14, v3, v4}, Lcom/android/server/notification/ZenModeHelper;->setNotificationPolicy(Landroid/os/UserHandle;Landroid/app/NotificationManager$Policy;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6827
    :goto_1
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 6825
    :goto_2
    :try_start_1
    const-string v1, "NotificationService"

    const-string v2, "Failed to set notification policy"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6827
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_3
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6828
    throw v0
.end method

.method public setNotificationPolicyAccessGranted(Ljava/lang/String;Z)V
    .locals 1

    .line 6683
    invoke-static {}, Landroid/app/INotificationManager$Stub;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 6682
    invoke-virtual {p0, p1, v0, p2}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationPolicyAccessGrantedForUser(Ljava/lang/String;IZ)V
    .locals 5

    .line 6689
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrShell(Lcom/android/server/notification/NotificationManagerService;)V

    .line 6690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 6692
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAllowedManagedServicePackages(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/util/function/TriPredicate;

    move-result-object v2

    .line 6693
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/notification/ConditionProviders;->getRequiredPermission()Ljava/lang/String;

    move-result-object v4

    .line 6692
    invoke-interface {v2, p1, v3, v4}, Lcom/android/internal/util/function/TriPredicate;->test(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6694
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, p2, v3, p3}, Lcom/android/server/notification/ManagedServices;->setPackageOrComponentEnabled(Ljava/lang/String;IZZ)Z

    move-result p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p3, :cond_0

    .line 6708
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 6700
    :cond_0
    :try_start_1
    iget-object p3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p3}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p3

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.app.action.NOTIFICATION_POLICY_ACCESS_GRANTED_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6702
    invoke-virtual {v2, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/high16 v2, 0x4000000

    .line 6703
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 6704
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v2, 0x0

    .line 6700
    invoke-virtual {p3, p1, p2, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 6705
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 6708
    :cond_1
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6709
    throw p0
.end method

.method public setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    .locals 3

    .line 4284
    const-string/jumbo v0, "setNotificationsEnabledForPackage"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4285
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/server/notification/PermissionHelper;->hasPermission(I)Z

    move-result v0

    if-ne v0, p3, :cond_0

    return-void

    .line 4289
    :cond_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPermissionHelper(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/PermissionHelper;

    move-result-object v0

    .line 4290
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const/4 v2, 0x1

    .line 4289
    invoke-virtual {v0, p1, v1, p3, v2}, Lcom/android/server/notification/PermissionHelper;->setNotificationPermission(Ljava/lang/String;IZZ)V

    .line 4291
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    xor-int/lit8 v1, p3, 0x1

    invoke-static {v0, p1, p2, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$msendAppBlockStateChangedBroadcast(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;IZ)V

    .line 4293
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmMetricsLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/internal/logging/MetricsLogger;

    move-result-object v0

    new-instance v1, Landroid/metrics/LogMaker;

    const/16 v2, 0x93

    invoke-direct {v1, v2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 v2, 0x4

    .line 4294
    invoke-virtual {v1, v2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4295
    invoke-virtual {v1, p1}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4296
    invoke-virtual {v1, p3}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object v1

    .line 4293
    invoke-virtual {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    .line 4297
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmNotificationChannelLogger(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationChannelLogger;

    move-result-object p0

    invoke-interface {p0, p2, p1, p3}, Lcom/android/server/notification/NotificationChannelLogger;->logAppNotificationsAllowed(ILjava/lang/String;Z)V

    return-void
.end method

.method public setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V
    .locals 0

    .line 4318
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V

    return-void
.end method

.method public setNotificationsShownFromListener(Landroid/service/notification/INotificationListener;[Ljava/lang/String;)V
    .locals 10

    .line 5800
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5802
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5803
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-nez p2, :cond_0

    .line 5805
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto/16 :goto_2

    .line 5807
    :cond_0
    :try_start_2
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5808
    array-length v4, p2

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_5

    .line 5810
    iget-object v6, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v6, v6, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    aget-object v7, p2, v5

    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-nez v6, :cond_1

    goto :goto_1

    .line 5812
    :cond_1
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v7

    .line 5813
    iget v8, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->userid:I

    if-eq v7, v8, :cond_2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_2

    iget-object v8, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v8}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v8

    .line 5814
    invoke-virtual {v8, v7}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isCurrentProfile(I)Z

    move-result v7

    if-nez v7, :cond_2

    goto :goto_1

    .line 5817
    :cond_2
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5818
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->isSeen()Z

    move-result v7

    if-nez v7, :cond_4

    .line 5819
    sget-boolean v7, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "NotificationService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Marking notification as seen "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, p2, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5820
    :cond_3
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->reportSeen(Lcom/android/server/notification/NotificationRecord;)V

    .line 5821
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->setSeen()V

    .line 5822
    iget-object v7, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v7, v6}, Lcom/android/server/notification/NotificationManagerService;->maybeRecordInterruptionLocked(Lcom/android/server/notification/NotificationRecord;)V

    :cond_4
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 5825
    :cond_5
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_6

    .line 5826
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, v3}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onNotificationsSeenLocked(Ljava/util/ArrayList;)V

    .line 5828
    :cond_6
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 5830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    .line 5828
    :goto_2
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 5830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5831
    throw p0
.end method

.method public setOnNotificationPostedTrimFromListener(Landroid/service/notification/INotificationListener;I)V
    .locals 2

    .line 6146
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 6147
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    if-nez p1, :cond_0

    .line 6148
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 6149
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->setOnNotificationPostedTrimLocked(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;I)V

    .line 6150
    monitor-exit v0

    return-void

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setPrivateNotificationsAllowed(Z)V
    .locals 3

    .line 7186
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 7187
    invoke-virtual {v0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.CONTROL_KEYGUARD_SECURE_NOTIFICATIONS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 7191
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v0

    if-eq p1, v0, :cond_0

    .line 7192
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fputmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;Z)V

    .line 7194
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.KEYGUARD_PRIVATE_NOTIFICATIONS_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmLockScreenAllowSecureNotifications(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    .line 7196
    const-string v2, "android.app.extra.KM_PRIVATE_NOTIFS_ALLOWED"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.permission.STATUS_BAR_SERVICE"

    .line 7194
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 7201
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    :cond_0
    return-void

    .line 7188
    :cond_1
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Requires CONTROL_KEYGUARD_SECURE_NOTIFICATIONS permission"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setShowBadge(Ljava/lang/String;IZ)V
    .locals 1

    .line 4455
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4456
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->setShowBadge(Ljava/lang/String;IZ)V

    .line 4457
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public setToastRateLimitingEnabled(Z)V
    .locals 6

    .line 4176
    invoke-super {p0}, Landroid/app/INotificationManager$Stub;->setToastRateLimitingEnabled_enforcePermission()V

    .line 4178
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mToastQueue:Ljava/util/ArrayList;

    monitor-enter v0

    .line 4179
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 4180
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-eqz p1, :cond_1

    .line 4182
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4184
    :try_start_1
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    invoke-interface {p1, v1}, Landroid/content/pm/IPackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    .line 4186
    const-string p0, "NotificationService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setToastRateLimitingEnabled method haven\'t found any packages for the  given uid: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", toast rate limiter not reset for that uid."

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4189
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_1

    .line 4191
    :cond_0
    :try_start_3
    array-length v1, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p1, v3

    .line 4192
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimiter(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/utils/quota/MultiRateLimiter;

    move-result-object v5

    invoke-virtual {v5, v2, v4}, Lcom/android/server/utils/quota/MultiRateLimiter;->clear(ILjava/lang/String;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4195
    :goto_1
    :try_start_4
    const-string p1, "NotificationService"

    const-string v1, "Failed to reset toast rate limiter for given uid"

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 4198
    :cond_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmToastRateLimitingDisabledUids(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Set;

    move-result-object p0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4200
    :cond_2
    :goto_2
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0
.end method

.method public setZenMode(ILandroid/net/Uri;Ljava/lang/String;Z)V
    .locals 11

    .line 6166
    const-string v0, "INotificationManager.setZenMode"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 6167
    const-string/jumbo v0, "setZenMode"

    invoke-virtual {p0, p4, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6168
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 6170
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 6171
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v9

    .line 6173
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6174
    invoke-virtual {p0, p4}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v5

    const/4 v7, 0x0

    move v3, p1

    move-object v4, p2

    move-object v6, p3

    .line 6173
    invoke-virtual/range {v1 .. v8}, Lcom/android/server/notification/ZenModeHelper;->setManualZenMode(Landroid/os/UserHandle;ILandroid/net/Uri;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6176
    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v9, v10}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6177
    throw p0
.end method

.method public shouldHideSilentStatusIcons(Ljava/lang/String;)Z
    .locals 1

    .line 4390
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSameApp(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 4392
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrPhone()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v0

    .line 4393
    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->isListenerPackage(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 4396
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Only available for notification listeners"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 4394
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p0}, Lcom/android/server/notification/PreferencesHelper;->shouldHideSilentStatusIcons()Z

    move-result p0

    return p0
.end method

.method public silenceNotificationSound()V
    .locals 1

    .line 4277
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 4279
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mNotificationDelegate:Lcom/android/server/notification/NotificationDelegate;

    invoke-interface {p0}, Lcom/android/server/notification/NotificationDelegate;->clearEffects()V

    return-void
.end method

.method public snoozeNotificationUntilContextFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 5863
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5864
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5866
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-wide/16 v4, -0x1

    move-object v2, p1

    move-object v3, p2

    move-object v6, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(ILandroid/service/notification/INotificationListener;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5869
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5870
    throw p0
.end method

.method public snoozeNotificationUntilFromListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;J)V
    .locals 9

    .line 5881
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5882
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 5884
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v6, 0x0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/notification/NotificationManagerService;->snoozeNotificationInt(ILandroid/service/notification/INotificationListener;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5886
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5887
    throw p0
.end method

.method public unlockAllNotificationChannels()V
    .locals 1

    .line 5079
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystem(Lcom/android/server/notification/NotificationManagerService;)V

    .line 5080
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0}, Lcom/android/server/notification/PreferencesHelper;->unlockAllNotificationChannels()V

    .line 5081
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unlockNotificationChannel(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    .line 5072
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5073
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/notification/PreferencesHelper;->unlockNotificationChannelImportance(Ljava/lang/String;ILjava/lang/String;)V

    .line 5074
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public unregisterCallNotificationEventListener(Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/ICallNotificationEventCallback;)V
    .locals 3

    .line 5611
    invoke-virtual {p0}, Landroid/app/INotificationManager$Stub;->unregisterCallNotificationEventListener_enforcePermission()V

    .line 5612
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 5613
    :try_start_0
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    const/4 v2, -0x2

    if-eq v1, v2, :cond_0

    .line 5614
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmAmi(Lcom/android/server/notification/NotificationManagerService;)Landroid/app/ActivityManagerInternal;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v1

    .line 5617
    :goto_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mCallNotificationEventCallbacks:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArrayMap;

    if-nez p0, :cond_1

    .line 5619
    monitor-exit v0

    return-void

    .line 5622
    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/RemoteCallbackList;

    if-nez p0, :cond_2

    .line 5624
    monitor-exit v0

    return-void

    .line 5626
    :cond_2
    invoke-virtual {p0, p3}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 5627
    const-string p0, "NotificationService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unregisterCallNotificationEventListener listener not found for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5631
    :cond_3
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterListener(Landroid/service/notification/INotificationListener;I)V
    .locals 0

    .line 5652
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/ManagedServices;->unregisterService(Landroid/os/IInterface;I)V

    return-void
.end method

.method public unsnoozeNotificationFromAssistant(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .locals 4

    .line 5897
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5899
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5900
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v3, v3, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    .line 5901
    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5902
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x0

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 5903
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    .line 5903
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 5905
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5906
    throw p0
.end method

.method public unsnoozeNotificationFromSystemListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;)V
    .locals 4

    .line 5917
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 5919
    :try_start_0
    iget-object v2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5920
    :try_start_1
    iget-object v3, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v3}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v3

    .line 5921
    invoke-virtual {v3, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 5922
    iget-boolean v3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->isSystem:Z

    if-eqz v3, :cond_0

    .line 5925
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v3, 0x1

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/server/notification/NotificationManagerService;->unsnoozeNotificationInt(Ljava/lang/String;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;Z)V

    .line 5926
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 5923
    :cond_0
    :try_start_2
    new-instance p0, Ljava/lang/SecurityException;

    const-string p1, "Not allowed to unsnooze before deadline"

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 5926
    :goto_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 5928
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 5929
    throw p0
.end method

.method public updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;Z)Z
    .locals 9

    .line 6240
    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$12;->validateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    .line 6241
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const-string/jumbo v1, "updateAutomaticZenRule"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforcePolicyAccess(ILjava/lang/String;)V

    .line 6242
    invoke-virtual {p0, p3, v1}, Lcom/android/server/notification/NotificationManagerService$12;->enforceUserOriginOnlyFromSystem(ZLjava/lang/String;)V

    .line 6243
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService$12;->getCallingZenUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 6245
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    .line 6246
    invoke-virtual {p0, p3}, Lcom/android/server/notification/NotificationManagerService$12;->computeZenOrigin(Z)I

    move-result v6

    const-string/jumbo v7, "updateAutomaticZenRule"

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object v4, p1

    move-object v5, p2

    .line 6245
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/notification/ZenModeHelper;->updateAutomaticZenRule(Landroid/os/UserHandle;Ljava/lang/String;Landroid/app/AutomaticZenRule;ILjava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method public updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V
    .locals 2

    .line 5065
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const-string v1, "Caller not system or sysui or shell"

    invoke-static {v0, v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcheckCallerIsSystemOrSystemUiOrShell(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 5066
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5067
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelFromPrivilegedListener(Landroid/service/notification/INotificationListener;Ljava/lang/String;Landroid/os/UserHandle;Landroid/app/NotificationChannel;)V
    .locals 3

    .line 7141
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7142
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7143
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    .line 7145
    invoke-virtual {p0, p1, p3, v0}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    .line 7147
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    .line 7148
    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result v1

    invoke-virtual {p4}, Landroid/app/NotificationChannel;->getId()Ljava/lang/String;

    move-result-object v2

    .line 7147
    invoke-virtual {p1, p2, v1, v2, v0}, Lcom/android/server/notification/PreferencesHelper;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;Z)Landroid/app/NotificationChannel;

    move-result-object p1

    .line 7149
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p0, v1, p4, p1}, Lcom/android/server/notification/NotificationManagerService$12;->verifyPrivilegedListenerUriPermission(ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V

    .line 7150
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0, p2, p3}, Lcom/android/server/notification/NotificationManagerService$12;->getUidForPackageAndUser(Ljava/lang/String;Landroid/os/UserHandle;)I

    move-result p0

    invoke-virtual {p1, p2, p0, p4, v0}, Lcom/android/server/notification/NotificationManagerService;->updateNotificationChannelInt(Ljava/lang/String;ILandroid/app/NotificationChannel;Z)V

    return-void
.end method

.method public updateNotificationChannelGroupForPackage(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;)V
    .locals 7

    .line 4784
    const-string v0, "Caller not system or systemui"

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$12;->enforceSystemOrSystemUI(Ljava/lang/String;)V

    .line 4785
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/NotificationManagerService;->createNotificationChannelGroup(Ljava/lang/String;ILandroid/app/NotificationChannelGroup;ZZ)V

    .line 4786
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void
.end method

.method public final validateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V
    .locals 3

    .line 6250
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6251
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6252
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->validate()V

    if-eqz p1, :cond_0

    .line 6258
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isImplicitRuleId(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 6259
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 6261
    :cond_0
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getOwner()Landroid/content/ComponentName;

    move-result-object p1

    if-nez p1, :cond_2

    .line 6262
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConfigurationActivity()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    goto :goto_0

    .line 6263
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "Rule must have a ConditionProviderService and/or configuration activity"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6267
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getConditionId()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6269
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationManagerService;->isCallerSystemOrSystemUi()Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 6272
    :cond_3
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    .line 6273
    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 6275
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_5

    .line 6276
    new-instance p2, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda3;

    invoke-direct {p2, p0, p1}, Lcom/android/server/notification/NotificationManagerService$12$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/notification/NotificationManagerService$12;I)V

    invoke-static {p2}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingSupplier;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_1

    .line 6279
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only Device Owners can use AutomaticZenRules with TYPE_MANAGED"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 6282
    :cond_5
    invoke-virtual {p2}, Landroid/app/AutomaticZenRule;->getType()I

    move-result p2

    const/4 v1, 0x3

    if-ne p2, v1, :cond_7

    .line 6283
    iget-object p2, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p2}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x1040030

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 6285
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 6286
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result p0

    if-eqz p0, :cond_6

    return-void

    .line 6288
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only the \'Wellbeing\' package can use AutomaticZenRules with TYPE_BEDTIME"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    :goto_1
    return-void
.end method

.method public final verifyPrivilegedListener(Landroid/service/notification/INotificationListener;Landroid/os/UserHandle;Z)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;
    .locals 2

    .line 7233
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    .line 7234
    :try_start_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/notification/ManagedServices;->checkServiceTokenLocked(Landroid/os/IInterface;)Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    move-result-object p1

    .line 7235
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7236
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->hasCompanionDevice(Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7237
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p3, :cond_0

    .line 7238
    :try_start_1
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    iget-object p3, p1, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    invoke-virtual {p0, p3}, Lcom/android/server/notification/ManagedServices;->isServiceTokenValidLocked(Landroid/os/IInterface;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 7241
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 7239
    :cond_0
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 7241
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 7243
    :cond_1
    :goto_1
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result p0

    if-eqz p0, :cond_2

    return-object p1

    .line 7244
    :cond_2
    new-instance p0, Ljava/lang/SecurityException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " does not have access"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    .line 7235
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p0
.end method

.method public final verifyPrivilegedListenerUriPermission(ILandroid/app/NotificationChannel;Landroid/app/NotificationChannel;)V
    .locals 0

    .line 7253
    invoke-virtual {p2}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p2

    if-eqz p3, :cond_0

    .line 7255
    invoke-virtual {p3}, Landroid/app/NotificationChannel;->getSound()Landroid/net/Uri;

    move-result-object p3

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p2, :cond_1

    .line 7256
    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 7257
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$12;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUgmInternal(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/uri/UriGrantsManagerInternal;

    move-result-object p0

    invoke-static {p0, p2, p1}, Lcom/android/server/notification/PermissionHelper;->grantUriPermission(Lcom/android/server/uri/UriGrantsManagerInternal;Landroid/net/Uri;I)V

    :cond_1
    return-void
.end method
