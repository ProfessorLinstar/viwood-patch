.class public Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;
.super Landroid/os/Handler;
.source "DevicePresenceProcessor.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)V
    .locals 0

    .line 1152
    iput-object p1, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1153
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1171
    iget p1, p1, Landroid/os/Message;->what:I

    .line 1172
    iget-object v0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1173
    iget-object p0, p0, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor$SimulatedDevicePresenceSchedulerHelper;->this$0:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    invoke-static {p0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$fgetmSimulated(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, p1, v1}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->-$$Nest$monDevicePresenceEvent(Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Ljava/util/Set;II)V

    :cond_0
    return-void
.end method

.method public scheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .locals 2

    .line 1158
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1159
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    const-wide/32 v0, 0xea60

    .line 1162
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public unscheduleOnDeviceGoneCallForSimulatedDevicePresence(I)V
    .locals 0

    .line 1166
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
