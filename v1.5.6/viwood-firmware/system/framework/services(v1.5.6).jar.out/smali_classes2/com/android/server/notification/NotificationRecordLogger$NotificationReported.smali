.class public Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;
.super Ljava/lang/Object;
.source "NotificationRecordLogger.java"


# instance fields
.field public final age_in_minutes:I

.field public final alerting:I

.field public final assistant_hash:I

.field public final assistant_ranking_score:F

.field public final category:Ljava/lang/String;

.field public final channel_id_hash:I

.field public final event_id:I

.field public final fsi_state:I

.field public final group_id_hash:I

.field public final group_instance_id:I

.field public final has_promotable_characteristics:Z

.field public final importance:I

.field public final importance_asst:I

.field public final importance_initial:I

.field public final importance_initial_source:I

.field public final importance_source:I

.field public final instance_id:I

.field public final is_foreground_service:Z

.field public final is_group_summary:Z

.field public final is_locked:Z

.field public final is_non_dismissible:Z

.field public final is_ongoing:Z

.field public final is_promoted_ongoing:Z

.field public final notification_id_hash:I

.field public final num_people:I

.field public final package_name:Ljava/lang/String;

.field public final position:I

.field public post_duration_millis:J

.field public final style:I

.field public final timeout_millis:J

.field public final uid:I


# direct methods
.method public constructor <init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V
    .locals 2

    .line 523
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 524
    iget-object v0, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v0}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    .line 525
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->getId()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    .line 526
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    .line 527
    iget-object v1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    .line 528
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getInstanceId()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    .line 529
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNotificationIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    .line 530
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getChannelIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    .line 531
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getGroupIdHash()I

    move-result v1

    iput v1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    const/4 v1, 0x0

    if-nez p5, :cond_0

    move p5, v1

    goto :goto_0

    .line 532
    :cond_0
    invoke-virtual {p5}, Lcom/android/internal/logging/InstanceId;->getId()I

    move-result p5

    :goto_0
    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    .line 533
    invoke-virtual {v0}, Landroid/app/Notification;->isGroupSummary()Z

    move-result p5

    iput-boolean p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    .line 534
    iget-object p5, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    .line 535
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getStyle()I

    move-result p5

    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    .line 536
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getNumPeople()I

    move-result p5

    iput p5, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    .line 537
    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    .line 538
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p3}, Lcom/android/server/notification/NotificationRecordLogger;->getLoggingImportance(Lcom/android/server/notification/NotificationRecord;)I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    .line 539
    iput p4, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    .line 540
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getImportanceExplanationCode()I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    .line 541
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getInitialImportance()I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    .line 542
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getInitialImportanceExplanationCode()I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    .line 543
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getAssistantImportance()I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    .line 544
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->getAssistantHash()I

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    .line 545
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getRankingScore()F

    move-result p3

    iput p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    .line 546
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p3}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p3

    invoke-virtual {p3}, Landroid/service/notification/StatusBarNotification;->isOngoing()Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    .line 547
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p3}, Lcom/android/server/notification/NotificationRecordLogger;->isForegroundService(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    .line 548
    invoke-virtual {v0}, Landroid/app/Notification;->getTimeoutAfter()J

    move-result-wide p3

    iput-wide p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    .line 549
    iget-object p3, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-static {p3}, Lcom/android/server/notification/NotificationRecordLogger;->isNonDismissible(Lcom/android/server/notification/NotificationRecord;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    .line 550
    iget-object p3, v0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    const/4 p4, 0x1

    if-eqz p3, :cond_1

    move p3, p4

    goto :goto_1

    :cond_1
    move p3, v1

    .line 551
    :goto_1
    iget p5, v0, Landroid/app/Notification;->flags:I

    and-int/lit16 p5, p5, 0x4000

    if-eqz p5, :cond_2

    move v1, p4

    .line 553
    :cond_2
    invoke-static {p3, v1, p2}, Lcom/android/server/notification/NotificationRecordLogger;->getFsiState(ZZLcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;)I

    move-result p2

    iput p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    .line 555
    iget-object p2, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->isLocked()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    .line 556
    iget-object p1, p1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;->r:Lcom/android/server/notification/NotificationRecord;

    .line 557
    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide p1

    invoke-virtual {v0}, Landroid/app/Notification;->getWhen()J

    move-result-wide p3

    .line 556
    invoke-static {p1, p2, p3, p4}, Lcom/android/server/notification/NotificationRecordLogger;->getAgeInMinutes(JJ)I

    move-result p1

    iput p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    .line 558
    invoke-virtual {v0}, Landroid/app/Notification;->isPromotedOngoing()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_promoted_ongoing:Z

    .line 559
    invoke-virtual {v0}, Landroid/app/Notification;->hasPromotableCharacteristics()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->has_promotable_characteristics:Z

    return-void
.end method
