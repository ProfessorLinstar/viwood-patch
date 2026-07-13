.class public abstract Lcom/android/server/hdmi/HdmiCecMessageBuilder;
.super Ljava/lang/Object;
.source "HdmiCecMessageBuilder.java"


# direct methods
.method public static buildActiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0x82

    .line 320
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v1, 0xf

    .line 319
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildCecVersion(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 186
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x9e

    .line 189
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x33

    .line 678
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x99

    .line 666
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildClearExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa1

    .line 690
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/4 v0, 0x1

    .line 711
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p3, v0, v1

    .line 713
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    const/4 v2, 0x3

    .line 166
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte v1, v2, v0

    const/4 v0, 0x2

    aput-byte p1, v2, v0

    const/16 p1, 0xf

    const/16 v0, 0x87

    .line 172
    invoke-static {p0, p1, v0, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildFeatureAbortCommand(IIII)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    and-int/lit16 p3, p3, 0xff

    int-to-byte p3, p3

    const/4 v0, 0x2

    .line 46
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/4 p2, 0x1

    aput-byte p3, v0, p2

    .line 50
    invoke-static {p0, p1, v1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveAudioStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x71

    .line 491
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveDevicePowerStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x8f

    .line 390
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveDeviceVendorIdCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x8c

    .line 83
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveFeatures(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa5

    .line 694
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveOsdNameCommand(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x46

    .line 72
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGivePhysicalAddress(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x83

    .line 61
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildGiveSystemAudioModeStatus(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x7d

    .line 553
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildInactiveSource(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0x9d

    .line 332
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/4 v1, 0x0

    .line 331
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildInitiateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc0

    .line 211
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordOff(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xb

    .line 618
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRecordOn(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x9

    .line 607
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportArcInitiated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc1

    .line 244
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportArcTerminated(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc2

    .line 255
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportAudioStatus(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/16 p3, 0x80

    goto :goto_0

    :cond_0
    move p3, v0

    :goto_0
    int-to-byte p3, p3

    int-to-byte p2, p2

    and-int/lit8 p2, p2, 0x7f

    or-int/2addr p2, p3

    int-to-byte p2, p2

    const/4 p3, 0x1

    .line 505
    new-array p3, p3, [B

    aput-byte p2, p3, v0

    const/16 p2, 0x7a

    .line 506
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportMenuStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 417
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x8e

    .line 420
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportPhysicalAddressCommand(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 3

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v1, 0x3

    .line 143
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p1, v1, v0

    const/4 p1, 0x2

    aput-byte p2, v1, p1

    const/16 p1, 0xf

    const/16 p2, 0x84

    .line 151
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportPowerStatus(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 402
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    const/16 p2, 0x90

    .line 405
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportShortAudioDescriptor(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa3

    .line 479
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildReportSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x7e

    .line 465
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestActiveSource(I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0xf

    const/16 v1, 0x85

    .line 307
    invoke-static {p0, v0, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestArcInitiation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc3

    .line 200
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestArcTermination(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc4

    .line 233
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRequestShortAudioDescriptor(II[I)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    .line 269
    array-length v0, p2

    const/4 v1, 0x4

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 271
    aget v3, p2, v2

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    aput-byte v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/16 p2, 0xa4

    .line 273
    invoke-static {p0, p1, p2, v1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRoutingChange(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 4

    shr-int/lit8 v0, p1, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    shr-int/lit8 v1, p2, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x4

    .line 360
    new-array v2, v2, [B

    const/4 v3, 0x0

    aput-byte v0, v2, v3

    const/4 v0, 0x1

    aput-byte p1, v2, v0

    const/4 p1, 0x2

    aput-byte v1, v2, p1

    const/4 p1, 0x3

    aput-byte p2, v2, p1

    const/16 p1, 0xf

    const/16 p2, 0x80

    .line 364
    invoke-static {p0, p1, p2, v2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildRoutingInformation(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0x81

    .line 379
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v1, 0xf

    .line 378
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetAnalogueTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x34

    .line 642
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetDigitalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x97

    .line 630
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetExternalTimer(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xa2

    .line 654
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetMenuLanguageCommand(ILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 97
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x3

    if-eq v3, v4, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 101
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 103
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    and-int/lit16 v3, v3, 0xff

    int-to-byte v3, v3

    .line 104
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    .line 105
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result p1

    and-int/lit16 p1, p1, 0xff

    int-to-byte p1, p1

    new-array v4, v4, [B

    aput-byte v3, v4, v2

    aput-byte v5, v4, v1

    aput-byte p1, v4, v0

    const/16 p1, 0xf

    const/16 v0, 0x32

    .line 108
    invoke-static {p0, p1, v0, v4}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetOsdNameCommand(IILjava/lang/String;)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    .line 121
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xe

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    .line 124
    :try_start_0
    invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    const-string v0, "US-ASCII"

    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v0, 0x47

    .line 128
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static buildSetStreamPath(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    const/16 v0, 0x86

    .line 346
    invoke-static {p1}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p1

    const/16 v1, 0xf

    .line 345
    invoke-static {p0, v1, v0, p1}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSetSystemAudioMode(IIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x72

    .line 451
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildCommandWithBooleanParam(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildStandby(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x36

    .line 564
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildSystemAudioModeRequest(IIIZ)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x70

    if-eqz p3, :cond_0

    .line 436
    invoke-static {p2}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->physicalAddressToParam(I)[B

    move-result-object p2

    .line 435
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0

    .line 438
    :cond_0
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildTerminateArc(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xc5

    .line 222
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildTextViewOn(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0xd

    .line 286
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlPressed(III)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 2

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v0, 0x1

    .line 518
    new-array v0, v0, [B

    const/4 v1, 0x0

    aput-byte p2, v0, v1

    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessageBuilder;->buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlPressed(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x44

    .line 530
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildUserControlReleased(II)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x45

    .line 542
    invoke-static {p0, p1, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildVendorCommand(II[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 1

    const/16 v0, 0x89

    .line 576
    invoke-static {p0, p1, v0, p2}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static buildVendorCommandWithId(III[B)Lcom/android/server/hdmi/HdmiCecMessage;
    .locals 5

    .line 590
    array-length v0, p3

    const/4 v1, 0x3

    add-int/2addr v0, v1

    new-array v0, v0, [B

    shr-int/lit8 v2, p2, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v3, 0x0

    .line 591
    aput-byte v2, v0, v3

    shr-int/lit8 v2, p2, 0x8

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    const/4 v4, 0x1

    .line 592
    aput-byte v2, v0, v4

    and-int/lit16 p2, p2, 0xff

    int-to-byte p2, p2

    const/4 v2, 0x2

    .line 593
    aput-byte p2, v0, v2

    .line 594
    array-length p2, p3

    invoke-static {p3, v3, v0, v1, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/16 p2, 0xa0

    .line 595
    invoke-static {p0, p1, p2, v0}, Lcom/android/server/hdmi/HdmiCecMessage;->build(III[B)Lcom/android/server/hdmi/HdmiCecMessage;

    move-result-object p0

    return-object p0
.end method

.method public static physicalAddressToParam(I)[B
    .locals 3

    shr-int/lit8 v0, p0, 0x8

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    and-int/lit16 p0, p0, 0xff

    int-to-byte p0, p0

    const/4 v1, 0x2

    .line 717
    new-array v1, v1, [B

    const/4 v2, 0x0

    aput-byte v0, v1, v2

    const/4 v0, 0x1

    aput-byte p0, v1, v0

    return-object v1
.end method
