.class public final synthetic Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsScheduler$AlarmScheduler;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BatteryStatsService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BatteryStatsService;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    return-void
.end method


# virtual methods
.method public final scheduleAlarm(JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/am/BatteryStatsService$$ExternalSyntheticLambda101;->f$0:Lcom/android/server/am/BatteryStatsService;

    invoke-static/range {p0 .. p5}, Lcom/android/server/am/BatteryStatsService;->$r8$lambda$OnbgsTCNyXR6NrrFcSS2fDoMBjk(Lcom/android/server/am/BatteryStatsService;JLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method
