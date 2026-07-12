.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceAudioSystem.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$TvSystemAudioModeSupportedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

.field public final synthetic val$message:Lcom/android/server/hdmi/HdmiCecMessage;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 0

    .line 1183
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1186
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;->-$$Nest$msetSystemAudioMode(Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;Z)V

    .line 1187
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iget-object p1, p0, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    .line 1189
    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDevice;->getDeviceInfo()Landroid/hardware/hdmi/HdmiDeviceInfo;

    move-result-object p0

    invoke-virtual {p0}, Landroid/hardware/hdmi/HdmiDeviceInfo;->getLogicalAddress()I

    move-result p0

    const/16 v1, 0xf

    .line 1188
    invoke-static {p0, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    .line 1187
    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->sendCecCommand(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return-void

    .line 1193
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem;

    iget-object p1, p1, Lcom/android/server/hdmi/HdmiLocalDevice;->mService:Lcom/android/server/hdmi/HdmiControlService;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceAudioSystem$3;->val$message:Lcom/android/server/hdmi/HdmiCecMessage;

    const/4 v0, 0x4

    invoke-virtual {p1, p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    return-void
.end method
