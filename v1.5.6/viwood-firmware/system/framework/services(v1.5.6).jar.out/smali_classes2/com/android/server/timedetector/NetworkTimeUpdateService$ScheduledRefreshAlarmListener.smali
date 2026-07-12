.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V
    .locals 0

    .line 208
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/timedetector/NetworkTimeUpdateService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;)V

    return-void
.end method


# virtual methods
.method public onAlarm()V
    .locals 1

    .line 216
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-static {v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$fgetmHandler(Lcom/android/server/timedetector/NetworkTimeUpdateService;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public run()V
    .locals 1

    .line 221
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    const-string/jumbo v0, "scheduled refresh"

    invoke-static {p0, v0}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->-$$Nest$monPollNetworkTime(Lcom/android/server/timedetector/NetworkTimeUpdateService;Ljava/lang/String;)V

    return-void
.end method
