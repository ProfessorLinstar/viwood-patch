.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 950
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$OsdStringValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    .line 955
    array-length p0, p1

    const/4 v0, 0x2

    if-ge p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 958
    aget-byte v0, p1, p0

    .line 960
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDisplayControl(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 v0, 0xe

    const/4 v1, 0x1

    .line 962
    invoke-static {p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v1

    .line 958
    :cond_1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
