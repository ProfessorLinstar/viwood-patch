.class public Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;
.super Landroid/content/BroadcastReceiver;
.source "JobSchedulerService.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;)V
    .locals 0

    .line 4400
    iput-object p1, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 4403
    iget-object p0, p0, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker$1;->this$1:Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;

    invoke-static {p0, p2}, Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;->-$$Nest$monReceiveInternal(Lcom/android/server/job/JobSchedulerService$BatteryStateTracker;Landroid/content/Intent;)V

    return-void
.end method
