.class public Lcom/android/server/notification/NotificationManagerService$14;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Lcom/android/server/notification/ShortcutHelper$ShortcutListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    .line 8998
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShortcutRemoved(Ljava/lang/String;)V
    .locals 11

    .line 9002
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 9003
    :try_start_0
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 9004
    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_5

    :cond_0
    move-object v0, v2

    .line 9005
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9006
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1, v0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mgetPackageImportanceWithIdentity(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_1

    const/16 v0, 0x64

    if-ne v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    move v7, v0

    goto :goto_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 9009
    :goto_2
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v10, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v10

    .line 9010
    :try_start_1
    iget-object v0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v0, v0, Lcom/android/server/notification/NotificationManagerService;->mNotificationsByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v6, p1

    check-cast v6, Lcom/android/server/notification/NotificationRecord;

    if-eqz v6, :cond_2

    .line 9012
    invoke-virtual {v6, v2}, Lcom/android/server/notification/NotificationRecord;->setShortcutInfo(Landroid/content/pm/ShortcutInfo;)V

    .line 9014
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget v0, p1, Landroid/app/Notification;->flags:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p1, Landroid/app/Notification;->flags:I

    .line 9015
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object p1, v4, Lcom/android/server/notification/NotificationManagerService;->mHandler:Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    new-instance v3, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;

    .line 9017
    invoke-virtual {v6}, Lcom/android/server/notification/NotificationRecord;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    iget-object p0, p0, Lcom/android/server/notification/NotificationManagerService$14;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {p0}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$fgetmPostNotificationTrackerFactory(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;

    move-result-object p0

    .line 9019
    invoke-interface {p0, v2}, Lcom/android/server/notification/NotificationManagerService$PostNotificationTrackerFactory;->newTracker(Landroid/os/PowerManager$WakeLock;)Lcom/android/server/notification/NotificationManagerService$PostNotificationTracker;

    move-result-object v9

    const/4 v8, 0x0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/notification/NotificationManagerService$EnqueueNotificationRunnable;-><init>(Lcom/android/server/notification/NotificationManagerService;ILcom/android/server/notification/NotificationRecord;ZZLcom/android/server/notification/NotificationManagerService$PostNotificationTracker;)V

    .line 9015
    invoke-virtual {p1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 9021
    :cond_2
    :goto_3
    monitor-exit v10

    return-void

    :goto_4
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p0

    .line 9005
    :goto_5
    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method
