.class public Lcom/android/server/hdmi/ResendCecCommandAction$1;
.super Ljava/lang/Object;
.source "ResendCecCommandAction.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/ResendCecCommandAction;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/ResendCecCommandAction;)V
    .locals 0

    .line 42
    iput-object p1, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSendCompleted(I)V
    .locals 3

    if-eqz p1, :cond_0

    .line 45
    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    invoke-static {v0}, Lcom/android/server/hdmi/ResendCecCommandAction;->-$$Nest$fgetmRetransmissionCount(Lcom/android/server/hdmi/ResendCecCommandAction;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Lcom/android/server/hdmi/ResendCecCommandAction;->-$$Nest$fputmRetransmissionCount(Lcom/android/server/hdmi/ResendCecCommandAction;I)V

    const/4 v0, 0x1

    if-ge v1, v0, :cond_0

    .line 47
    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    iput v0, p0, Lcom/android/server/hdmi/HdmiCecFeatureAction;->mState:I

    const/16 p1, 0x12c

    .line 48
    invoke-virtual {p0, v0, p1}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->addTimer(II)V

    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    invoke-static {v0}, Lcom/android/server/hdmi/ResendCecCommandAction;->-$$Nest$fgetmResultCallback(Lcom/android/server/hdmi/ResendCecCommandAction;)Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 51
    iget-object v0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    invoke-static {v0}, Lcom/android/server/hdmi/ResendCecCommandAction;->-$$Nest$fgetmResultCallback(Lcom/android/server/hdmi/ResendCecCommandAction;)Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;->onSendCompleted(I)V

    .line 53
    :cond_1
    iget-object p0, p0, Lcom/android/server/hdmi/ResendCecCommandAction$1;->this$0:Lcom/android/server/hdmi/ResendCecCommandAction;

    invoke-virtual {p0}, Lcom/android/server/hdmi/HdmiCecFeatureAction;->finish()V

    return-void
.end method
