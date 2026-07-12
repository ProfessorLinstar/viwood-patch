.class public final Lcom/android/server/alarm/AlarmManagerService$InFlight;
.super Ljava/lang/Object;
.source "AlarmManagerService.java"


# instance fields
.field public final mAlarmType:I

.field public final mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

.field public final mCreatorUid:I

.field public final mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

.field public final mListener:Landroid/os/IBinder;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mPriorityClass:I

.field public final mTag:Ljava/lang/String;

.field public final mUid:I

.field public final mWhenElapsed:J

.field public final mWorkSource:Landroid/os/WorkSource;


# direct methods
.method public constructor <init>(Lcom/android/server/alarm/AlarmManagerService;Lcom/android/server/alarm/Alarm;J)V
    .locals 3

    .line 1619
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1620
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    .line 1621
    iput-wide p3, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    .line 1622
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mListener:Landroid/os/IBinder;

    .line 1623
    iget-object v0, p2, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    .line 1624
    iget v0, p2, Lcom/android/server/alarm/Alarm;->uid:I

    iput v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    .line 1625
    iget v1, p2, Lcom/android/server/alarm/Alarm;->creatorUid:I

    iput v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    .line 1626
    iget-object v1, p2, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    .line 1627
    iget-object v2, p2, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1

    .line 1628
    invoke-static {p1, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;Landroid/app/PendingIntent;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p1

    goto :goto_1

    .line 1629
    :cond_1
    iget-object v2, p2, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/server/alarm/AlarmManagerService;->-$$Nest$mgetStatsLocked(Lcom/android/server/alarm/AlarmManagerService;ILjava/lang/String;)Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    move-result-object p1

    :goto_1
    iput-object p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    .line 1630
    iget-object v0, p1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-nez v0, :cond_2

    .line 1632
    new-instance v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-direct {v0, p1, v1}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;-><init>(Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;Ljava/lang/String;)V

    .line 1633
    iget-object p1, p1, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->filterStats:Landroid/util/ArrayMap;

    invoke-virtual {p1, v1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1635
    :cond_2
    iput-wide p3, v0, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->lastTime:J

    .line 1636
    iput-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    .line 1637
    iget p1, p2, Lcom/android/server/alarm/Alarm;->type:I

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    .line 1638
    iget p1, p2, Lcom/android/server/alarm/Alarm;->priorityClass:I

    iput p1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPriorityClass:I

    return-void
.end method


# virtual methods
.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 4

    .line 1662
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 1664
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide v0, 0x10900000002L

    .line 1665
    iget-object v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10300000003L

    .line 1666
    iget-wide v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide v0, 0x10e00000004L

    .line 1667
    iget v2, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1668
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const-wide v1, 0x10b00000005L

    .line 1669
    invoke-virtual {v0, p1, v1, v2}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1671
    :cond_0
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    if-eqz v0, :cond_1

    const-wide v1, 0x10b00000006L

    .line 1672
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1674
    :cond_1
    iget-object v0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    if-eqz v0, :cond_2

    const-wide v1, 0x10b00000007L

    .line 1675
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/server/alarm/AlarmManagerService$FilterStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1677
    :cond_2
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    if-eqz p0, :cond_3

    const-wide v0, 0x10b00000008L

    .line 1678
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/WorkSource;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 1681
    :cond_3
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public isBroadcast()Z
    .locals 0

    .line 1642
    iget-object p0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/app/PendingIntent;->isBroadcast()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1647
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InFlight{pendingIntent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", when="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWhenElapsed:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", workSource="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mWorkSource:Landroid/os/WorkSource;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", creatorUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mCreatorUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", broadcastStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mBroadcastStats:Lcom/android/server/alarm/AlarmManagerService$BroadcastStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", filterStats="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mFilterStats:Lcom/android/server/alarm/AlarmManagerService$FilterStats;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", alarmType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mAlarmType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priorityClass="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/alarm/AlarmManagerService$InFlight;->mPriorityClass:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
