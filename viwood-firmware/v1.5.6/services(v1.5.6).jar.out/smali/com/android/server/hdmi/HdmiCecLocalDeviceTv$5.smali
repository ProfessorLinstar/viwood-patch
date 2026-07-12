.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V
    .locals 0

    .line 1582
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 0

    .line 1585
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$5;->val$callback:Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;

    invoke-virtual {p1, p0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->invokeStandbyCompletedCallback(Lcom/android/server/hdmi/HdmiCecLocalDevice$StandbyCompletedCallback;)V

    return-void
.end method
