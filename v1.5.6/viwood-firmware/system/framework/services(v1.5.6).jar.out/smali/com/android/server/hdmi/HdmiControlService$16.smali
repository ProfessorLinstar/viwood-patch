.class public Lcom/android/server/hdmi/HdmiControlService$16;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 992
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 995
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "enable_soundbar_mode"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 998
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1001
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$16;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    return-void
.end method
