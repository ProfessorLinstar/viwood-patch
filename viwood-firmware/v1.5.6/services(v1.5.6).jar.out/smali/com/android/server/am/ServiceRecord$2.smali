.class public Lcom/android/server/am/ServiceRecord$2;
.super Ljava/lang/Object;
.source "ServiceRecord.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/am/ServiceRecord;

.field public final synthetic val$_foregroundNoti:Landroid/app/Notification;

.field public final synthetic val$appPid:I

.field public final synthetic val$appUid:I

.field public final synthetic val$byForegroundService:Z

.field public final synthetic val$localForegroundId:I

.field public final synthetic val$localPackageName:Ljava/lang/String;

.field public final synthetic val$record:Lcom/android/server/am/ServiceRecord;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;ILandroid/app/Notification;IIZLcom/android/server/am/ServiceRecord;)V
    .locals 0

    .line 1594
    iput-object p1, p0, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object p2, p0, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iput-object p4, p0, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    iput p5, p0, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iput p6, p0, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iput-boolean p7, p0, Lcom/android/server/am/ServiceRecord$2;->val$byForegroundService:Z

    iput-object p8, p0, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    move-object/from16 v1, p0

    .line 1596
    const-string v2, "ActivityManager"

    const-class v0, Lcom/android/server/notification/NotificationManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/server/notification/NotificationManagerInternal;

    if-nez v3, :cond_0

    goto/16 :goto_4

    .line 1602
    :cond_0
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/notification/NotificationManagerInternal;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z

    move-result v4

    iput-boolean v4, v0, Lcom/android/server/am/ServiceRecord;->mFgsHasNotificationPermission:Z

    .line 1604
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->val$_foregroundNoti:Landroid/app/Notification;

    .line 1606
    :try_start_0
    invoke-virtual {v0}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v4

    const/4 v13, 0x0

    if-nez v4, :cond_2

    .line 1611
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Attempted to start a foreground service ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->shortInstanceName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") with a broken notification (no icon: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1618
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 1617
    invoke-virtual {v5, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1620
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 1624
    :cond_1
    :goto_0
    :try_start_1
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v7, Landroid/os/UserHandle;

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v8, v8, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v6, v5, v13, v7}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v5

    .line 1627
    new-instance v6, Landroid/app/Notification$Builder;

    .line 1628
    invoke-virtual {v0}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 1631
    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v5, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    const/16 v5, 0x40

    const/4 v7, 0x1

    .line 1634
    invoke-virtual {v6, v5, v7}, Landroid/app/Notification$Builder;->setFlag(IZ)Landroid/app/Notification$Builder;

    .line 1636
    new-instance v5, Landroid/content/Intent;

    const-string v7, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1638
    const-string/jumbo v7, "package"

    iget-object v8, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1640
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v7, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v8, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iget v7, v7, Lcom/android/server/am/ServiceRecord;->userId:I

    .line 1642
    invoke-static {v7}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v19

    const/4 v15, 0x0

    const/high16 v17, 0xc000000

    const/16 v18, 0x0

    move-object/from16 v16, v5

    .line 1640
    invoke-static/range {v14 .. v19}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 1643
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const v8, 0x106001c

    invoke-virtual {v7, v8}, Landroid/content/Context;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 1646
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v8

    const v9, 0x104016a

    .line 1647
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 1646
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1651
    iget-object v7, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v7, v7, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    const v8, 0x1040169

    .line 1652
    invoke-virtual {v7, v8, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1651
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1656
    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1658
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    :catch_1
    :cond_2
    move-object v10, v0

    .line 1662
    :try_start_2
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    .line 1663
    invoke-virtual {v10}, Landroid/app/Notification;->getChannelId()Ljava/lang/String;

    move-result-object v5

    .line 1662
    invoke-interface {v3, v0, v4, v5}, Lcom/android/server/notification/NotificationManagerInternal;->getNotificationChannel(Ljava/lang/String;ILjava/lang/String;)Landroid/app/NotificationChannel;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v0, :cond_4

    const/16 v0, 0x1b

    .line 1666
    :try_start_3
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    .line 1667
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v6, v5, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v5, Lcom/android/server/am/ServiceRecord;->userId:I

    invoke-virtual {v4, v6, v13, v5}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 1669
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :catch_2
    move v4, v0

    :goto_1
    if-ge v4, v0, :cond_3

    goto :goto_2

    .line 1673
    :cond_3
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid channel for service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1678
    :cond_4
    :goto_2
    invoke-virtual {v10}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 1686
    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    iget v6, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v7, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iget v9, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget v11, v0, Lcom/android/server/am/ServiceRecord;->userId:I

    iget-boolean v12, v1, Lcom/android/server/am/ServiceRecord$2;->val$byForegroundService:Z

    const/4 v8, 0x0

    move-object v5, v4

    invoke-interface/range {v3 .. v12}, Lcom/android/server/notification/NotificationManagerInternal;->enqueueNotification(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILandroid/app/Notification;IZ)V

    .line 1690
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iput-object v10, v0, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    .line 1692
    iget-object v3, v0, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    iget-object v4, v0, Lcom/android/server/am/ServiceRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localForegroundId:I

    invoke-static {v0, v3, v4, v5, v13}, Lcom/android/server/am/ServiceRecord;->-$$Nest$msignalForegroundServiceNotification(Lcom/android/server/am/ServiceRecord;Ljava/lang/String;IIZ)V

    goto :goto_4

    .line 1683
    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "invalid service notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v4, v4, Lcom/android/server/am/ServiceRecord;->foregroundNoti:Landroid/app/Notification;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_0

    .line 1696
    :goto_3
    const-string v3, "Error showing notification for service"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1699
    iget-object v0, v1, Lcom/android/server/am/ServiceRecord$2;->this$0:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->ams:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, v1, Lcom/android/server/am/ServiceRecord$2;->val$record:Lcom/android/server/am/ServiceRecord;

    iget v3, v1, Lcom/android/server/am/ServiceRecord$2;->val$appUid:I

    iget v4, v1, Lcom/android/server/am/ServiceRecord$2;->val$appPid:I

    iget-object v5, v1, Lcom/android/server/am/ServiceRecord$2;->val$localPackageName:Ljava/lang/String;

    const/4 v6, 0x2

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveServices;->killMisbehavingService(Lcom/android/server/am/ServiceRecord;IILjava/lang/String;I)V

    :goto_4
    return-void
.end method
