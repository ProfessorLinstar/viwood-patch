.class public Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;
.super Ljava/lang/Object;
.source "TimerTrigger.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final mMsgType:I

.field public final mName:Ljava/lang/String;

.field public final mPeriodMs:J

.field public final synthetic this$0:Lcom/android/server/powerstats/TimerTrigger;


# direct methods
.method public constructor <init>(Lcom/android/server/powerstats/TimerTrigger;Ljava/lang/String;JI)V
    .locals 0

    .line 45
    iput-object p1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p2, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mName:Ljava/lang/String;

    .line 47
    iput-wide p3, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    .line 48
    iput p5, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 0

    .line 53
    invoke-virtual {p0}, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->run()V

    return-void
.end method

.method public run()V
    .locals 3

    .line 63
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    invoke-static {v0}, Lcom/android/server/powerstats/TimerTrigger;->-$$Nest$fgetmHandler(Lcom/android/server/powerstats/TimerTrigger;)Landroid/os/Handler;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mPeriodMs:J

    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 66
    iget-object v0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->this$0:Lcom/android/server/powerstats/TimerTrigger;

    iget p0, p0, Lcom/android/server/powerstats/TimerTrigger$PeriodicTimer;->mMsgType:I

    invoke-virtual {v0, p0}, Lcom/android/server/powerstats/PowerStatsLogTrigger;->logPowerStatsData(I)V

    return-void
.end method
