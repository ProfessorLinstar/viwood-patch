.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;
.super Landroid/os/BatteryStats$Uid$Wakelock;
.source "BatteryStatsImpl.java"


# instance fields
.field public mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

.field public mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

.field public mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

.field public mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V
    .locals 0

    .line 10146
    invoke-direct {p0}, Landroid/os/BatteryStats$Uid$Wakelock;-><init>()V

    .line 10147
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    .line 10148
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mUid:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    return-void
.end method


# virtual methods
.method public detachFromTimeBase()V
    .locals 1

    .line 10238
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10239
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10240
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10241
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    return-void
.end method

.method public bridge synthetic getWakeTime(I)Landroid/os/BatteryStats$Timer;
    .locals 0

    .line 10114
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->getWakeTime(I)Lcom/android/server/power/stats/BatteryStatsImpl$Timer;

    move-result-object p0

    return-object p0
.end method

.method public getWakeTime(I)Lcom/android/server/power/stats/BatteryStatsImpl$Timer;
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x12

    if-ne p1, v0, :cond_0

    .line 10232
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    .line 10233
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "type = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 10231
    :cond_1
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    .line 10229
    :cond_2
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    return-object p0

    .line 10230
    :cond_3
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    return-object p0
.end method

.method public reset(J)Z
    .locals 3

    .line 10186
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 10187
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 10188
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v0, v2

    .line 10189
    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v2, v1, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smresetIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;ZJ)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    or-int/2addr p1, v0

    if-nez p1, :cond_0

    .line 10192
    iget-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    const/4 p2, 0x0

    .line 10193
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerFull:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 10195
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10196
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerPartial:Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    .line 10198
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10199
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerWindow:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    .line 10201
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    invoke-static {v0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$smdetachIfNotNull(Lcom/android/server/power/stats/BatteryStatsImpl$TimeBaseObs;)V

    .line 10202
    iput-object p2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;->mTimerDraw:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    :cond_0
    xor-int/lit8 p0, p1, 0x1

    return p0
.end method
