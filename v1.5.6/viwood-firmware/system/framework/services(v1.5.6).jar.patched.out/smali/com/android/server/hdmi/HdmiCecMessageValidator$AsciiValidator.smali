.class public Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;
.super Ljava/lang/Object;
.source "HdmiCecMessageValidator.java"

# interfaces
.implements Lcom/android/server/hdmi/HdmiCecMessageValidator$ParameterValidator;


# instance fields
.field public final mMaxLength:I

.field public final mMinLength:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 925
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 926
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 929
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 930
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    .line 931
    iput p2, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    return-void
.end method


# virtual methods
.method public isValid([B)I
    .locals 2

    .line 938
    array-length v0, p1

    iget v1, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMinLength:I

    if-ge v0, v1, :cond_0

    const/4 p0, 0x4

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 941
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecMessageValidator$AsciiValidator;->mMaxLength:I

    invoke-static {p1, v0, p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smisValidAsciiString([BII)Z

    move-result p0

    invoke-static {p0}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->-$$Nest$smtoErrorCode(Z)I

    move-result p0

    return p0
.end method
