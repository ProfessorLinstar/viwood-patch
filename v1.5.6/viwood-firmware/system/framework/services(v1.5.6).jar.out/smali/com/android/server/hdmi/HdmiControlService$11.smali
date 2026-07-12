.class public Lcom/android/server/hdmi/HdmiControlService$11;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecConfig$SettingChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 929
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$11;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Ljava/lang/String;)V
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$11;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$mreportFeatures(Lcom/android/server/hdmi/HdmiControlService;Z)V

    return-void
.end method
