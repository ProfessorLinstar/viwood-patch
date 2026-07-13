.class public Lcom/android/server/hdmi/HdmiControlService$7;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 893
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 0

    .line 896
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDeviceEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 897
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$7;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->tv()Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecController;->enableWakeupByOtp(Z)V

    :cond_0
    return-void
.end method
