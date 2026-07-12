.class public Lcom/android/server/hdmi/HdmiControlService$36;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiControlService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiControlService;

.field public final synthetic val$enabled:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;Z)V
    .locals 0

    .line 5127
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 2

    if-eqz p1, :cond_0

    .line 5131
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ARC termination before enabling eARC in the HAL failed with result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "HdmiControlService"

    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5138
    :cond_0
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmEarcController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiEarcController;

    move-result-object p1

    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    invoke-virtual {p1, v0}, Lcom/android/server/hdmi/HdmiEarcController;->setEarcEnabled(Z)V

    .line 5139
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p1}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmCecController(Lcom/android/server/hdmi/HdmiControlService;)Lcom/android/server/hdmi/HdmiCecController;

    move-result-object p1

    .line 5140
    iget-boolean v0, p0, Lcom/android/server/hdmi/HdmiControlService$36;->val$enabled:Z

    .line 5141
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiControlService$36;->this$0:Lcom/android/server/hdmi/HdmiControlService;

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiControlService;->-$$Nest$fgetmEarcPortId(Lcom/android/server/hdmi/HdmiControlService;)I

    move-result p0

    .line 5139
    invoke-virtual {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecController;->setHpdSignalType(II)V

    return-void
.end method
