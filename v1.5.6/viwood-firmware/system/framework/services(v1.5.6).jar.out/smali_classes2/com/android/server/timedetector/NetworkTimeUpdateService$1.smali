.class public Lcom/android/server/timedetector/NetworkTimeUpdateService$1;
.super Ljava/lang/Object;
.source "NetworkTimeUpdateService.java"

# interfaces
.implements Lcom/android/server/timedetector/NetworkTimeUpdateService$Engine$RefreshCallbacks;


# instance fields
.field public final mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final synthetic this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

.field public final synthetic val$alarmManager:Landroid/app/AlarmManager;

.field public final synthetic val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Landroid/app/AlarmManager;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 0

    .line 108
    iput-object p1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->this$0:Lcom/android/server/timedetector/NetworkTimeUpdateService;

    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iput-object p3, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    new-instance p2, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lcom/android/server/timedetector/NetworkTimeUpdateService$ScheduledRefreshAlarmListener;-><init>(Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/timedetector/NetworkTimeUpdateService-IA;)V

    iput-object p2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    return-void
.end method


# virtual methods
.method public scheduleNextRefresh(J)V
    .locals 9

    .line 114
    iget-object v0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 118
    iget-object v2, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$alarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x3

    iget-object v7, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->mOnAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    const-string v6, "NetworkTimeUpdateService.POLL"

    const/4 v8, 0x0

    move-wide v4, p1

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    return-void
.end method

.method public submitSuggestion(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V
    .locals 0

    .line 125
    iget-object p0, p0, Lcom/android/server/timedetector/NetworkTimeUpdateService$1;->val$timeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-interface {p0, p1}, Lcom/android/server/timedetector/TimeDetectorInternal;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    return-void
.end method
