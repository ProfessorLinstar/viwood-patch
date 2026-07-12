.class public Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;
.super Ljava/lang/Object;
.source "HdmiCecKeycode.java"


# instance fields
.field public final mAndroidKeycode:I

.field public final mCecKeycodeAndParams:[B

.field public final mIsRepeatable:Z


# direct methods
.method public static bridge synthetic -$$Nest$misRepeatableIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)Ljava/lang/Boolean;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->isRepeatableIfMatched(I)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mtoAndroidKeycodeIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;[B)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toAndroidKeycodeIfMatched([B)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtoCecKeycodeAndParamIfMatched(Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;I)[B
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->toCecKeycodeAndParamIfMatched(I)[B

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(II)V
    .locals 2

    const/4 v0, 0x1

    .line 204
    sget-object v1, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method public synthetic constructor <init>(IILcom/android/server/hdmi/HdmiCecKeycode-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(II)V

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 1

    .line 196
    sget-object v0, Llibcore/util/EmptyArray;->BYTE:[B

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method

.method public synthetic constructor <init>(IIZLcom/android/server/hdmi/HdmiCecKeycode-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ)V

    return-void
.end method

.method public constructor <init>(IIZ[B)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    .line 189
    iput-boolean p3, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    .line 190
    array-length p1, p4

    const/4 p3, 0x1

    add-int/2addr p1, p3

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    .line 191
    array-length p0, p4

    const/4 v0, 0x0

    invoke-static {p4, v0, p1, p3, p0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    and-int/lit16 p0, p2, 0xff

    int-to-byte p0, p0

    .line 192
    aput-byte p0, p1, v0

    return-void
.end method

.method public synthetic constructor <init>(IIZ[BLcom/android/server/hdmi/HdmiCecKeycode-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;-><init>(IIZ[B)V

    return-void
.end method


# virtual methods
.method public final isRepeatableIfMatched(I)Ljava/lang/Boolean;
    .locals 1

    .line 230
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    .line 231
    iget-boolean p0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mIsRepeatable:Z

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final toAndroidKeycodeIfMatched([B)I
    .locals 4

    .line 216
    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    array-length v2, v1

    const/4 v3, -0x1

    if-ge v0, v2, :cond_0

    return v3

    .line 219
    :cond_0
    array-length v0, v1

    new-array v0, v0, [B

    .line 220
    array-length v1, v1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 222
    iget-object p1, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 223
    iget p0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    return p0

    :cond_1
    return v3
.end method

.method public final toCecKeycodeAndParamIfMatched(I)[B
    .locals 1

    .line 208
    iget v0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mAndroidKeycode:I

    if-ne v0, p1, :cond_0

    .line 209
    iget-object p0, p0, Lcom/android/server/hdmi/HdmiCecKeycode$KeycodeEntry;->mCecKeycodeAndParams:[B

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
