.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;
.super Ljava/lang/Object;
.source "HdmiCecController.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method public static synthetic $r8$lambda$64Lq_TVyrO6LL4RuWOath5E1NyU(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onHotplugEvent$1(IZ)V

    return-void
.end method

.method public static synthetic $r8$lambda$6Ja3ntMSTmh16Ywcdz7BtZ3rRGA(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->lambda$onCecMessage$0(II[B)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0

    .line 1620
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onCecMessage$0(II[B)V
    .locals 0

    .line 1624
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleIncomingCecCommand(Lcom/android/server/hdmi/HdmiCecController;II[B)V

    return-void
.end method

.method public final synthetic lambda$onHotplugEvent$1(IZ)V
    .locals 0

    .line 1629
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$mhandleHotplug(Lcom/android/server/hdmi/HdmiCecController;IZ)V

    return-void
.end method

.method public onCecMessage(II[B)V
    .locals 2

    .line 1623
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;II[B)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onHotplugEvent(IZ)V
    .locals 2

    .line 1629
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void
.end method
