.class public Lcom/android/server/hdmi/DeviceDiscoveryAction$1;
.super Ljava/lang/Object;
.source "DeviceDiscoveryAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$DevicePollingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V
    .locals 0

    .line 135
    iput-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPollingFinished(Ljava/util/List;)V
    .locals 3

    .line 138
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const-string v1, "DeviceDiscoveryAction"

    if-eqz v0, :cond_0

    .line 139
    const-string p1, "No device is detected."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$mwrapUpAndFinish(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    return-void

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    iget v0, v0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    if-nez v0, :cond_1

    .line 146
    const-string p1, "Action was already finished before the callback was called."

    invoke-static {v1, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$mwrapUpAndFinish(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    return-void

    .line 150
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Device detected: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {v0, p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$mallocateDevices(Lcom/android/server/hdmi/DeviceDiscoveryAction;Ljava/util/List;)V

    .line 152
    iget-object p1, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {p1}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$fgetmDelayPeriod(Lcom/android/server/hdmi/DeviceDiscoveryAction;)I

    move-result p1

    if-lez p1, :cond_2

    .line 153
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$mstartToDelayAction(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    return-void

    .line 155
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/DeviceDiscoveryAction$1;->this$0:Lcom/android/server/hdmi/DeviceDiscoveryAction;

    invoke-static {p0}, Lcom/android/server/hdmi/DeviceDiscoveryAction;->-$$Nest$mstartPhysicalAddressStage(Lcom/android/server/hdmi/DeviceDiscoveryAction;)V

    return-void
.end method
