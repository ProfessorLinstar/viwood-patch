.class Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;
.super Landroid/service/notification/NotificationListenerService;
.source "SensitiveContentProtectionManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/SensitiveContentProtectionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/SensitiveContentProtectionManagerService;)V
    .locals 0

    .line 456
    iput-object p1, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onListenerConnected()V
    .locals 4

    .line 459
    invoke-super {p0}, Landroid/service/notification/NotificationListenerService;->onListenerConnected()V

    .line 460
    const-string v0, "SensitiveContentProtectionManagerService.onListenerConnected"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 464
    :try_start_0
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 465
    :try_start_1
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 466
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 468
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 468
    :goto_1
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception p0

    .line 470
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 471
    throw p0
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 6

    .line 476
    invoke-super {p0, p1, p2}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 477
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationPosted"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_0

    .line 481
    :try_start_0
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Unable to parse null notification"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    :cond_0
    if-nez p2, :cond_1

    .line 486
    :try_start_1
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 490
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 491
    :try_start_3
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 492
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 496
    :cond_2
    :try_start_4
    invoke-static {p1, p2}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$smgetSensitivePackageFromNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$RankingMap;)Lcom/android/server/wm/SensitiveContentPackages$PackageInfo;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 499
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmWindowManager(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/wm/WindowManagerInternal;

    move-result-object v3

    new-instance v4, Landroid/util/ArraySet;

    .line 500
    invoke-static {p2}, Ljava/util/Set;->of(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 499
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowManagerInternal;->addBlockScreenCaptureForApps(Landroid/util/ArraySet;)V

    .line 503
    :cond_3
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object v3

    if-eqz v3, :cond_5

    if-eqz p2, :cond_4

    .line 505
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->-$$Nest$maddSeenOtpNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V

    goto :goto_0

    .line 507
    :cond_4
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmMediaProjectionSession(Lcom/android/server/SensitiveContentProtectionManagerService;)Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;

    move-result-object p0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;->-$$Nest$maddSeenNotificationKey(Lcom/android/server/SensitiveContentProtectionManagerService$MediaProjectionSession;Ljava/lang/String;)V

    .line 510
    :cond_5
    :goto_0
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 512
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 510
    :goto_1
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 512
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 513
    throw p0
.end method

.method public onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 4

    .line 518
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 519
    const-string v0, "SensitiveContentProtectionManagerService.onNotificationRankingUpdate"

    const-wide/32 v1, 0x80000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    if-nez p1, :cond_0

    .line 523
    :try_start_0
    const-string p0, "SensitiveContentProtect"

    const-string p1, "Ranking map not initialized."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 533
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 527
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    iget-object v0, v0, Lcom/android/server/SensitiveContentProtectionManagerService;->mSensitiveContentProtectionLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 528
    :try_start_2
    iget-object v3, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {v3}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$fgetmProjectionActive(Lcom/android/server/SensitiveContentProtectionManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 529
    iget-object p0, p0, Lcom/android/server/SensitiveContentProtectionManagerService$NotificationListener;->this$0:Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-static {p0, p1}, Lcom/android/server/SensitiveContentProtectionManagerService;->-$$Nest$mupdateAppsThatShouldBlockScreenCapture(Lcom/android/server/SensitiveContentProtectionManagerService;Landroid/service/notification/NotificationListenerService$RankingMap;)V

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_1

    .line 531
    :cond_1
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 533
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    .line 531
    :goto_1
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 533
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 534
    throw p0
.end method
