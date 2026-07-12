.class public Lcom/android/server/hdmi/HdmiCecController$7;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;

.field public final synthetic val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

.field public final synthetic val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

.field public final synthetic val$sendResults:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController;Lcom/android/server/hdmi/HdmiCecMessage;Ljava/util/List;Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;)V
    .locals 0

    .line 747
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    iput-object p2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    iput-object p3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    iput-object p4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$callback:Lcom/android/server/hdmi/HdmiControlService$SendMessageCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 750
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[S]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiLogger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 751
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getParams()[B

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$smbuildBody(I[B)[B

    move-result-object v0

    .line 755
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecController;->-$$Nest$fgetmNativeWrapperImpl(Lcom/android/server/hdmi/HdmiCecController;)Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    .line 756
    invoke-virtual {v3}, Lcom/android/server/hdmi/HdmiCecMessage;->getSource()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v4}, Lcom/android/server/hdmi/HdmiCecMessage;->getDestination()I

    move-result v4

    .line 755
    invoke-interface {v2, v3, v4, v0}, Lcom/android/server/hdmi/HdmiCecController$NativeWrapper;->nativeSendCecCommand(II[B)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v3, :cond_2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_1

    const/4 v4, 0x3

    if-eq v2, v4, :cond_0

    goto :goto_1

    .line 759
    :cond_0
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    const-string v5, "FAIL"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 761
    :cond_1
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    const-string v5, "BUSY"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 760
    :cond_2
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    const-string v5, "NACK"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 758
    :cond_3
    iget-object v4, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$sendResults:Ljava/util/List;

    const-string v5, "ACK"

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    add-int/lit8 v4, v1, 0x1

    if-lt v1, v3, :cond_6

    :goto_2
    if-eqz v2, :cond_5

    .line 770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to send "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecController$7;->val$cecMessage:Lcom/android/server/hdmi/HdmiCecMessage;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " with errorCode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HdmiCecController"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 772
    :cond_5
    iget-object v0, p0, Lcom/android/server/hdmi/HdmiCecController$7;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    new-instance v1, Lcom/android/server/hdmi/HdmiCecController$7$1;

    invoke-direct {v1, p0, v2}, Lcom/android/server/hdmi/HdmiCecController$7$1;-><init>(Lcom/android/server/hdmi/HdmiCecController$7;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/hdmi/HdmiCecController;->runOnServiceThread(Ljava/lang/Runnable;)V

    return-void

    :cond_6
    move v1, v4

    goto :goto_0
.end method
