.class public Lcom/android/server/hdmi/ReportFeaturesMessage;
.super Lcom/android/server/hdmi/HdmiCecMessage;
.source "ReportFeaturesMessage.java"


# instance fields
.field public final mCecVersion:I

.field public final mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;


# direct methods
.method public static synthetic $r8$lambda$EnZaG7E-UCHXFjP_nSsOC6uaXt4(II[BLjava/lang/Integer;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 6

    .line 135
    new-instance v0, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v3, 0xa6

    .line 136
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move v1, p0

    move v2, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v0
.end method

.method public constructor <init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V
    .locals 6

    const/16 v3, 0xa6

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v4, p3

    .line 48
    invoke-direct/range {v0 .. v5}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    .line 49
    iput p4, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    .line 50
    iput-object p5, v0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-void
.end method

.method public static build(IILjava/util/List;ILjava/util/List;Landroid/hardware/hdmi/DeviceFeatures;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 10

    const/4 v0, 0x3

    const/4 v1, 0x1

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    .line 67
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/hdmi/ReportFeaturesMessage;->hdmiDeviceInfoDeviceTypeToShiftValue(I)I

    move-result v5

    shl-int v5, v1, v5

    int-to-byte v5, v5

    or-int/2addr v4, v5

    int-to-byte v4, v4

    goto :goto_0

    :cond_0
    shl-int/lit8 p2, p3, 0x6

    int-to-byte p2, p2

    int-to-byte p2, p2

    if-ne p3, v1, :cond_1

    .line 74
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    .line 75
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    shl-int p4, v1, p4

    int-to-byte p4, p4

    or-int/2addr p2, p4

    int-to-byte p2, p2

    goto :goto_1

    .line 78
    :cond_1
    invoke-interface {p4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const p4, 0xffff

    and-int/2addr p3, p4

    int-to-byte p3, p3

    or-int/2addr p2, p3

    int-to-byte p2, p2

    .line 82
    :cond_2
    new-array p3, v0, [B

    aput-byte v2, p3, v3

    aput-byte v4, p3, v1

    const/4 p4, 0x2

    aput-byte p2, p3, p4

    .line 83
    invoke-virtual {p5}, Landroid/hardware/hdmi/DeviceFeatures;->toOperand()[B

    move-result-object p2

    .line 86
    array-length p4, p2

    add-int/2addr p4, v0

    invoke-static {p3, p4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v7

    .line 88
    array-length p3, p2

    invoke-static {p2, v3, v7, v0, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xf

    .line 92
    invoke-static {p0, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v9

    if-eqz v9, :cond_3

    .line 94
    new-instance v4, Lcom/android/server/hdmi/HdmiCecMessage;

    const/16 v6, 0xf

    move-object v8, v7

    const/16 v7, 0xa6

    move v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/HdmiCecMessage;-><init>(III[BI)V

    return-object v4

    :cond_3
    move v5, p0

    move-object v8, v7

    .line 97
    new-instance v4, Lcom/android/server/hdmi/ReportFeaturesMessage;

    const/16 v6, 0xf

    move-object v9, p5

    move v8, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v4
.end method

.method public static build(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 9

    .line 134
    new-instance v0, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/hdmi/ReportFeaturesMessage$$ExternalSyntheticLambda0;-><init>(II[B)V

    .line 138
    invoke-static {p0, p1}, Lcom/android/server/hdmi/ReportFeaturesMessage;->validateAddress(II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    .line 143
    :cond_0
    array-length v1, p2

    const/4 v2, 0x4

    if-ge v1, v2, :cond_1

    .line 144
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_1
    const/4 v1, 0x0

    .line 147
    aget-byte v1, p2, v1

    invoke-static {v1}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v7

    const/4 v1, 0x2

    .line 149
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 151
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 153
    invoke-static {p2, v3}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v3

    if-ne v3, v4, :cond_3

    .line 156
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/hdmi/HdmiCecMessage;

    return-object p0

    .line 158
    :cond_3
    invoke-static {p2, v1}, Lcom/android/server/hdmi/HdmiUtils;->getEndOfSequence([BI)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 159
    array-length v1, p2

    invoke-static {p2, v0, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    .line 160
    invoke-static {v0}, Landroid/hardware/hdmi/DeviceFeatures;->fromOperand([B)Landroid/hardware/hdmi/DeviceFeatures;

    move-result-object v8

    .line 162
    new-instance v3, Lcom/android/server/hdmi/ReportFeaturesMessage;

    move v4, p0

    move v5, p1

    move-object v6, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/hdmi/ReportFeaturesMessage;-><init>(II[BILandroid/hardware/hdmi/DeviceFeatures;)V

    return-object v3
.end method

.method public static hdmiDeviceInfoDeviceTypeToShiftValue(I)I
    .locals 4

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    const/4 v1, 0x6

    if-eq p0, v0, :cond_4

    const/4 v0, 0x5

    const/4 v2, 0x3

    if-eq p0, v2, :cond_3

    const/4 v3, 0x4

    if-eq p0, v3, :cond_2

    if-eq p0, v0, :cond_1

    if-ne p0, v1, :cond_0

    const/4 p0, 0x2

    return p0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled device type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    return v2

    :cond_2
    return v3

    :cond_3
    return v0

    :cond_4
    return v1

    :cond_5
    const/4 p0, 0x7

    return p0
.end method

.method public static validateAddress(II)I
    .locals 2

    const/16 v0, 0x7fff

    const v1, 0x8000

    .line 169
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessageValidator;->validateAddress(IIII)I

    move-result p0

    return p0
.end method


# virtual methods
.method public getCecVersion()I
    .locals 0

    .line 180
    iget p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mCecVersion:I

    return p0
.end method

.method public getDeviceFeatures()Landroid/hardware/hdmi/DeviceFeatures;
    .locals 0

    .line 188
    iget-object p0, p0, Lcom/android/server/hdmi/ReportFeaturesMessage;->mDeviceFeatures:Landroid/hardware/hdmi/DeviceFeatures;

    return-object p0
.end method
