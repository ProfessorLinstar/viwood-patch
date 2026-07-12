.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$SelectAnalogueServiceValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    .line 1131
    array-length p0, p1

    const/4 v0, 0x4

    if-ge p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    .line 1134
    aget-byte v0, p1, p0

    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueBroadcastType(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 1135
    invoke-static {p1, v0}, Lcom/android/server/hdmi/HdmiUtils;->twoBytesToInt([BI)I

    move-result v1

    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAnalogueFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x3

    aget-byte p1, p1, v1

    .line 1136
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidBroadcastSystem(I)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v0

    .line 1134
    :cond_1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
