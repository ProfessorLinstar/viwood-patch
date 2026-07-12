.class public final Lcom/android/server/usb/descriptors/UsbDescriptorParser;
.super Ljava/lang/Object;
.source "UsbDescriptorParser.java"


# instance fields
.field public mACInterfacesSpec:I

.field public mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

.field public mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

.field public mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

.field public final mDescriptors:Ljava/util/ArrayList;

.field public final mDeviceAddr:Ljava/lang/String;

.field public mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

.field public mVCInterfacesSpec:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[B)V
    .locals 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x100

    .line 48
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    .line 53
    iput v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    .line 71
    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    const/16 v0, 0x80

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0, p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->parseDescriptors([B)V

    return-void
.end method

.method private native getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;
.end method

.method private native getRawDescriptors_native(Ljava/lang/String;)[B
.end method


# virtual methods
.method public final allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 8

    .line 130
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->resetReadCount()V

    .line 132
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 133
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v1

    .line 135
    invoke-static {v1, v0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->logDescriptorName(BI)V

    const/4 v2, 0x1

    if-eq v1, v2, :cond_f

    const/4 v3, 0x2

    .line 138
    const-string v4, "UsbDescriptorParser"

    if-eq v1, v3, :cond_d

    const/4 v3, 0x4

    if-eq v1, v3, :cond_b

    const/4 v3, 0x5

    if-eq v1, v3, :cond_9

    const/16 v3, 0xb

    if-eq v1, v3, :cond_8

    const/16 v3, 0x21

    if-eq v1, v3, :cond_7

    const/16 v3, 0x24

    const/16 v5, 0x10

    const/16 v6, 0xe

    const/4 v7, 0x0

    if-eq v1, v3, :cond_4

    const/16 v3, 0x25

    if-eq v1, v3, :cond_0

    goto/16 :goto_1

    .line 232
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_10

    .line 233
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v3

    if-eq v3, v2, :cond_2

    if-eq v3, v6, :cond_1

    if-eq v3, v5, :cond_3

    .line 265
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Unparsed Class-specific Endpoint:0x"

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 265
    invoke-static {v4, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 247
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 253
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    .line 252
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usb/descriptors/UsbVCEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v7

    goto :goto_0

    .line 236
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Byte;->byteValue()B

    move-result p1

    .line 241
    invoke-static {p0, v0, v1, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;IBB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v7

    .line 269
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    if-eqz p0, :cond_10

    if-eqz v7, :cond_10

    .line 270
    invoke-virtual {p0, v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->setClassSpecificEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptor;)V

    goto/16 :goto_1

    .line 199
    :cond_4
    iget-object v3, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v3, :cond_10

    .line 200
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v3

    if-eq v3, v2, :cond_6

    if-eq v3, v6, :cond_5

    if-eq v3, v5, :cond_10

    .line 225
    const-string p0, "  Unparsed Class-specific"

    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 215
    :cond_5
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbVCInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v7

    goto/16 :goto_1

    .line 203
    :cond_6
    invoke-static {p0, p1, v0, v1}, Lcom/android/server/usb/descriptors/UsbACInterface;->allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v7

    .line 204
    instance-of p1, v7, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz p1, :cond_10

    .line 205
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-virtual {p0, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->setMidiHeaderInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptor;)V

    goto :goto_1

    .line 185
    :cond_7
    new-instance v7, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbHIDDescriptor;-><init>(IB)V

    goto :goto_1

    .line 192
    :cond_8
    new-instance v7, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceAssoc;-><init>(IB)V

    goto :goto_1

    .line 169
    :cond_9
    new-instance v7, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;-><init>(IB)V

    iput-object v7, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurEndpointDescriptor:Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    .line 170
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz p1, :cond_a

    .line 171
    invoke-virtual {p1, v7}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->addEndpointDescriptor(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)V

    goto :goto_1

    .line 174
    :cond_a
    const-string p1, "Endpoint Descriptor found with no associated Interface Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_b
    new-instance v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;-><init>(IB)V

    iput-object v7, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 159
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz p1, :cond_c

    .line 160
    invoke-virtual {p1, v7}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->addInterfaceDescriptor(Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;)V

    goto :goto_1

    .line 162
    :cond_c
    const-string p1, "Interface Descriptor found with no associated Config Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 147
    :cond_d
    new-instance v7, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;-><init>(IB)V

    iput-object v7, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurConfigDescriptor:Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    .line 148
    iget-object p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    if-eqz p1, :cond_e

    .line 149
    invoke-virtual {p1, v7}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->addConfigDescriptor(Lcom/android/server/usb/descriptors/UsbConfigDescriptor;)V

    goto :goto_1

    .line 151
    :cond_e
    const-string p1, "Config Descriptor found with no associated Device Descriptor!"

    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    new-instance v0, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser$UsbDescriptorsStreamFormatException;-><init>(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Ljava/lang/String;)V

    throw v0

    .line 143
    :cond_f
    new-instance v7, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    invoke-direct {v7, v0, v1}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;-><init>(IB)V

    iput-object v7, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    :cond_10
    :goto_1
    if-nez v7, :cond_11

    .line 281
    new-instance p0, Lcom/android/server/usb/descriptors/UsbUnknown;

    invoke-direct {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbUnknown;-><init>(IB)V

    return-object p0

    :cond_11
    return-object v7
.end method

.method public calculateMidiInterfaceDescriptorsCount()I
    .locals 6

    const/4 v0, 0x1

    .line 798
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 799
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 801
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    .line 802
    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 803
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 805
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 807
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v4, :cond_0

    .line 808
    check-cast v3, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 815
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Class Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 816
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 815
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v1
.end method

.method public calculateNumLegacyMidiInputs()I
    .locals 1

    const/4 v0, 0x0

    .line 890
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result p0

    return p0
.end method

.method public calculateNumLegacyMidiOutputs()I
    .locals 1

    const/4 v0, 0x1

    .line 897
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateNumLegacyMidiPorts(Z)I

    move-result p0

    return p0
.end method

.method public final calculateNumLegacyMidiPorts(Z)I
    .locals 9

    .line 828
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    const-string v3, "UsbDescriptorParser"

    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v2, v2, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 829
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 830
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    if-eqz v5, :cond_1

    .line 831
    check-cast v4, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;

    goto :goto_1

    .line 834
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unrecognized Config l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 835
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 834
    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_1
    if-nez v4, :cond_3

    .line 840
    const-string p0, "Config not found"

    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 844
    :cond_3
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 847
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbConfigDescriptor;->getInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :cond_4
    :goto_2
    const/4 v4, 0x1

    if-ge v3, v2, :cond_5

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 848
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v6

    if-ne v6, v4, :cond_4

    .line 849
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_4

    .line 851
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 853
    instance-of v6, v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v6, :cond_4

    .line 854
    check-cast v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 856
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->getMidiStreamingClass()I

    move-result v4

    const/16 v6, 0x100

    if-ne v4, v6, :cond_4

    .line 857
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 866
    :cond_5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v1

    move v3, v2

    :cond_6
    if-ge v3, v0, :cond_9

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v3, v3, 0x1

    check-cast v5, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v6, v1

    .line 867
    :goto_3
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v7

    if-ge v6, v7, :cond_6

    .line 869
    invoke-virtual {v5, v6}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v7

    .line 871
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_7

    move v8, v4

    goto :goto_4

    :cond_7
    move v8, v1

    :goto_4
    if-ne v8, p1, :cond_8

    .line 873
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getClassSpecificEndpointDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v7

    if-eqz v7, :cond_8

    .line 874
    instance-of v8, v7, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    if-eqz v8, :cond_8

    .line 876
    check-cast v7, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 878
    invoke-virtual {v7}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getNumJacks()B

    move-result v7

    add-int/2addr v2, v7

    :cond_8
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_9
    return v2
.end method

.method public containsLegacyMidiDeviceEndpoint()Z
    .locals 1

    .line 714
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 715
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public containsUniversalMidiDeviceEndpoint()Z
    .locals 1

    .line 705
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object v0

    .line 706
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z

    move-result p0

    return p0
.end method

.method public doesInterfaceContainEndpoint(Ljava/util/ArrayList;)Z
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    move v2, v1

    .line 725
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 727
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v4, p0

    .line 728
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v5

    if-ge v4, v5, :cond_1

    .line 731
    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v5

    .line 733
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v5

    if-nez v5, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-gtz v1, :cond_4

    if-lez v2, :cond_3

    goto :goto_3

    :cond_3
    return p0

    :cond_4
    :goto_3
    const/4 p0, 0x1

    return p0
.end method

.method public findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .locals 1

    const/16 v0, 0x100

    .line 754
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;
    .locals 6

    const/4 v0, 0x1

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 764
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 767
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 769
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    .line 770
    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 771
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    .line 773
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getMidiHeaderInterfaceDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 775
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    if-eqz v5, :cond_0

    .line 776
    check-cast v4, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;

    .line 778
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbMSMidiHeader;->getMidiStreamingClass()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 779
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 785
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Undefined Audio Class Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 785
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;
    .locals 1

    const/16 v0, 0x200

    .line 747
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findMidiInterfaceDescriptors(I)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getACInterfaceDescriptors(BI)Ljava/util/ArrayList;
    .locals 6

    .line 426
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 427
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 428
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/16 v5, 0x24

    if-ne v4, v5, :cond_0

    .line 430
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACInterface;

    if-eqz v4, :cond_1

    .line 431
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbACInterface;

    .line 432
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v5

    if-ne v5, p1, :cond_0

    .line 433
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    if-ne v4, p2, :cond_0

    .line 434
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 437
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Audio Interface len: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " type:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 437
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public getACInterfaceSpec()I
    .locals 0

    .line 99
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return p0
.end method

.method public getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mCurInterfaceDescriptor:Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    return-object p0
.end method

.method public getDescriptorString(I)Ljava/lang/String;
    .locals 1

    .line 358
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getDescriptorString_native(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getDescriptors()Ljava/util/ArrayList;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getDeviceAddr()Ljava/lang/String;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceDescriptor()Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;
    .locals 0

    .line 288
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    return-object p0
.end method

.method public getInputHeadsetProbability()F
    .locals 3

    .line 904
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 911
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasSpeaker()Z

    move-result v0

    .line 913
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMic()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_1

    const/high16 v1, 0x3f400000    # 0.75f

    .line 917
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    const/high16 v2, 0x3e800000    # 0.25f

    if-eqz v0, :cond_2

    add-float/2addr v1, v2

    .line 920
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getMaximumInputChannelCount()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_3

    sub-float/2addr v1, v2

    :cond_3
    return v1
.end method

.method public getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;
    .locals 6

    .line 404
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 405
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    if-ge v2, v1, :cond_2

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 407
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    const/4 v5, 0x4

    if-ne v4, v5, :cond_0

    .line 408
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v4, :cond_1

    .line 409
    move-object v4, v3

    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 410
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbClass()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 411
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 414
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unrecognized Interface l: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " t:0x"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 414
    const-string v4, "UsbDescriptorParser"

    invoke-static {v4, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public final getMaximumChannelCount()I
    .locals 5

    .line 944
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 945
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    if-eqz v4, :cond_0

    .line 946
    check-cast v3, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    .line 947
    invoke-interface {v3}, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;->getChannelCount()B

    move-result v3

    .line 946
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public final getMaximumInputChannelCount()I
    .locals 6

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 956
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 958
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 959
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-nez v5, :cond_0

    goto :goto_0

    .line 962
    :cond_0
    move-object v5, v4

    check-cast v5, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 963
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbACTerminal;->isInputTerminal()Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 969
    :cond_1
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 970
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    if-nez v5, :cond_2

    goto :goto_0

    .line 973
    :cond_2
    check-cast v4, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;

    .line 974
    invoke-interface {v4}, Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;->getChannelCount()B

    move-result v4

    .line 973
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_0

    :cond_3
    return v2
.end method

.method public getOutputHeadsetLikelihood()F
    .locals 11

    .line 983
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 995
    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object v0

    .line 997
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    move v7, v6

    :cond_1
    :goto_0
    if-ge v7, v3, :cond_6

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v7, v7, 0x1

    check-cast v8, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 998
    instance-of v9, v8, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v9, :cond_5

    .line 999
    check-cast v8, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 1000
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v9

    const/16 v10, 0x301

    if-ne v9, v10, :cond_3

    .line 1002
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getAssocTerminal()B

    move-result v5

    if-eqz v5, :cond_2

    move v5, v2

    move v6, v5

    goto :goto_0

    :cond_2
    move v5, v2

    goto :goto_0

    .line 1005
    :cond_3
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v9

    const/16 v10, 0x302

    if-eq v9, v10, :cond_4

    .line 1006
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v8

    const/16 v9, 0x402

    if-ne v8, v9, :cond_1

    :cond_4
    move v4, v2

    goto :goto_0

    .line 1010
    :cond_5
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Undefined Audio Output terminal l: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " t:0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1011
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1010
    const-string v9, "UsbDescriptorParser"

    invoke-static {v9, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v2, 0x3f400000    # 0.75f

    if-eqz v4, :cond_7

    move v1, v2

    goto :goto_2

    :cond_7
    if-eqz v5, :cond_9

    if-eqz v6, :cond_8

    move v1, v2

    goto :goto_1

    :cond_8
    const/high16 v1, 0x3f000000    # 0.5f

    .line 1025
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getMaximumChannelCount()I

    move-result v2

    const/4 v3, 0x2

    if-le v2, v3, :cond_9

    sub-float/2addr v1, v0

    :cond_9
    :goto_2
    if-nez v4, :cond_a

    if-eqz v5, :cond_b

    .line 1031
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result p0

    if-eqz p0, :cond_b

    add-float/2addr v1, v0

    :cond_b
    return v1
.end method

.method public getRawDescriptors()[B
    .locals 1

    .line 349
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceAddr:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getRawDescriptors_native(Ljava/lang/String;)[B

    move-result-object p0

    return-object p0
.end method

.method public hasAudioCapture()Z
    .locals 2

    const/4 v0, 0x2

    const/16 v1, 0x101

    .line 630
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 632
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasAudioInterface()Z
    .locals 1

    const/4 v0, 0x1

    .line 576
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 577
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public hasAudioPlayback()Z
    .locals 2

    const/4 v0, 0x3

    const/16 v1, 0x101

    .line 620
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminalExcludeType(II)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 622
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasAudioTerminal(II)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hasAudioTerminal(II)Z
    .locals 6

    .line 586
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 587
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_0

    .line 588
    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 589
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_0

    .line 590
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    if-ne v3, p2, :cond_0

    return v5

    :cond_1
    return v1
.end method

.method public hasAudioTerminalExcludeType(II)Z
    .locals 6

    .line 604
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 605
    instance-of v4, v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v4, :cond_0

    .line 606
    check-cast v3, Lcom/android/server/usb/descriptors/UsbACTerminal;

    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubclass()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 607
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACInterface;->getSubtype()B

    move-result v4

    if-ne v4, p1, :cond_0

    .line 608
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v3

    if-eq v3, p2, :cond_0

    return v5

    :cond_1
    return v1
.end method

.method public hasHIDInterface()Z
    .locals 1

    const/4 v0, 0x3

    .line 666
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 667
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasInput()Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 456
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 459
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 460
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_1

    .line 461
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 463
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x100

    if-eq v4, v5, :cond_0

    const/16 v5, 0x300

    if-eq v4, v5, :cond_0

    return v1

    .line 475
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 476
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 475
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hasMIDIInterface()Z
    .locals 7

    const/4 v0, 0x1

    .line 684
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 685
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v1, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 687
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    if-eqz v5, :cond_1

    .line 688
    check-cast v4, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 689
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getUsbSubclass()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    return v0

    .line 693
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Class Interface l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 693
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hasMic()Z
    .locals 7

    const/4 v0, 0x2

    const/4 v1, 0x1

    .line 528
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 530
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 531
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_1

    .line 532
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 533
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->isInputTerminal()Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    .line 537
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 538
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 537
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hasOutput()Z
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 494
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_2

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 498
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_1

    .line 499
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 501
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    and-int/lit16 v4, v4, -0x100

    const/16 v5, 0x100

    if-eq v4, v5, :cond_0

    const/16 v5, 0x200

    if-eq v4, v5, :cond_0

    return v1

    .line 513
    :cond_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Input terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 514
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 513
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    return v2
.end method

.method public hasSpeaker()Z
    .locals 7

    const/4 v0, 0x3

    const/4 v1, 0x1

    .line 551
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 553
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    move v3, v2

    :cond_0
    :goto_0
    if-ge v3, v0, :cond_3

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v3, v3, 0x1

    check-cast v4, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 554
    instance-of v5, v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v5, :cond_2

    .line 555
    check-cast v4, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 556
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x301

    if-eq v5, v6, :cond_1

    .line 557
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v5

    const/16 v6, 0x302

    if-eq v5, v6, :cond_1

    .line 558
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result v4

    const/16 v5, 0x402

    if-ne v4, v5, :cond_0

    :cond_1
    return v1

    .line 563
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Undefined Audio Output terminal l: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " t:0x"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 564
    invoke-virtual {v4}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 563
    const-string v5, "UsbDescriptorParser"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    return v2
.end method

.method public hasStorageInterface()Z
    .locals 1

    const/16 v0, 0x8

    .line 675
    invoke-virtual {p0, v0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInterfaceDescriptorsForClass(I)Ljava/util/ArrayList;

    move-result-object p0

    .line 676
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public hasVideoCapture()Z
    .locals 4

    .line 641
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 642
    instance-of v3, v3, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public hasVideoPlayback()Z
    .locals 4

    .line 653
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v2, v2, 0x1

    check-cast v3, Lcom/android/server/usb/descriptors/UsbDescriptor;

    .line 654
    instance-of v3, v3, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public isDock()Z
    .locals 3

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasMIDIInterface()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->hasHIDInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    const/4 v2, 0x1

    .line 1060
    invoke-virtual {p0, v0, v2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceDescriptors(BI)Ljava/util/ArrayList;

    move-result-object p0

    .line 1063
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v2, :cond_1

    return v1

    .line 1067
    :cond_1
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    if-eqz v0, :cond_2

    .line 1068
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbACTerminal;

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACTerminal;->getTerminalType()I

    move-result p0

    const/16 v0, 0x602

    if-ne p0, v0, :cond_3

    return v2

    .line 1073
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Undefined Audio Output terminal l: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " t:0x"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/descriptors/UsbDescriptor;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1073
    const-string v0, "UsbDescriptorParser"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    return v1
.end method

.method public isInputHeadset()Z
    .locals 2

    .line 938
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getInputHeadsetProbability()F

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->isOutputHeadset()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isOutputHeadset()Z
    .locals 1

    .line 1045
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getOutputHeadsetLikelihood()F

    move-result p0

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float p0, p0, v0

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public parseDescriptors([B)V
    .locals 8

    .line 299
    const-string v0, "UsbDescriptorParser"

    new-instance v1, Lcom/android/server/usb/descriptors/ByteStream;

    invoke-direct {v1, p1}, Lcom/android/server/usb/descriptors/ByteStream;-><init>([B)V

    .line 300
    :cond_0
    :goto_0
    invoke-virtual {v1}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result p1

    if-lez p1, :cond_3

    .line 303
    :try_start_0
    invoke-virtual {p0, v1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->allocDescriptor(Lcom/android/server/usb/descriptors/ByteStream;)Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 305
    const-string v2, "Exception allocating USB descriptor."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_0

    .line 311
    :try_start_1
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 314
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto/16 :goto_3

    :catch_1
    move-exception v2

    .line 317
    :try_start_2
    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->postParse(Lcom/android/server/usb/descriptors/ByteStream;)V

    .line 320
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception parsing USB descriptors. type:0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " status:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 321
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 320
    invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    invoke-virtual {v2}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 327
    array-length v3, v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v4, " @ "

    const-string v5, "  class:"

    if-lez v3, :cond_1

    .line 328
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, v2, v6

    invoke-virtual {v7}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v6

    .line 329
    invoke-virtual {v6}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v6

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 328
    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 331
    :cond_1
    array-length v3, v2

    const/4 v6, 0x1

    if-le v3, v6, :cond_2

    .line 332
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v2, v6

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v6

    .line 333
    invoke-virtual {v2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 332
    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v2, 0x4

    .line 337
    invoke-virtual {p1, v2}, Lcom/android/server/usb/descriptors/UsbDescriptor;->setStatus(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_2

    .line 339
    :goto_3
    iget-object p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDescriptors:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 340
    throw v0

    :cond_3
    return-void
.end method

.method public setACInterfaceSpec(I)V
    .locals 0

    .line 95
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mACInterfacesSpec:I

    return-void
.end method

.method public setVCInterfaceSpec(I)V
    .locals 0

    .line 103
    iput p1, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mVCInterfacesSpec:I

    return-void
.end method

.method public toAndroidUsbDeviceBuilder()Landroid/hardware/usb/UsbDevice$Builder;
    .locals 2

    .line 375
    iget-object v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->mDeviceDescriptor:Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;

    const-string v1, "UsbDescriptorParser"

    if-nez v0, :cond_0

    .line 376
    const-string/jumbo p0, "toAndroidUsbDevice() ERROR - No Device Descriptor"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 380
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/usb/descriptors/UsbDeviceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbDevice$Builder;

    move-result-object p0

    if-nez p0, :cond_1

    .line 382
    const-string/jumbo v0, "toAndroidUsbDevice() ERROR Creating Device"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object p0
.end method
