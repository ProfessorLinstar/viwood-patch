.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 901
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$RecordStatusInfoValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 4

    .line 904
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 907
    aget-byte v1, p1, p0

    const/4 v2, 0x7

    invoke-static {v1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_2

    aget-byte v1, p1, p0

    const/16 v2, 0x9

    const/16 v3, 0xe

    .line 908
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_2

    aget-byte v1, p1, p0

    const/16 v2, 0x10

    const/16 v3, 0x17

    .line 909
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_2

    aget-byte v1, p1, p0

    const/16 v2, 0x1a

    const/16 v3, 0x1b

    .line 910
    invoke-static {v1, v2, v3}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisWithinRange(III)Z

    move-result v1

    if-nez v1, :cond_2

    aget-byte p1, p1, p0

    const/16 v1, 0x1f

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    move v0, p0

    .line 907
    :cond_2
    :goto_0
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
