.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;
.super Landroid/hardware/hdmi/IHdmiControlCallback$Stub;
.source "HdmiCecLocalDeviceTv.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$routingForBootup:Z


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Z)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput-boolean p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->val$routingForBootup:Z

    invoke-direct {p0}, Landroid/hardware/hdmi/IHdmiControlCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(I)V
    .locals 0

    if-eqz p1, :cond_0

    .line 232
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$2;->val$routingForBootup:Z

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->launchRoutingControl(Z)V

    :cond_0
    return-void
.end method
