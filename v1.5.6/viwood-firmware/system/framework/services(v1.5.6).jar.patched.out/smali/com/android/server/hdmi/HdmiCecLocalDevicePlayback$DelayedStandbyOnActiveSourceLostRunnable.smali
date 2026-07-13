.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceSource;->isActiveSource()Z

    move-result v0

    if-nez v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object v0, v0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiControlService;->standby()V

    .line 281
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$DelayedStandbyOnActiveSourceLostRunnable;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->-$$Nest$fputmIsActiveSourceLostPopupLaunched(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Z)V

    :cond_0
    return-void
.end method
