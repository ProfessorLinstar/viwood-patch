.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1062
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$ExternalTimerValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 3

    .line 1065
    array-length p0, p1

    const/16 v0, 0x9

    const/4 v1, 0x4

    if-ge p0, v0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    .line 1068
    aget-byte v0, p1, p0

    .line 1069
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDayOfMonth(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    aget-byte v2, p1, v0

    .line 1070
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMonthOfYear(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget-byte v2, p1, v2

    .line 1071
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidHour(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    .line 1072
    invoke-static {v2}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-byte v1, p1, v1

    .line 1073
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidDurationHours(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x5

    aget-byte v1, p1, v1

    .line 1074
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidMinute(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x6

    aget-byte v1, p1, v1

    .line 1075
    invoke-static {v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidRecordingSequence(I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x7

    .line 1076
    invoke-static {p1, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidExternalSource([BI)Z

    move-result p1

    if-eqz p1, :cond_1

    move p0, v0

    .line 1068
    :cond_1
    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
