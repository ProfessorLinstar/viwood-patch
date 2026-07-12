.class public interface abstract Lcom/android/server/notification/NotificationRecordLogger;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# direct methods
.method public static getAgeInMinutes(JJ)I
    .locals 0

    sub-long/2addr p0, p2

    .line 624
    invoke-static {p0, p1}, Ljava/time/Duration;->ofMillis(J)Ljava/time/Duration;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/Duration;->toMinutes()J

    move-result-wide p0

    long-to-int p0, p0

    return p0
.end method

.method public static getFsiState(ZZLcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;)I
    .locals 2

    .line 604
    sget-object v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_UPDATED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    if-eqz p1, :cond_2

    const/4 p0, 0x2

    return p0

    :cond_2
    return v1
.end method

.method public static getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I
    .locals 1

    .line 568
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getImportance()I

    move-result v0

    .line 569
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getChannel()Landroid/app/NotificationChannel;

    move-result-object p0

    if-nez p0, :cond_0

    return v0

    .line 573
    :cond_0
    invoke-static {p0, v0}, Lcom/android/server/notification/NotificationChannelLogger;->getLoggingImportance(Landroid/app/NotificationChannel;I)I

    move-result p0

    return p0
.end method

.method public static isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 581
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 584
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit8 p0, p0, 0x40

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method

.method public static isNonDismissible(Lcom/android/server/notification/NotificationRecord;)Z
    .locals 2

    .line 591
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 594
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/notification/NotificationRecord;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget p0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    :goto_0
    return v1
.end method


# virtual methods
.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
.end method

.method public abstract log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
.end method

.method public abstract logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
.end method

.method public logNotificationCancelled(Lcom/android/server/notification/NotificationRecord;II)V
    .locals 0

    .line 111
    invoke-static {p2, p3}, Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;->fromCancelReason(II)Lcom/android/server/notification/NotificationRecordLogger$NotificationCancelledEvent;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public abstract logNotificationPosted(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
.end method

.method public logNotificationVisibility(Lcom/android/server/notification/NotificationRecord;Z)V
    .locals 0

    .line 121
    invoke-static {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;->fromVisibility(Z)Lcom/android/server/notification/NotificationRecordLogger$NotificationEvent;

    move-result-object p2

    invoke-interface {p0, p2, p1}, Lcom/android/server/notification/NotificationRecordLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V

    return-void
.end method

.method public prepareToLogNotificationPosted(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
    .locals 0

    move-object p0, p1

    .line 74
    new-instance p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    invoke-direct {p1, p0, p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 75
    invoke-virtual {p1, p4}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->shouldLogReported(I)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 78
    :cond_0
    new-instance p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    invoke-static {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->fromRecordPair(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;)Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move-result-object p2

    invoke-direct/range {p0 .. p5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;-><init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    return-object p0
.end method
