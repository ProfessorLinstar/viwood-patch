.class public final Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;
.super Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub;
.source "HdmiCecController.java"


# instance fields
.field public final mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;)V
    .locals 0

    .line 1694
    invoke-direct {p0}, Landroid/hardware/tv/hdmi/cec/IHdmiCecCallback$Stub;-><init>()V

    .line 1695
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized getInterfaceHash()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    .line 1705
    :try_start_0
    const-string v0, "cd956e3a0c2e6ade71693c85e9f0aeffa221ea26"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCecMessage(Landroid/hardware/tv/hdmi/cec/CecMessage;)V
    .locals 2

    .line 1700
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallbackAidl;->mHdmiCecCallback:Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;

    iget-byte v0, p1, Landroid/hardware/tv/hdmi/cec/CecMessage;->initiator:B

    iget-byte v1, p1, Landroid/hardware/tv/hdmi/cec/CecMessage;->destination:B

    iget-object p1, p1, Landroid/hardware/tv/hdmi/cec/CecMessage;->body:[B

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/hdmi/HdmiCecController$HdmiCecCallback;->onCecMessage(II[B)V

    return-void
.end method
