.class public Lcom/android/server/hdmi/HdmiControlService$18;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1020
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$18;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 1

    .line 1023
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$18;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    const-string/jumbo v0, "power_state_change_on_active_source_lost"

    .line 1024
    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "standby_now"

    .line 1026
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    .line 1027
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$18;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->writePowerStateChangeOnActiveSourceLostAtom(Z)V

    return-void
.end method
