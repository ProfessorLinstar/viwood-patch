.class public final Lcom/android/server/powerstats/TimerTrigger;
.super Lcom/android/server/powerstats/PowerStatsLogTrigger;
.source "TimerTrigger.java"


# instance fields
.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mHandler:Landroid/os/Handler;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;Z)V
    .locals 12

    .line 72
    invoke-direct {p0, p1, p2}, Lcom/android/server/powerstats/PowerStatsLogTrigger;-><init>(Landroid/content/Context;Lcom/android/server/powerstats/PowerStatsLogger;)V

    .line 73
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mHandler:Landroid/os/Handler;

    .line 74
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogTrigger;->mContext:Landroid/content/Context;

    const-class p2, Landroid/app/AlarmManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger;->mAlarmManager:Landroid/app/AlarmManager;

    if-eqz p3, :cond_0

    .line 77
    new-instance v0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    const-wide/32 v3, 0x36ee80

    const/4 v5, 0x1

    const-string v2, "PowerStatsLowFreqLog"

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    .line 80
    new-instance v6, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;

    const-wide/32 v9, 0x1d4c0

    const/4 v11, 0x2

    const-string v8, "PowerStatsHighFreqLog"

    move-object v7, v1

    invoke-direct/range {v6 .. v11}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;-><init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V

    .line 83
    invoke-virtual {v0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    .line 84
    invoke-virtual {v6}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    :cond_0
    return-void
.end method
