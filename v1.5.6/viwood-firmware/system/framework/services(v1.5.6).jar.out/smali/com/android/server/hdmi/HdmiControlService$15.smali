.class public Lcom/android/server/hdmi/HdmiControlService$15;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 974
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 2

    .line 977
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiControlService;->isTvDevice()Z

    move-result p1

    const-string v0, "earc_enabled"

    if-eqz p1, :cond_2

    .line 978
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v0

    .line 981
    :goto_0
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    if-eqz p1, :cond_1

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmEarcTxFeatureFlagEnabled(Lcom/android/server/hdmi/HdmiControlService;)Z

    move-result p1

    if-eqz p1, :cond_1

    move v0, v1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    return-void

    .line 984
    :cond_2
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$15;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmHdmiCecConfig(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecConfig;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecConfig;->getIntValue(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->setEarcEnabled(I)V

    return-void
.end method
