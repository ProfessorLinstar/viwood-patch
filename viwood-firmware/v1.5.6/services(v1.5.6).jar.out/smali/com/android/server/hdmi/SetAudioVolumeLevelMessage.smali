.class public Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "SetAudioVolumeLevelMessage.java"


# instance fields
.field public final mAudioVolumeLevel:I


# direct methods
.method public constructor <init>(II[BI)V
    .locals 6

    const/16 v3, 0x73

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 31
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 32
    iput p4, v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return-void
.end method

.method public static build(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 8

    and-int/lit16 v0, p2, 0xff

    int-to-byte v0, v0

    const/4 v1, 0x1

    .line 45
    new-array v6, v1, [B

    const/4 v1, 0x0

    aput-byte v0, v6, v1

    .line 48
    invoke-static {p0, p1}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v7

    if-nez v7, :cond_0

    .line 50
    new-instance v0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {v0, p0, p1, v6, p2}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object v0

    .line 52
    :cond_0
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v5, 0x73

    move v3, p0

    move v4, p1

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v2
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 8

    .line 69
    array-length v0, p2

    if-nez v0, :cond_0

    .line 70
    new-instance v1, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v4, 0x73

    const/4 v6, 0x4

    move v2, p0

    move v3, p1

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v1

    :cond_0
    move v2, p0

    move v3, p1

    move-object v5, p2

    const/4 p0, 0x0

    .line 74
    aget-byte p0, v5, p0

    .line 77
    invoke-static {v2, v3}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->validateAddress(II)I

    move-result v7

    if-nez v7, :cond_1

    .line 79
    new-instance p1, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;

    invoke-direct {p1, v2, v3, v5, p0}, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;-><init>(II[BI)V

    return-object p1

    :cond_1
    move v4, v3

    move v3, v2

    .line 81
    new-instance v2, Lcom/android/server/hdmi/HdmiCecMessage;

    move-object v6, v5

    const/16 v5, 0x73

    invoke-direct/range {v2 .. v7}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v2
.end method

.method public static validateAddress(II)I
    .locals 1

    const/16 v0, 0x7fff

    .line 90
    invoke-static {p0, p1, v0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getAudioVolumeLevel()I
    .locals 0

    .line 100
    iget p0, p0, Lcom/android/server/hdmi/SetAudioVolumeLevelMessage;->mAudioVolumeLevel:I

    return p0
.end method
