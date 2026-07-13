.class public Lcom/android/server/hdmi/HdmiControlService$21;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 1227
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 1

    .line 1230
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fputmAddressAllocated(Lcom/android/server/hdmi/HdmiControlService;Z)V

    .line 1231
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$21;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    const/4 p1, 0x5

    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiControlService;->initializeCecLocalDevices(I)V

    return-void
.end method
