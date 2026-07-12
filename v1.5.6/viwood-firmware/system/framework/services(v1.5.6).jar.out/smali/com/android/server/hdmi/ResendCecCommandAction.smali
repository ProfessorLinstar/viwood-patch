.class public Lcom/android/server/hdmi/ResendCecCommandAction;
.super Lcom/android/server/hdmi/HdmiCecFeatureAction;
.source "ResendCecCommandAction.java"


# instance fields
.field public final mCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public mRetransmissionCount:I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmResultCallback(Lcom/android/server/hdmi/ResendCecCommandAction;)Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRetransmissionCount(Lcom/android/server/hdmi/ResendCecCommandAction;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmRetransmissionCount(Lcom/android/server/hdmi/ResendCecCommandAction;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;-><init>(Lcom/android/server/hdmi/HdmiCecLocalDevice;)V

    const/4 p1, 0x0

    .line 40
    iput p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mRetransmissionCount:I

    .line 42
    new-instance p1, Lcom/android/server/hdmi/ResendCecCommandAction$1;

    invoke-direct {p1, p0}, Lcom/android/server/hdmi/ResendCecCommandAction$1;-><init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V

    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    .line 61
    iput-object p2, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 62
    iput-object p3, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mResultCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    const/4 p1, 0x1

    .line 63
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 p2, 0x12c

    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void
.end method


# virtual methods
.method public bridge synthetic addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V
    .locals 0

    .line 33
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addCallback(Landroid/hardware/hdmi/IHdmiControlCallback;)V

    return-void
.end method

.method public handleTimerEvent(I)V
    .locals 3

    .line 75
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const-string v1, "ResendCecCommandAction"

    if-eq v0, p1, :cond_0

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Timeout in invalid state:[Expected:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", Actual:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 p1, 0x1

    if-ne v0, p1, :cond_1

    .line 81
    const-string/jumbo p1, "sendCommandWithoutRetries failed, retry"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    iget-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCommand:Lcom/android/server/hdmi/HdmiCecMessage;

    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction;->mCallback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->sendCommandWithoutRetries(Lcom/android/server/hdmi/HdmiCecMessage;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V

    :cond_1
    return-void
.end method

.method public processCommand(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public start()Z
    .locals 1

    .line 69
    const-string p0, "ResendCecCommandAction"

    const-string v0, "ResendCecCommandAction started"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method
