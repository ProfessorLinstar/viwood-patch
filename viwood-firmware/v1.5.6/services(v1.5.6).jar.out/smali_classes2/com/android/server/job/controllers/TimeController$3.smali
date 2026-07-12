.class public Lcom/android/server/job/controllers/TimeController$3;
.super Ljava/lang/Object;
.source "TimeController.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/job/controllers/TimeController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/TimeController;)V
    .locals 0

    .line 408
    iput-object p1, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 3

    .line 411
    invoke-static {}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$sfgetDEBUG()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const-string v0, "JobScheduler.Time"

    const-string v1, "Delay-expired alarm fired"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    sget-object v1, Lcom/android/server/job/JobSchedulerService;->sElapsedRealtimeClock:Ljava/time/Clock;

    invoke-virtual {v1}, Ljava/time/Clock;->millis()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcom/android/server/job/controllers/TimeController;->-$$Nest$fputmLastFiredDelayExpiredElapsedMillis(Lcom/android/server/job/controllers/TimeController;J)V

    .line 415
    iget-object p0, p0, Lcom/android/server/job/controllers/TimeController$3;->this$0:Lcom/android/server/job/controllers/TimeController;

    invoke-virtual {p0}, Lcom/android/server/job/controllers/TimeController;->checkExpiredDelaysAndResetAlarm()V

    return-void
.end method
