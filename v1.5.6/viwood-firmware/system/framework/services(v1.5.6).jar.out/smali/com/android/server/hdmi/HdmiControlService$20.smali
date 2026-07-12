.class public Lcom/android/server/hdmi/HdmiControlService$20;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1043
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$20;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 3

    .line 1046
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiControlService$20;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const-string v1, "enable_numeric_soundbar_volume_ui_on_tv"

    const/4 v2, 0x1

    invoke-virtual {p1, v1, v2}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {v0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmNumericSoundbarVolumeUiOnTvFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1049
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$20;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiControlService;->checkAndUpdateAbsoluteVolumeBehavior()V

    return-void
.end method
