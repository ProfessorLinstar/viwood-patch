.class public Lcom/android/server/alarm/Alarm;
.super Ljava/lang/Object;
.source "Alarm.java"


# static fields
.field public static final NUM_POLICIES:I = 0x4


# instance fields
.field public final alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

.field public count:I

.field public final creatorUid:I

.field public exactAllowReason:I

.field public final flags:I

.field public final listener:Landroid/app/IAlarmListener;

.field public final listenerTag:Ljava/lang/String;

.field public mIdleOptions:Landroid/os/Bundle;

.field public mMaxWhenElapsed:J

.field public mPolicyWhenElapsed:[J

.field public mUsingReserveQuota:Z

.field public mWhenElapsed:J

.field public final operation:Landroid/app/PendingIntent;

.field public final origWhen:J

.field public final packageName:Ljava/lang/String;

.field public priorityClass:I

.field public final repeatInterval:J

.field public final sourcePackage:Ljava/lang/String;

.field public final statsTag:Ljava/lang/String;

.field public final type:I

.field public final uid:I

.field public final wakeup:Z

.field public final windowLength:J

.field public final workSource:Landroid/os/WorkSource;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmPolicyWhenElapsed(Lcom/android/server/alarm/Alarm;)[J
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    return-object p0
.end method

.method public constructor <init>(IJJJJLandroid/app/PendingIntent;Landroid/app/IAlarmListener;Ljava/lang/String;Landroid/os/WorkSource;ILandroid/app/AlarmManager$AlarmClockInfo;ILjava/lang/String;Landroid/os/Bundle;I)V
    .locals 2

    move-object v0, p12

    .line 136
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p1, p0, Lcom/android/server/alarm/Alarm;->type:I

    .line 138
    iput-wide p2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    const/4 p2, 0x0

    const/4 p3, 0x2

    if-eq p1, p3, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move v1, p2

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 139
    :goto_1
    iput-boolean v1, p0, Lcom/android/server/alarm/Alarm;->wakeup:Z

    const/4 v1, 0x4

    .line 141
    new-array v1, v1, [J

    iput-object v1, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    .line 142
    aput-wide p4, v1, p2

    .line 143
    iput-wide p4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    .line 144
    iput-wide p6, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    .line 145
    invoke-static/range {p4 .. p7}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 146
    iput-wide p8, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    .line 147
    iput-object p10, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    .line 148
    iput-object p11, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    .line 149
    iput-object v0, p0, Lcom/android/server/alarm/Alarm;->listenerTag:Ljava/lang/String;

    .line 150
    invoke-static {p10, p12, p1}, Lcom/android/server/alarm/Alarm;->makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    move-object p1, p13

    .line 151
    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->workSource:Landroid/os/WorkSource;

    move/from16 p1, p14

    .line 152
    iput p1, p0, Lcom/android/server/alarm/Alarm;->flags:I

    move-object/from16 p1, p15

    .line 153
    iput-object p1, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    move/from16 p1, p16

    .line 154
    iput p1, p0, Lcom/android/server/alarm/Alarm;->uid:I

    move-object/from16 p4, p17

    .line 155
    iput-object p4, p0, Lcom/android/server/alarm/Alarm;->packageName:Ljava/lang/String;

    move-object/from16 p5, p18

    .line 156
    iput-object p5, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    move/from16 p5, p19

    .line 157
    iput p5, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    if-eqz p10, :cond_2

    .line 158
    invoke-virtual {p10}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object p4

    :cond_2
    iput-object p4, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    if-eqz p10, :cond_3

    .line 159
    invoke-virtual {p10}, Landroid/app/PendingIntent;->getCreatorUid()I

    move-result p1

    :cond_3
    iput p1, p0, Lcom/android/server/alarm/Alarm;->creatorUid:I

    .line 160
    iput-boolean p2, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    .line 161
    iput p3, p0, Lcom/android/server/alarm/Alarm;->priorityClass:I

    return-void
.end method

.method public static exactReasonToString(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    .line 297
    const-string p0, "--unknown--"

    return-object p0

    .line 293
    :pswitch_0
    const-string/jumbo p0, "prioritized"

    return-object p0

    .line 291
    :pswitch_1
    const-string/jumbo p0, "listener"

    return-object p0

    .line 289
    :pswitch_2
    const-string/jumbo p0, "policy_permission"

    return-object p0

    .line 285
    :pswitch_3
    const-string p0, "compat"

    return-object p0

    .line 283
    :pswitch_4
    const-string p0, "allow-listed"

    return-object p0

    .line 287
    :pswitch_5
    const-string/jumbo p0, "permission"

    return-object p0

    .line 295
    :pswitch_6
    const-string p0, "N/A"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static makeTag(Landroid/app/PendingIntent;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    const-string p2, "*alarm*:"

    goto :goto_1

    :cond_1
    :goto_0
    const-string p2, "*walarm*:"

    :goto_1
    if-eqz p0, :cond_2

    .line 167
    invoke-virtual {p0, p2}, Landroid/app/PendingIntent;->getTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static policyIndexToString(I)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 276
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--unknown("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")--"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 274
    :cond_0
    const-string p0, "battery_saver"

    return-object p0

    .line 272
    :cond_1
    const-string p0, "device_idle"

    return-object p0

    .line 270
    :cond_2
    const-string p0, "app_standby"

    return-object p0

    .line 268
    :cond_3
    const-string/jumbo p0, "requester"

    return-object p0
.end method

.method public static typeToString(I)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 312
    const-string p0, "--unknown--"

    return-object p0

    .line 308
    :cond_0
    const-string p0, "ELAPSED"

    return-object p0

    .line 310
    :cond_1
    const-string p0, "ELAPSED_WAKEUP"

    return-object p0

    .line 304
    :cond_2
    const-string p0, "RTC"

    return-object p0

    .line 306
    :cond_3
    const-string p0, "RTC_WAKEUP"

    return-object p0
.end method


# virtual methods
.method public dump(Landroid/util/IndentingPrintWriter;JLjava/text/SimpleDateFormat;)V
    .locals 4

    .line 317
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 318
    :cond_1
    :goto_0
    const-string/jumbo v0, "tag="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 319
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 321
    const-string/jumbo v0, "type="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 322
    iget v0, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->typeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 323
    const-string v0, " origWhen="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    .line 325
    new-instance v0, Ljava/util/Date;

    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    .line 327
    :cond_2
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 329
    :goto_1
    const-string v0, " window="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 330
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 331
    iget v0, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_3

    .line 332
    const-string v0, " exactAllowReason="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 333
    iget v0, p0, Lcom/android/server/alarm/Alarm;->exactAllowReason:I

    invoke-static {v0}, Lcom/android/server/alarm/Alarm;->exactReasonToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 335
    :cond_3
    const-string v0, " repeatInterval="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 336
    iget-wide v2, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, v2, v3}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 337
    const-string v0, " count="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 338
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(I)V

    .line 339
    const-string v0, " flags=0x"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 340
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 342
    const-string/jumbo v0, "policyWhenElapsed:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    :goto_2
    const/4 v0, 0x4

    if-ge v1, v0, :cond_4

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/android/server/alarm/Alarm;->policyIndexToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v2, v0, v1

    invoke-static {v2, v3, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 347
    :cond_4
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 349
    const-string/jumbo v0, "whenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 350
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 351
    const-string v0, " maxWhenElapsed="

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 352
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    invoke-static {v0, v1, p2, p3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 353
    iget-boolean p2, p0, Lcom/android/server/alarm/Alarm;->mUsingReserveQuota:Z

    if-eqz p2, :cond_5

    .line 354
    const-string p2, " usingReserveQuota=true"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 356
    :cond_5
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->println()V

    .line 358
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p2, :cond_6

    .line 359
    const-string p2, "Alarm clock:"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 361
    const-string p2, "  triggerTime="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 362
    new-instance p2, Ljava/util/Date;

    iget-object p3, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p3}, Landroid/app/AlarmManager$AlarmClockInfo;->getTriggerTime()J

    move-result-wide v0

    invoke-direct {p2, v0, v1}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {p4, p2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 364
    const-string p2, "  showIntent="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 365
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    invoke-virtual {p2}, Landroid/app/AlarmManager$AlarmClockInfo;->getShowIntent()Landroid/app/PendingIntent;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 367
    :cond_6
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p2, :cond_7

    .line 368
    const-string/jumbo p2, "operation="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 369
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 371
    :cond_7
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p2, :cond_8

    .line 372
    const-string/jumbo p2, "listener="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 373
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/Object;)V

    .line 375
    :cond_8
    iget-object p2, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    if-eqz p2, :cond_9

    .line 376
    const-string p2, "idle-options="

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 377
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mIdleOptions:Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_9
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JJ)V
    .locals 3

    .line 382
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide p2

    const-wide v0, 0x10900000001L

    .line 384
    iget-object v2, p0, Lcom/android/server/alarm/Alarm;->statsTag:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    const-wide v0, 0x10e00000002L

    .line 385
    iget v2, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 386
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v0

    sub-long/2addr v0, p4

    const-wide p4, 0x10300000003L

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000004L

    .line 387
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10300000005L

    .line 388
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->repeatInterval:J

    invoke-virtual {p1, p4, p5, v0, v1}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    const-wide p4, 0x10500000006L

    .line 389
    iget v0, p0, Lcom/android/server/alarm/Alarm;->count:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    const-wide p4, 0x10500000007L

    .line 390
    iget v0, p0, Lcom/android/server/alarm/Alarm;->flags:I

    invoke-virtual {p1, p4, p5, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 391
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->alarmClock:Landroid/app/AlarmManager$AlarmClockInfo;

    if-eqz p4, :cond_0

    const-wide v0, 0x10b00000008L

    .line 392
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/AlarmManager$AlarmClockInfo;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 394
    :cond_0
    iget-object p4, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz p4, :cond_1

    const-wide v0, 0x10b00000009L

    .line 395
    invoke-virtual {p4, p1, v0, v1}, Landroid/app/PendingIntent;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 397
    :cond_1
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    if-eqz p0, :cond_2

    .line 398
    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->toString()Ljava/lang/String;

    move-result-object p0

    const-wide p4, 0x1090000000aL

    invoke-virtual {p1, p4, p5, p0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 401
    :cond_2
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public getMaxWhenElapsed()J
    .locals 2

    .line 211
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    return-wide v0
.end method

.method public getPolicyElapsed(I)J
    .locals 0

    .line 189
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide p0, p0, p1

    return-wide p0
.end method

.method public getRequestedElapsed()J
    .locals 2

    .line 196
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    return-wide v0
.end method

.method public getWhenElapsed()J
    .locals 2

    .line 203
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    return-wide v0
.end method

.method public matches(Landroid/app/PendingIntent;Landroid/app/IAlarmListener;)Z
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->operation:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    .line 173
    invoke-virtual {v0, p1}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    if-eqz p2, :cond_1

    .line 174
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->listener:Landroid/app/IAlarmListener;

    invoke-interface {p0}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p2}, Landroid/app/IAlarmListener;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/os/IBinder;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public matches(Ljava/lang/String;)Z
    .locals 0

    .line 178
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public setPolicyElapsed(IJ)Z
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aput-wide p2, v0, p1

    .line 225
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->updateWhenElapsed()Z

    move-result p0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 250
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 251
    const-string v1, "Alarm{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    const-string v1, " type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    iget v1, p0, Lcom/android/server/alarm/Alarm;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 255
    const-string v1, " origWhen "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    iget-wide v1, p0, Lcom/android/server/alarm/Alarm;->origWhen:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 257
    const-string v1, " whenElapsed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {p0}, Lcom/android/server/alarm/Alarm;->getWhenElapsed()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 259
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 260
    iget-object p0, p0, Lcom/android/server/alarm/Alarm;->sourcePackage:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    .line 261
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final updateWhenElapsed()Z
    .locals 9

    .line 233
    iget-wide v0, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const-wide/16 v2, 0x0

    .line 234
    iput-wide v2, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x4

    if-ge v3, v4, :cond_0

    .line 236
    iget-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    iget-object v6, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v6, v6, v3

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 239
    :cond_0
    iget-wide v3, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 241
    iget-object v5, p0, Lcom/android/server/alarm/Alarm;->mPolicyWhenElapsed:[J

    aget-wide v5, v5, v2

    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->windowLength:J

    invoke-static {v5, v6, v7, v8}, Lcom/android/server/alarm/AlarmManagerService;->addClampPositive(JJ)J

    move-result-wide v5

    .line 243
    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/alarm/Alarm;->mMaxWhenElapsed:J

    .line 245
    iget-wide v7, p0, Lcom/android/server/alarm/Alarm;->mWhenElapsed:J

    cmp-long p0, v0, v7

    if-nez p0, :cond_2

    cmp-long p0, v3, v5

    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    return v2

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method
