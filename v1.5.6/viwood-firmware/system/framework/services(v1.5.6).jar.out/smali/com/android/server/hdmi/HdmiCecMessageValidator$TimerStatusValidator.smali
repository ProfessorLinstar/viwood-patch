.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1099
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/hdmi/HdmiCecMessageValidator-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator$TimerStatusValidator;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 1

    .line 1102
    array-length p0, p1

    const/4 v0, 0x1

    if-ge p0, v0, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 p0, 0x0

    .line 1105
    invoke-static {p1, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidTimerStatusData([BI)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
