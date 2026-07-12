.class public Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;
.super Ljava/lang/Object;
.source "HdmiCecLocalDevicePlayback.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 311
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 0

    .line 314
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback$3;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDevicePlayback;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method
