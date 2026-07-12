.class public Lcom/android/server/hdmi/HdmiCecLocalDevice$1;
.super Landroid/os/Handler;
.source "HdmiCecLocalDevice.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 165
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    return-void

    .line 170
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->handleUserControlReleased()I

    return-void

    .line 167
    :cond_1
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevice$1;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevice;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->-$$Nest$mhandleDisableDeviceTimeout(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    return-void
.end method
