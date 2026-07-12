.class public Lcom/android/server/notification/NotificationRecordLoggerImpl;
.super Ljava/lang/Object;
.source "NotificationRecordLoggerImpl.java"

# interfaces
.implements Lcom/android/server/notification/NotificationRecordLogger;


# instance fields
.field public mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/UiEventLoggerImpl;

    invoke-direct {v0}, Lcom/android/internal/logging/UiEventLoggerImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    return-void
.end method


# virtual methods
.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-interface {p0, p1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    return-void
.end method

.method public log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;Lcom/android/server/notification/NotificationRecord;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 91
    :cond_0
    iget-object p0, p0, Lcom/android/server/notification/NotificationRecordLoggerImpl;->mUiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getUid()I

    move-result v0

    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 92
    invoke-virtual {p2}, Lcom/android/server/notification/NotificationRecord;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getInstanceId()Lcom/android/internal/logging/InstanceId;

    move-result-object p2

    .line 91
    invoke-interface {p0, p1, v0, v1, p2}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    return-void
.end method

.method public logNotificationAdjusted(Lcom/android/server/notification/NotificationRecord;IILcom/android/internal/logging/InstanceId;)V
    .locals 6

    .line 43
    new-instance v1, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;

    const/4 v0, 0x0

    invoke-direct {v1, p1, v0}, Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;-><init>(Lcom/android/server/notification/NotificationRecord;Lcom/android/server/notification/NotificationRecord;)V

    .line 44
    new-instance v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;

    sget-object v2, Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;->NOTIFICATION_ADJUSTED:Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;-><init>(Lcom/android/server/notification/NotificationRecordLogger$NotificationRecordPair;Lcom/android/server/notification/NotificationRecordLogger$NotificationReportedEvent;IILcom/android/internal/logging/InstanceId;)V

    invoke-virtual {p0, v0}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public logNotificationPosted(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/server/notification/NotificationRecordLoggerImpl;->writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V

    return-void
.end method

.method public final writeNotificationReportedAtom(Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;)V
    .locals 37

    move-object/from16 v0, p1

    .line 51
    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->event_id:I

    iget v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->uid:I

    iget-object v3, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->package_name:Ljava/lang/String;

    iget v4, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->instance_id:I

    iget v5, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->notification_id_hash:I

    iget v6, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->channel_id_hash:I

    iget v7, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_id_hash:I

    iget v8, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->group_instance_id:I

    iget-boolean v9, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_group_summary:Z

    iget-object v10, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->category:Ljava/lang/String;

    iget v11, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->style:I

    iget v12, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->num_people:I

    iget v13, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->position:I

    iget v14, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance:I

    iget v15, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->alerting:I

    move/from16 v16, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_source:I

    move/from16 v17, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial:I

    move/from16 v18, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_initial_source:I

    move/from16 v19, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->importance_asst:I

    move/from16 v20, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_hash:I

    move/from16 v21, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->assistant_ranking_score:F

    move/from16 v22, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_ongoing:Z

    move/from16 v23, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_foreground_service:Z

    move/from16 v25, v1

    move/from16 v24, v2

    iget-wide v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->timeout_millis:J

    move-wide/from16 v26, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_non_dismissible:Z

    move/from16 v28, v1

    iget-wide v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->post_duration_millis:J

    move-wide/from16 v29, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->fsi_state:I

    iget-boolean v2, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_locked:Z

    move/from16 v31, v1

    iget v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->age_in_minutes:I

    move/from16 v32, v1

    iget-boolean v1, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->is_promoted_ongoing:Z

    iget-boolean v0, v0, Lcom/android/server/notification/NotificationRecordLogger$NotificationReported;->has_promotable_characteristics:Z

    move/from16 v33, v0

    const/16 v0, 0xf4

    move/from16 v34, v32

    move/from16 v32, v1

    move/from16 v1, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v22

    move/from16 v22, v23

    move/from16 v23, v25

    move-wide/from16 v35, v29

    move/from16 v30, v2

    move/from16 v2, v24

    move-wide/from16 v24, v26

    move/from16 v26, v28

    move-wide/from16 v27, v35

    move/from16 v29, v31

    move/from16 v31, v34

    invoke-static/range {v0 .. v33}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIILjava/lang/String;IIIIIZLjava/lang/String;IIIIIIIIIIFZZJZJIZIZZ)V

    return-void
.end method
