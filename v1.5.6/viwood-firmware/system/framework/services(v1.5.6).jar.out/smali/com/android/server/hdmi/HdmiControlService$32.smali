.class public Lcom/android/server/hdmi/HdmiControlService$32;
.super Ljava/lang/Object;
.source "HdmiControlService.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecLocalDevice$PendingActionClearedCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 0

    .line 4313
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCleared(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V
    .locals 1

    .line 4316
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$massertRunOnServiceThread(Lcom/android/server/hdmi/HdmiControlService;)V

    .line 4317
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$32;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    new-instance v0, Lcom/android/server/hdmi/HdmiControlService$32$1;

    invoke-direct {v0, p0}, Lcom/android/server/hdmi/HdmiControlService$32$1;-><init>(Lcom/android/server/hdmi/HdmiControlService$32;)V

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiCecController;->flush(Ljava/lang/Runnable;)V

    return-void
.end method
