.class public final Lcom/android/server/hdmi/CecMessageBuffer;
.super Ljava/lang/Object;
.source "CecMessageBuffer.java"


# instance fields
.field public mBuffer:Ljava/util/List;

.field public mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmHdmiControlService(Lcom/android/server/hdmi/CecMessageBuffer;)Lcom/android/server/hdmi/HdmiControlService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/server/hdmi/HdmiControlService;)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    .line 30
    iput-object p1, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    return-void
.end method


# virtual methods
.method public final bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/16 v0, 0x82

    .line 80
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/4 v0, 0x4

    .line 86
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0xd

    .line 87
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 88
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public bufferMessage(Lcom/android/server/hdmi/HdmiCecMessage;)Z
    .locals 3

    .line 40
    invoke-virtual {p1}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x1

    if-eq v0, v1, :cond_4

    const/16 v1, 0xd

    if-eq v0, v1, :cond_4

    const/16 v1, 0x70

    if-eq v0, v1, :cond_3

    const/16 v1, 0x80

    if-eq v0, v1, :cond_2

    const/16 v1, 0x82

    if-eq v0, v1, :cond_1

    const/16 v1, 0x86

    if-eq v0, v1, :cond_0

    const/4 p0, 0x0

    return p0

    .line 55
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 42
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferActiveSource(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 52
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 49
    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2

    .line 46
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/CecMessageBuffer;->bufferImageOrTextViewOn(Lcom/android/server/hdmi/HdmiCecMessage;)V

    return v2
.end method

.method public final bufferRoutingChange(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/16 v0, 0x80

    .line 99
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 100
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final bufferSetStreamPath(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/16 v0, 0x86

    .line 105
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final bufferSystemAudioModeRequest(Lcom/android/server/hdmi/HdmiCecMessage;)V
    .locals 1

    const/16 v0, 0x70

    .line 93
    invoke-virtual {p0, p1, v0}, Lcom/android/server/hdmi/CecMessageBuffer;->replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public getBuffer()Ljava/util/List;
    .locals 1

    .line 111
    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public processMessages()V
    .locals 4

    .line 68
    iget-object v0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 69
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mHdmiControlService:Lcom/android/server/hdmi/HdmiControlService;

    new-instance v3, Lcom/android/server/hdmi/CecMessageBuffer$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/hdmi/CecMessageBuffer$1;-><init>(Lcom/android/server/hdmi/CecMessageBuffer;Lcom/android/server/hdmi/HdmiCecMessage;)V

    invoke-virtual {v2, v3}, Lcom/android/server/hdmi/HdmiControlService;->runOnServiceThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 76
    :cond_0
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final replaceMessageIfBuffered(Lcom/android/server/hdmi/HdmiCecMessage;I)Z
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    iget-object v2, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/hdmi/HdmiCecMessage;

    .line 118
    invoke-virtual {v2}, Lcom/android/server/hdmi/HdmiCecMessage;->getOpcode()I

    move-result v2

    if-ne v2, p2, :cond_0

    .line 119
    iget-object p0, p0, Lcom/android/server/hdmi/CecMessageBuffer;->mBuffer:Ljava/util/List;

    invoke-interface {p0, v1, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method
