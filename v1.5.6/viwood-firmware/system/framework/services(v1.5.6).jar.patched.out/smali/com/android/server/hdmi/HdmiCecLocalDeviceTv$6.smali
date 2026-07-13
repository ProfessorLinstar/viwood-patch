.class public Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$6;
.super Ljava/lang/Object;
.source "HdmiCecLocalDeviceTv.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

.field public final synthetic val$recorderAddress:I


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;I)V
    .locals 0

    .line 1766
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iput p2, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$6;->val$recorderAddress:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1770
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$6;->this$0:Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv$6;->val$recorderAddress:I

    const/16 v0, 0xa1

    invoke-virtual {p1, p0, v0}, Lcom/android/server/hdmi/HdmiCecLocalDeviceTv;->announceClearTimerRecordingResult(II)V

    :cond_0
    return-void
.end method
