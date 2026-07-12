.class public Lcom/android/server/devicestate/DeviceStateNotificationController;
.super Landroid/content/BroadcastReceiver;
.source "DeviceStateNotificationController.java"


# static fields
.field static final CHANNEL_ID:Ljava/lang/String; = "DeviceStateManager"

.field static final INTENT_ACTION_CANCEL_STATE:Ljava/lang/String; = "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

.field static final NOTIFICATION_ID:I = 0x1

.field static final NOTIFICATION_TAG:Ljava/lang/String; = "DeviceStateManager"


# instance fields
.field public final mCancelStateRunnable:Ljava/lang/Runnable;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Landroid/os/Handler;

.field public final mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

.field public final mNotificationManager:Landroid/app/NotificationManager;

.field public final mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public static synthetic $r8$lambda$CuoFR9Cw3hJ6lOWioprSwRSKPSA(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/devicestate/DeviceStateNotificationController;->lambda$showNotification$1(Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X1sMrSa050sskockGAv0PMSfoHw(Lcom/android/server/devicestate/DeviceStateNotificationController;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->lambda$cancelNotification$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;)V
    .locals 7

    .line 69
    new-instance v4, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    invoke-direct {v4, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/NotificationManager;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 69
    invoke-direct/range {v0 .. v6}, Lcom/android/server/devicestate/DeviceStateNotificationController;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Runnable;Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;Landroid/content/pm/PackageManager;Landroid/app/NotificationManager;)V
    .locals 1

    .line 79
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 81
    iput-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    .line 82
    iput-object p3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    .line 83
    iput-object p4, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    .line 84
    iput-object p5, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 85
    iput-object p6, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    move-object p4, p2

    .line 86
    new-instance p2, Landroid/content/IntentFilter;

    const-string p3, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-direct {p2, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string p3, "android.permission.CONTROL_DEVICE_STATE"

    const/4 p5, 0x4

    move-object v0, p1

    move-object p1, p0

    move-object p0, v0

    invoke-virtual/range {p0 .. p5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public cancelNotification(I)V
    .locals 1

    .line 176
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 179
    :cond_0
    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final getApplicationLabel(I)Ljava/lang/String;
    .locals 3

    .line 354
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object p1

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-wide/16 v1, 0x0

    .line 357
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 356
    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 358
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getNotificationInfos()Landroid/util/SparseArray;
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 231
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationInfoProvider:Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;

    invoke-virtual {p0, v0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfoProvider;->getNotificationInfos(Ljava/util/Locale;)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$cancelNotification$0()V
    .locals 2

    .line 179
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "DeviceStateManager"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method public final synthetic lambda$showNotification$1(Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 225
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mNotificationManager:Landroid/app/NotificationManager;

    const/4 p1, 0x1

    invoke-virtual {p2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p2

    const-string v0, "DeviceStateManager"

    invoke-virtual {p0, v0, p1, p2}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    if-eqz p2, :cond_0

    .line 185
    const-string p1, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    iget-object p0, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mCancelStateRunnable:Ljava/lang/Runnable;

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public final showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 4

    .line 203
    new-instance v0, Landroid/app/NotificationChannel;

    const/4 v1, 0x4

    const-string v2, "DeviceStateManager"

    invoke-direct {v0, v2, p1, v1}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 205
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v3, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 206
    invoke-virtual {v1, p5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p5

    .line 207
    invoke-virtual {p5, p2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 208
    invoke-virtual {p2, p3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p2

    .line 209
    invoke-virtual {p2, p1}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p1

    const/4 p2, 0x1

    .line 210
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    .line 211
    invoke-virtual {p1, p4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p1

    const-string/jumbo p2, "sys"

    .line 212
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p1

    if-eqz p6, :cond_0

    if-eqz p7, :cond_0

    .line 215
    new-instance p2, Landroid/app/Notification$Action$Builder;

    const/4 p3, 0x0

    invoke-direct {p2, p3, p7, p6}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 219
    invoke-virtual {p2}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object p2

    .line 220
    invoke-virtual {p1, p2}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 223
    :cond_0
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mHandler:Landroid/os/Handler;

    new-instance p3, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, v0, p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/devicestate/DeviceStateNotificationController;Landroid/app/NotificationChannel;Landroid/app/Notification$Builder;)V

    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showPowerSaveNotificationIfNeeded(I)V
    .locals 12

    .line 154
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz p1, :cond_1

    .line 155
    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->hasPowerSaveModeNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 158
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.BATTERY_SAVER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 159
    iget-object v1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 161
    iget-object v5, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationTitle:Ljava/lang/String;

    iget-object v7, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->powerSaveModeNotificationContent:Ljava/lang/String;

    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const v0, 0x1040360

    .line 166
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x0

    const v9, 0x1080608

    move-object v4, p0

    .line 161
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public showStateActiveNotificationIfNeeded(II)V
    .locals 12

    .line 102
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz v0, :cond_2

    .line 103
    invoke-virtual {v0}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->hasActiveNotification()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getApplicationLabel(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 108
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.server.devicestate.INTENT_ACTION_CANCEL_STATE"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    .line 109
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 110
    iget-object p2, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x4000000

    invoke-static {p2, v2, p1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v10

    .line 113
    iget-object v5, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationTitle:Ljava/lang/String;

    iget-object p1, v0, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->activeNotificationContent:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object p2

    .line 115
    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object p1, p0, Lcom/android/server/devicestate/DeviceStateNotificationController;->mContext:Landroid/content/Context;

    const p2, 0x1040361

    .line 118
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v8, 0x1

    const v9, 0x1080435

    move-object v4, p0

    .line 113
    invoke-virtual/range {v4 .. v11}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void

    .line 121
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot determine the requesting app name when showing state active notification. uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", state="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceStateNotificationController"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public showThermalCriticalNotificationIfNeeded(I)V
    .locals 9

    .line 133
    invoke-virtual {p0}, Lcom/android/server/devicestate/DeviceStateNotificationController;->getNotificationInfos()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;

    if-eqz p1, :cond_1

    .line 134
    invoke-virtual {p1}, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->hasThermalCriticalNotification()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 137
    :cond_0
    iget-object v2, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->name:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationTitle:Ljava/lang/String;

    iget-object v4, p1, Lcom/android/server/devicestate/DeviceStateNotificationController$NotificationInfo;->thermalCriticalNotificationContent:Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    const v6, 0x1080608

    move-object v1, p0

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/devicestate/DeviceStateNotificationController;->showNotification(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILandroid/app/PendingIntent;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method
