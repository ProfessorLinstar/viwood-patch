.class public Lcom/android/server/hdmi/HdmiControlService$17;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1006
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$17;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2

    .line 1009
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$17;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "soundbar_mode"

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 1012
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$17;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmSoundbarModeFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setSoundbarMode(I)V

    return-void
.end method
