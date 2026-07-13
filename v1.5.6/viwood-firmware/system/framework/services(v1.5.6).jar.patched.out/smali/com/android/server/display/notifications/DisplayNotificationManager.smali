.class public Lcom/android/server/display/notifications/DisplayNotificationManager;
.super Ljava/lang/Object;
.source "DisplayNotificationManager.java"

# interfaces
.implements Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;


# instance fields
.field public final mConnectedDisplayErrorHandlingEnabled:Z

.field public mConnectedDisplayUsbErrorsDetector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

.field public final mContext:Landroid/content/Context;

.field public final mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

.field public final mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

.field public mNotificationManager:Landroid/app/NotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/ExternalDisplayStatsService;)V
    .locals 1

    .line 72
    new-instance v0, Lcom/android/server/display/notifications/DisplayNotificationManager$1;

    invoke-direct {v0, p2, p1, p3}, Lcom/android/server/display/notifications/DisplayNotificationManager$1;-><init>(Landroid/content/Context;Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/ExternalDisplayStatsService;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;-><init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/feature/DisplayManagerFlags;Landroid/content/Context;Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;)V
    .locals 0

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    invoke-virtual {p1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isConnectedDisplayErrorHandlingEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    .line 97
    iput-object p2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    .line 98
    iput-object p3, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    .line 99
    invoke-interface {p3}, Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;->getExternalDisplayStatsService()Lcom/android/server/display/ExternalDisplayStatsService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    return-void
.end method


# virtual methods
.method public cancelNotifications()V
    .locals 3

    .line 196
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "DisplayNotificationManager"

    if-nez p0, :cond_0

    .line 197
    const-string p0, "Can\'t cancelNotifications: NotificationManager is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 201
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, v2}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method public final createErrorNotification(III)Landroid/app/Notification;
    .locals 6

    .line 224
    const-string v0, "DisplayNotificationManager"

    iget-object v1, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 225
    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 226
    invoke-virtual {v1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v1, 0x0

    .line 229
    :try_start_0
    iget-object v2, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    const v3, 0x1010543

    filled-new-array {v3}, [I

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 230
    :try_start_1
    invoke-virtual {v2, v1, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 231
    :try_start_2
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V
    :try_end_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v2

    goto :goto_1

    :catchall_0
    move-exception v3

    if-eqz v2, :cond_0

    .line 229
    :try_start_3
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v2

    move v3, v1

    goto :goto_1

    :cond_0
    :goto_0
    throw v3
    :try_end_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 232
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "colorError attribute is not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/res/Resources$NotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :goto_2
    new-instance v2, Landroid/app/Notification$Builder;

    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mContext:Landroid/content/Context;

    const-string v4, "ALERTS"

    invoke-direct {v2, p0, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 236
    invoke-virtual {v2, v0}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 237
    invoke-virtual {p0, p3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v4, 0x0

    .line 238
    invoke-virtual {p0, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object p0

    const-wide/16 v4, 0x7530

    .line 239
    invoke-virtual {p0, v4, v5}, Landroid/app/Notification$Builder;->setTimeoutAfter(J)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 240
    invoke-virtual {p0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 241
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 242
    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 243
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 244
    invoke-virtual {p0, p2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object p0

    const-string p1, "err"

    .line 246
    invoke-virtual {p0, p1}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object p0

    .line 247
    invoke-virtual {p0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    return-object p0
.end method

.method public onBootCompleted()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    invoke-interface {v0}, Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;->getNotificationManager()Landroid/app/NotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    .line 109
    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onBootCompleted: NotificationManager is null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mInjector:Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;

    invoke-interface {v0}, Lcom/android/server/display/notifications/DisplayNotificationManager$Injector;->getUsbErrorsDetector()Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayUsbErrorsDetector:Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0, p0}, Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector;->registerListener(Lcom/android/server/display/notifications/ConnectedDisplayUsbErrorsDetector$Listener;)V

    :cond_1
    return-void
.end method

.method public onCableNotCapableDisplayPort()V
    .locals 3

    .line 144
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    .line 145
    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onCableNotCapableDisplayPort: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onCableNotCapableDisplayPort()V

    const v0, 0x104030a

    const v1, 0x1080aba

    const v2, 0x104030b

    .line 152
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(III)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onDisplayPortLinkTrainingFailure()V
    .locals 3

    .line 124
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    .line 125
    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onDisplayPortLinkTrainingFailure: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 130
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onDisplayPortLinkTrainingFailure()V

    const v0, 0x104030a

    const v1, 0x1080aba

    const v2, 0x104030b

    .line 132
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(III)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onHighTemperatureExternalDisplayNotAllowed()V
    .locals 3

    .line 180
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    .line 181
    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onHighTemperatureExternalDisplayNotAllowed: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const v0, 0x1040309

    const v1, 0x1080609

    const v2, 0x104030b

    .line 186
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(III)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public onHotplugConnectionError()V
    .locals 3

    .line 162
    iget-boolean v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mConnectedDisplayErrorHandlingEnabled:Z

    if-nez v0, :cond_0

    .line 163
    const-string p0, "DisplayNotificationManager"

    const-string/jumbo v0, "onHotplugConnectionError: mConnectedDisplayErrorHandlingEnabled is false"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mExternalDisplayStatsService:Lcom/android/server/display/ExternalDisplayStatsService;

    invoke-virtual {v0}, Lcom/android/server/display/ExternalDisplayStatsService;->onHotplugConnectionError()V

    const v0, 0x104030a

    const v1, 0x1080aba

    const v2, 0x104030b

    .line 170
    invoke-virtual {p0, v2, v0, v1}, Lcom/android/server/display/notifications/DisplayNotificationManager;->createErrorNotification(III)Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/notifications/DisplayNotificationManager;->sendErrorNotification(Landroid/app/Notification;)V

    return-void
.end method

.method public final sendErrorNotification(Landroid/app/Notification;)V
    .locals 3

    .line 210
    iget-object p0, p0, Lcom/android/server/display/notifications/DisplayNotificationManager;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v0, "DisplayNotificationManager"

    if-nez p0, :cond_0

    .line 211
    const-string p0, "Can\'t sendErrorNotification: NotificationManager is null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 215
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method
