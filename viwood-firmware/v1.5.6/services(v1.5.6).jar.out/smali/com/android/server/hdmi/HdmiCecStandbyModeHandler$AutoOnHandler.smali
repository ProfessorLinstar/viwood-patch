.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;Lcom/android/server/hdmi/HdmiCecStandbyModeHandler-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;-><init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)V

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-$$Nest$fgetmDevice(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecLocalDevice;

    move-result-object v0

    check-cast v0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    .line 61
    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->getAutoWakeup()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$AutoOnHandler;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-$$Nest$fgetmAborterRefused(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;->handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
