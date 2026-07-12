.class public Lcom/android/server/notification/NotificationManagerService$17;
.super Ljava/lang/Object;
.source "NotificationManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;

.field public final synthetic val$callingPid:I

.field public final synthetic val$callingUid:I

.field public final synthetic val$cancellationElapsedTimeMs:J

.field public final synthetic val$includeCurrentProfiles:Z

.field public final synthetic val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

.field public final synthetic val$mustNotHaveFlags:I

.field public final synthetic val$reason:I

.field public final synthetic val$userId:I


# direct methods
.method public static synthetic $r8$lambda$7xcXDOw4oRqp0sGOkb6DeyNjqYA(III)Z
    .locals 1

    .line 0
    const/16 v0, 0xb

    if-eq v0, p1, :cond_0

    const/4 v0, 0x3

    if-ne v0, p1, :cond_1

    :cond_0
    or-int/lit16 p0, p0, 0x1000

    :cond_1
    and-int/2addr p0, p2

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method public constructor <init>(Lcom/android/server/notification/NotificationManagerService;Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;IIIIIZJ)V
    .locals 0

    .line 11445
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iput-object p2, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    iput p3, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    iput p4, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    iput p5, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iput p6, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iput p7, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$mustNotHaveFlags:I

    iput-boolean p8, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iput-wide p9, p0, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 17

    move-object/from16 v0, p0

    .line 11448
    iget-object v1, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v1, v1, Lcom/android/server/notification/NotificationManagerService;->mNotificationLock:Ljava/lang/Object;

    monitor-enter v1

    .line 11450
    :try_start_0
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$listener:Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    move-object v13, v2

    goto :goto_1

    :cond_0
    iget-object v2, v2, Lcom/android/server/notification/ManagedServices$ManagedServiceInfo;->component:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 11451
    :goto_1
    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingUid:I

    iget v4, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$callingPid:I

    iget v6, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v9, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v10, v13

    invoke-static/range {v3 .. v10}, Lcom/android/server/EventLogTags;->writeNotificationCancelAll(IILjava/lang/String;IIIILjava/lang/String;)V

    .line 11454
    iget v2, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$mustNotHaveFlags:I

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    new-instance v8, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda0;

    invoke-direct {v8, v2, v3}, Lcom/android/server/notification/NotificationManagerService$17$$ExternalSyntheticLambda0;-><init>(II)V

    .line 11466
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mNotificationList:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iget-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x1

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11470
    iget-object v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v4, v3, Lcom/android/server/notification/NotificationManagerService;->mEnqueuedNotifications:Ljava/util/ArrayList;

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    iget v10, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget v12, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$reason:I

    iget-wide v5, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$cancellationElapsedTimeMs:J

    move-wide v15, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v11, 0x1

    const/4 v14, 0x0

    invoke-static/range {v3 .. v16}, Lcom/android/server/notification/NotificationManagerService;->-$$Nest$mcancelAllNotificationsByListLocked(Lcom/android/server/notification/NotificationManagerService;Ljava/util/ArrayList;Ljava/lang/String;ZLjava/lang/String;Lcom/android/server/notification/NotificationManagerService$FlagChecker;ZIZILjava/lang/String;ZJ)V

    .line 11474
    iget-object v2, v0, Lcom/android/server/notification/NotificationManagerService$17;->this$0:Lcom/android/server/notification/NotificationManagerService;

    iget-object v2, v2, Lcom/android/server/notification/NotificationManagerService;->mSnoozeHelper:Lcom/android/server/notification/SnoozeHelper;

    iget v3, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$userId:I

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationManagerService$17;->val$includeCurrentProfiles:Z

    invoke-virtual {v2, v3, v0}, Lcom/android/server/notification/SnoozeHelper;->cancel(IZ)V

    .line 11475
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
