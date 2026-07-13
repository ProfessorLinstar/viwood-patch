.class public Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public final mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

.field public final mRemoveReason:I

.field public final mWhenRemovedElapsed:J

.field public final mWhenRemovedRtc:J


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/Alarm;IJJ)V
    .locals 1

    .line 609
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 610
    new-instance v0, Lcom/android/server/alarm/Alarm$Snapshot;

    invoke-direct {v0, p1}, Lcom/android/server/alarm/Alarm$Snapshot;-><init>(Lcom/android/server/alarm/Alarm;)V

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    .line 611
    iput p2, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    .line 612
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    .line 613
    iput-wide p5, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    return-void
.end method

.method public static final isLoggable(I)Z
    .locals 0

    .line 0
    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final removeReasonToString(I)Ljava/lang/String;
    .locals 2

    packed-switch p0, :pswitch_data_0

    .line 637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 635
    :pswitch_0
    const-string/jumbo p0, "listener_cached"

    return-object p0

    .line 633
    :pswitch_1
    const-string/jumbo p0, "listener_binder_died"

    return-object p0

    .line 631
    :pswitch_2
    const-string/jumbo p0, "pi_cancelled"

    return-object p0

    .line 629
    :pswitch_3
    const-string p0, "data_cleared"

    return-object p0

    .line 627
    :pswitch_4
    const-string p0, "exact_alarm_permission_revoked"

    return-object p0

    .line 625
    :pswitch_5
    const-string p0, "alarm_cancelled"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 3

    .line 642
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 644
    iget v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mRemoveReason:I

    invoke-static {v0}, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->removeReasonToString(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Reason"

    invoke-virtual {p1, v1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;Ljava/lang/Object;)Landroid/util/IndentingPrintWriter;

    .line 645
    const-string v0, "elapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 646
    iget-wide v0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 647
    const-string v0, " rtc="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 648
    new-instance v0, Ljava/util/Date;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mWhenRemovedRtc:J

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 651
    const-string p4, "Snapshot:"

    invoke-virtual {p1, p4}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 652
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 653
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$RemovedAlarm;->mAlarmSnapshot:Lcom/android/server/alarm/Alarm$Snapshot;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/alarm/Alarm$Snapshot;->dump(Landroid/util/IndentingPrintWriter;J)V

    .line 654
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 656
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method
