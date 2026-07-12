.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceAudioSystem.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 1115
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 0

    .line 1118
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$2;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method
