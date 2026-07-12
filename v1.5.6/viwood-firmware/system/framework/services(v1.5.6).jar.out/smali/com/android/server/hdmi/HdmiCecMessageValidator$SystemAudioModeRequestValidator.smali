.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;
.super Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;
.source "HdmiCecMessageValidator.java"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 864
    invoke-direct {p0, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;-><init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SystemAudioModeRequestValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 1

    .line 868
    array-length v0, p1

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 871
    :cond_0
    invoke-super {p0, p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator$PhysicalAddressValidator;->isValid([B)I

    move-result p0

    return p0
.end method
