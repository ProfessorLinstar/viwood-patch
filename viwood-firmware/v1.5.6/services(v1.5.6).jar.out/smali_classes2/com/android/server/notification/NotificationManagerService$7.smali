.class public Lcom/android/server/notification/NotificationManagerService$7;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 2304
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final isProfileUnavailable(Ljava/lang/String;)Z
    .locals 0

    .line 2375
    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->privateSpaceFlagsEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2376
    const-string p0, "android.intent.action.PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 2377
    :cond_0
    const-string p0, "android.intent.action.MANAGED_PROFILE_UNAVAILABLE"

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 13

    .line 2307
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2309
    const-string v1, "android.intent.action.USER_STOPPED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, -0x1

    const-string v3, "android.intent.extra.user_handle"

    if-eqz v1, :cond_0

    .line 2310
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_6

    .line 2312
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v5

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v6

    const/4 v10, 0x0

    const/4 v12, 0x6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 2314
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/android/server/notification/ManagedServices;->onUserStopped(I)V

    .line 2315
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p1

    invoke-virtual {p1, v11}, Lcom/android/server/notification/ManagedServices;->onUserStopped(I)V

    .line 2316
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p0, v11}, Lcom/android/server/notification/ManagedServices;->onUserStopped(I)V

    return-void

    .line 2319
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationManagerService$7;->isProfileUnavailable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2320
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_6

    .line 2322
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v5

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v6

    const/4 v10, 0x0

    const/16 v12, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    .line 2324
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    invoke-virtual {p0, v11}, Lcom/android/server/notification/SnoozeHelper;->clearData(I)V

    return-void

    .line 2326
    :cond_1
    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    .line 2342
    :cond_2
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, -0x2710

    if-eqz v1, :cond_4

    .line 2343
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    if-eq p2, v2, :cond_6

    .line 2345
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2346
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 2347
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService;->allowDefaultApprovedServices(I)V

    .line 2349
    :cond_3
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationHistoryManager;->onUserAdded(I)V

    .line 2350
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmSettingsObserver(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$SettingsObserver;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;I)V

    return-void

    .line 2352
    :cond_4
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2353
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2354
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2355
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ZenModeHelper;->onUserRemoved(I)V

    .line 2356
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/PreferencesHelper;->onUserRemoved(I)V

    .line 2357
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserRemoved(I)V

    .line 2358
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 2359
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserRemoved(I)V

    .line 2360
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmHistoryManager(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationHistoryManager;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/NotificationHistoryManager;->onUserRemoved(I)V

    .line 2361
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, p1, Lcom/android/server/notification/NotificationManagerService;->mPreferencesHelper:Lcom/android/server/notification/PreferencesHelper;

    invoke-virtual {p1}, Lcom/android/server/notification/PreferencesHelper;->syncHasPriorityChannels()V

    .line 2362
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationManagerService;->handleSavePolicyFile()V

    return-void

    .line 2363
    :cond_5
    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2364
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 2365
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->updateCache(Landroid/content/Context;)V

    .line 2366
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mAssistants:Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;

    invoke-virtual {v0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationAssistants;->onUserUnlocked(I)V

    .line 2367
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmUserProfiles(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ManagedServices$UserProfiles;

    move-result-object v0

    invoke-virtual {v0, p2, p1}, Lcom/android/server/notification/ManagedServices$UserProfiles;->isProfileUser(ILandroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 2368
    iget-object p1, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmConditionProviders(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/ConditionProviders;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/server/notification/ManagedServices;->onUserUnlocked(I)V

    .line 2369
    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$7;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmListeners(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$NotificationListeners;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$NotificationListeners;->onUserUnlocked(I)V

    :cond_6
    return-void
.end method
