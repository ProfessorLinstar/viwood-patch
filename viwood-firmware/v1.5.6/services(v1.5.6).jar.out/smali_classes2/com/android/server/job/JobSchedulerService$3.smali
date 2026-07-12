.class public Lcom/android/server/job/JobSchedulerService$3;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/JobSchedulerService;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService;)V
    .locals 0

    .line 1396
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 12

    .line 1399
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 1400
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 1401
    const-string v1, "JobScheduler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receieved: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    :cond_0
    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->getPackageName(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 1404
    const-string v1, "android.intent.extra.UID"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1406
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v11, 0x0

    if-eqz v1, :cond_9

    .line 1407
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1409
    :try_start_0
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1410
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v4, :cond_8

    if-eq v5, v2, :cond_8

    .line 1414
    const-string p1, "android.intent.extra.changed_component_name_list"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1a

    .line 1417
    array-length p2, p1

    :goto_0
    if-ge v11, p2, :cond_5

    aget-object v0, p1, v11

    .line 1418
    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1419
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_1

    .line 1420
    const-string p2, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Package state change: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_1
    :try_start_1
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 1424
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1426
    invoke-interface {v0, v4, p2}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    :cond_2
    if-eqz p1, :cond_3

    .line 1430
    const-string p1, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " in user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    :cond_3
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1438
    :try_start_2
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app disabled"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v9, 0x7

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1444
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p2, v0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p2
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_4
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 1461
    :catch_0
    :cond_5
    :goto_1
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_6

    .line 1462
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Something in "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " changed. Reevaluating controller states."

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1465
    :cond_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1466
    :try_start_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_2
    if-ltz p2, :cond_7

    .line 1467
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v5}, Lcom/android/server/job/controllers/StateController;->reevaluateStateLocked(I)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_3

    .line 1469
    :cond_7
    monitor-exit p1

    goto/16 :goto_e

    :goto_3
    monitor-exit p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    .line 1472
    :cond_8
    const-string p0, "JobScheduler"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "PACKAGE_CHANGED for "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " / uid "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_2
    move-exception v0

    move-object p0, v0

    .line 1410
    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    .line 1474
    :cond_9
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1475
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1477
    :try_start_6
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1478
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 1479
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1480
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1481
    :try_start_7
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1482
    monitor-exit p1

    return-void

    :catchall_3
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :catchall_4
    move-exception v0

    move-object p0, v0

    .line 1478
    :try_start_8
    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw p0

    .line 1484
    :cond_a
    const-string v1, "android.intent.action.PACKAGE_FULLY_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1485
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1486
    :try_start_9
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1487
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    if-eqz v0, :cond_b

    .line 1489
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " (uid="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    :cond_b
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1492
    :try_start_a
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/util/SparseSetArray;->remove(I)V

    .line 1496
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app uninstalled"

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/16 v8, 0xd

    const/4 v9, 0x7

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1500
    :goto_4
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v11, p2, :cond_c

    .line 1501
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, v4, v5}, Lcom/android/server/job/controllers/StateController;->onAppRemovedLocked(Ljava/lang/String;I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object p0, v0

    goto :goto_5

    .line 1503
    :cond_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mDebuggableApps:Landroid/util/ArrayMap;

    invoke-virtual {p2, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1504
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p0, v4, v5}, Lcom/android/server/job/JobConcurrencyManager;->onAppRemovedLocked(Ljava/lang/String;I)V

    .line 1505
    monitor-exit p1

    return-void

    :goto_5
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw p0

    :catchall_6
    move-exception v0

    move-object p0, v0

    .line 1487
    :try_start_b
    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_6

    throw p0

    .line 1506
    :cond_d
    const-string v1, "android.intent.action.UID_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 1507
    const-string p1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_1a

    .line 1508
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1509
    :try_start_c
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mUidBiasOverride:Landroid/util/SparseIntArray;

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1510
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidCapabilities(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;

    move-result-object p2

    invoke-virtual {p2, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1511
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidProcStates(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseIntArray;

    move-result-object p0

    invoke-virtual {p0, v5}, Landroid/util/SparseIntArray;->delete(I)V

    .line 1512
    monitor-exit p1

    return-void

    :catchall_7
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    throw p0

    .line 1514
    :cond_e
    const-string v1, "android.intent.action.USER_ADDED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1515
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 1516
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v1, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1517
    :goto_6
    :try_start_d
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v11, p2, :cond_f

    .line 1518
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {p2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {p2, p1}, Lcom/android/server/job/controllers/StateController;->onUserAddedLocked(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object p0, v0

    goto :goto_7

    .line 1520
    :cond_f
    monitor-exit v1

    return-void

    :goto_7
    monitor-exit v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_8

    throw p0

    .line 1521
    :cond_10
    const-string v1, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    .line 1522
    const-string p1, "android.intent.extra.user_handle"

    invoke-virtual {p2, p1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    if-eqz v0, :cond_11

    .line 1524
    const-string p2, "JobScheduler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Removing jobs for user: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :cond_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p2

    .line 1527
    :try_start_e
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmUidToPackageCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseSetArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseSetArray;->clear()V

    .line 1528
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0, p1}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForUserLocked(Lcom/android/server/job/JobSchedulerService;I)V

    .line 1529
    :goto_8
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_12

    .line 1530
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object v0, v0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->onUserRemovedLocked(I)V

    add-int/lit8 v11, v11, 0x1

    goto :goto_8

    :catchall_9
    move-exception v0

    move-object p0, v0

    goto :goto_c

    .line 1532
    :cond_12
    monitor-exit p2
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_9

    .line 1533
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mConcurrencyManager:Lcom/android/server/job/JobConcurrencyManager;

    invoke-virtual {p2, p1}, Lcom/android/server/job/JobConcurrencyManager;->onUserRemoved(I)V

    .line 1534
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v1

    monitor-enter v1

    .line 1535
    :try_start_f
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {p2}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_9
    if-ltz p2, :cond_14

    .line 1536
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v0

    .line 1537
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    if-ne p1, v0, :cond_13

    .line 1538
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    invoke-static {v0}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$fgetmPermissionCache(Lcom/android/server/job/JobSchedulerService;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->removeAt(I)V

    goto :goto_a

    :catchall_a
    move-exception v0

    move-object p0, v0

    goto :goto_b

    :cond_13
    :goto_a
    add-int/lit8 p2, p2, -0x1

    goto :goto_9

    .line 1541
    :cond_14
    monitor-exit v1

    return-void

    :goto_b
    monitor-exit v1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_a

    throw p0

    .line 1532
    :goto_c
    :try_start_10
    monitor-exit p2
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_9

    throw p0

    .line 1542
    :cond_15
    const-string p2, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_18

    if-eq v5, v2, :cond_1a

    .line 1547
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1548
    :try_start_11
    iget-object p2, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p2, p2, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {p2, v5}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Landroid/util/ArraySet;

    move-result-object p2

    .line 1549
    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    .line 1550
    invoke-virtual {p2}, Landroid/util/ArraySet;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_d
    if-ltz p1, :cond_1a

    .line 1551
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v0}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1552
    sget-boolean p1, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz p1, :cond_16

    .line 1553
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Restart query: package "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " has jobs"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1556
    :cond_16
    invoke-virtual {p0, v2}, Landroid/content/BroadcastReceiver;->setResultCode(I)V

    return-void

    :cond_17
    add-int/lit8 p1, p1, -0x1

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object p0, v0

    .line 1549
    :try_start_12
    monitor-exit p1
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_b

    throw p0

    .line 1561
    :cond_18
    const-string p2, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1a

    if-eq v5, v2, :cond_1a

    if-eqz v0, :cond_19

    .line 1565
    const-string p1, "JobScheduler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Removing jobs for pkg "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " at uid "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    :cond_19
    iget-object p1, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    iget-object p1, p1, Lcom/android/server/job/JobSchedulerService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1572
    :try_start_13
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService$3;->this$0:Lcom/android/server/job/JobSchedulerService;

    const-string v10, "app force stopped"

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/16 v8, 0xd

    const/4 v9, 0x0

    invoke-static/range {v3 .. v10}, Lcom/android/server/job/JobSchedulerService;->-$$Nest$mcancelJobsForPackageAndUidLocked(Lcom/android/server/job/JobSchedulerService;Ljava/lang/String;IZZIILjava/lang/String;)V

    .line 1577
    monitor-exit p1

    return-void

    :catchall_c
    move-exception v0

    move-object p0, v0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    throw p0

    :cond_1a
    :goto_e
    return-void
.end method
