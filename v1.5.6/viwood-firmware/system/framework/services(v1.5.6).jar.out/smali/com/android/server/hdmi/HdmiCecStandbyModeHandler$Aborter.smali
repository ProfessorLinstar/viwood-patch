.class public final Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;
.super Ljava/lang/Object;
.source "HdmiCecStandbyModeHandler.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$CecMessageHandler;


# instance fields
.field public final mReason:I

.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;I)V
    .locals 0

    .line 47
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    return-void
.end method


# virtual methods
.method public handle(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->this$0:Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;->-$$Nest$fgetmService(Lcom/android/server/hdmi/HdmiCecStandbyModeHandler;)Lcom/android/server/hdmi/HdmiControlService;

    move-result-object v0

    iget p0, p0, Lcom/android/server/hdmi/HdmiCecStandbyModeHandler$Aborter;->mReason:I

    invoke-virtual {v0, p1, p0}, Lcom/android/server/hdmi/HdmiControlService;->maySendFeatureAbortCommand(Lcom/android/server/hdmi/HdmiCecMessage;I)V

    const/4 p0, 0x1

    return p0
.end method
