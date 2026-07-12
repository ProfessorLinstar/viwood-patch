.class public Lcom/android/server/notification/NotificationManagerService$6;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 2195
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    .line 2198
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_9

    .line 2210
    :cond_0
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v5, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v6, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const/4 v8, 0x0

    if-nez v3, :cond_2

    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 2211
    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v9, "android.intent.action.PACKAGE_RESTARTED"

    .line 2212
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    .line 2213
    invoke-virtual {v0, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 2214
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2215
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2216
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    .line 2217
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    goto :goto_0

    :cond_1
    move v9, v8

    goto :goto_0

    :cond_2
    move v3, v8

    move v9, v3

    .line 2218
    :cond_3
    :goto_0
    const-string v10, "android.intent.extra.user_handle"

    const/4 v11, -0x1

    invoke-virtual {v2, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    const/4 v12, 0x1

    if-eqz v3, :cond_4

    .line 2222
    const-string v3, "android.intent.extra.REPLACING"

    .line 2223
    invoke-virtual {v2, v3, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v12

    goto :goto_1

    :cond_4
    move v3, v8

    .line 2224
    :goto_1
    sget-boolean v13, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v14, "NotificationService"

    if-eqz v13, :cond_5

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "action="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " removing="

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v14, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2225
    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v13, "android.intent.extra.changed_uid_list"

    const-string v15, "android.intent.extra.changed_package_list"

    if-eqz v7, :cond_6

    .line 2226
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2227
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    :goto_2
    move v4, v8

    move v5, v4

    goto/16 :goto_6

    .line 2228
    :cond_6
    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 2229
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2230
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v5, v8

    move v4, v12

    move v12, v5

    goto/16 :goto_6

    .line 2233
    :cond_7
    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 2234
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2235
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v8

    move v5, v12

    move v12, v4

    goto/16 :goto_6

    .line 2238
    :cond_8
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 2239
    const-string v0, "android.intent.extra.distraction_restrictions"

    .line 2240
    invoke-virtual {v2, v0, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_9

    .line 2244
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2245
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v8

    goto :goto_3

    .line 2249
    :cond_9
    invoke-virtual {v2, v15}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 2250
    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v2

    move v4, v12

    move v12, v8

    :goto_3
    move v5, v4

    move v4, v12

    move v12, v8

    goto :goto_6

    .line 2255
    :cond_a
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_b

    goto/16 :goto_9

    .line 2259
    :cond_b
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_c

    goto/16 :goto_9

    :cond_c
    if-eqz v9, :cond_f

    .line 2266
    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mPackageManager:Landroid/content/pm/IPackageManager;

    if-eq v10, v11, :cond_d

    move v5, v10

    goto :goto_4

    :cond_d
    move v5, v8

    :goto_4
    invoke-interface {v0, v4, v5}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eq v0, v12, :cond_e

    if-nez v0, :cond_f

    :cond_e
    move v0, v8

    goto :goto_5

    :catch_0
    move-exception v0

    .line 2277
    sget-boolean v5, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v5, :cond_f

    .line 2278
    const-string v5, "Exception trying to look up app enabled setting"

    invoke-static {v14, v5, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_1
    :cond_f
    move v0, v12

    .line 2284
    :goto_5
    new-array v5, v12, [Ljava/lang/String;

    aput-object v4, v5, v8

    .line 2285
    new-array v4, v12, [I

    const-string v6, "android.intent.extra.UID"

    invoke-virtual {v2, v6, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    aput v2, v4, v8

    move v12, v0

    move-object v2, v4

    move-object v0, v5

    goto/16 :goto_2

    :goto_6
    if-eqz v0, :cond_10

    .line 2287
    array-length v6, v0

    if-lez v6, :cond_10

    if-eqz v12, :cond_11

    .line 2289
    array-length v4, v0

    :goto_7
    if-ge v8, v4, :cond_10

    aget-object v15, v0, v8

    .line 2290
    iget-object v12, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_UID()I

    move-result v13

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$sfgetMY_PID()I

    move-result v14

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v16, 0x0

    const/16 v20, 0x5

    move/from16 v19, v10

    invoke-virtual/range {v12 .. v20}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIII)V

    move/from16 v6, v19

    add-int/lit8 v8, v8, 0x1

    move v10, v6

    goto :goto_7

    :cond_10
    move v6, v10

    goto :goto_8

    :cond_11
    move v6, v10

    if-eqz v4, :cond_12

    if-eqz v2, :cond_12

    .line 2293
    array-length v4, v2

    if-lez v4, :cond_12

    .line 2294
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    goto :goto_8

    :cond_12
    if-eqz v5, :cond_13

    if-eqz v2, :cond_13

    .line 2295
    array-length v4, v2

    if-lez v4, :cond_13

    .line 2296
    iget-object v4, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v4, v0, v2}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$munhideNotificationsForPackages(Lcom/android/server/notification/NotificationManagerService;[Ljava/lang/String;[I)V

    .line 2299
    :cond_13
    :goto_8
    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService$6;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    invoke-virtual {v1, v3, v6, v0, v2}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    :cond_14
    :goto_9
    return-void
.end method
