.class public final Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProcessList.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V
    .locals 0

    .line 5812
    iput-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;Lcom/android/server/am/ProcessList-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;-><init>(Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 5815
    iget-object p1, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    iget-object p1, p1, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->this$0:Lcom/android/server/am/ProcessList;

    iget-object p1, p1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object p1, p1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-class v0, Landroid/os/PowerManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 5816
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-string v0, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    return-void

    .line 5821
    :cond_0
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    return-void

    .line 5818
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner$IdlenessReceiver;->this$1:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {p1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->notifyDeviceIdleness(Z)V

    return-void
.end method
