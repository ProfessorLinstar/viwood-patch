.class public final Lcom/android/server/usb/UsbDirectMidiDevice;
.super Ljava/lang/Object;
.source "UsbDirectMidiDevice.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

.field public mContext:Landroid/content/Context;

.field public mDefaultMidiProtocol:I

.field public mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mInputUsbEndpoints:Ljava/util/ArrayList;

.field public mIsOpen:Z

.field public final mIsUniversalMidiDevice:Z

.field public final mLock:Ljava/lang/Object;

.field public mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

.field public mMidiEventMultiSchedulers:Ljava/util/ArrayList;

.field public final mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

.field public mName:Ljava/lang/String;

.field public final mNumInputs:I

.field public final mNumOutputs:I

.field public mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

.field public mOutputUsbEndpoints:Ljava/util/ArrayList;

.field public mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

.field public mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

.field public mServer:Landroid/media/midi/MidiDeviceServer;

.field public mServerAvailable:Z

.field public final mShouldCallSetInterface:Z

.field public mThreads:Ljava/util/ArrayList;

.field public final mUniqueUsbDeviceIdentifier:Ljava/lang/String;

.field public mUsbDevice:Landroid/hardware/usb/UsbDevice;

.field public mUsbDeviceConnections:Ljava/util/ArrayList;

.field public mUsbInterfaces:Ljava/util/ArrayList;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmIsUniversalMidiDevice(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/usb/UsbDirectMidiDevice;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPowerBoostSetter(Lcom/android/server/usb/UsbDirectMidiDevice;)Lcom/android/server/usb/PowerBoostSetter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$mcloseLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$misChannelVoiceMessage(Lcom/android/server/usb/UsbDirectMidiDevice;[B)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDirectMidiDevice;->isChannelVoiceMessage([B)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mopenLocked(Lcom/android/server/usb/UsbDirectMidiDevice;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->openLocked()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mswapEndiannessPerWord(Lcom/android/server/usb/UsbDirectMidiDevice;[BI)[B
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDirectMidiDevice;->swapEndiannessPerWord([BI)[B

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$smlogByteArray(Ljava/lang/String;[BII)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDirectMidiDevice;->logByteArray(Ljava/lang/String;[BII)V

    return-void
.end method

.method public constructor <init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V
    .locals 9

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    new-instance v0, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    invoke-direct {v0}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const/4 v0, 0x1

    .line 107
    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 109
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 113
    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    .line 118
    new-instance v2, Lcom/android/server/usb/UsbDirectMidiDevice$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbDirectMidiDevice$1;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    .line 200
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 201
    iput-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    .line 202
    iput-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    .line 203
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    .line 207
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->calculateMidiInterfaceDescriptorsCount()I

    move-result p1

    const/4 p4, 0x0

    if-le p1, v0, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, p4

    :goto_0
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz p3, :cond_1

    .line 211
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findUniversalMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 213
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->findLegacyMidiInterfaceDescriptors()Ljava/util/ArrayList;

    move-result-object p1

    .line 216
    :goto_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    .line 217
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p2

    const-string v2, "UsbDirectMidiDevice"

    if-lez p2, :cond_5

    .line 222
    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p2, p4}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object p2

    move v3, p4

    .line 223
    :goto_2
    invoke-virtual {p2}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 225
    invoke-virtual {p2, v3}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v4

    .line 226
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    move v6, p4

    :cond_2
    if-ge v6, v5, :cond_3

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v6, v6, 0x1

    check-cast v7, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    .line 227
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v7, v8}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 228
    invoke-virtual {p0, v4, v8}, Lcom/android/server/usb/UsbDirectMidiDevice;->areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 229
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 235
    :cond_4
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p1

    if-le p1, v0, :cond_5

    .line 236
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Skipping some USB configurations. Count: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 237
    invoke-virtual {p2}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    move p1, p4

    move p2, p1

    move v0, p2

    .line 244
    :goto_3
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge p1, v3, :cond_8

    .line 245
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v4, p4

    .line 246
    :goto_4
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v5

    if-ge v4, v5, :cond_7

    .line 249
    invoke-virtual {v3, v4}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v5

    .line 251
    invoke-virtual {v5}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v6

    if-nez v6, :cond_6

    .line 252
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v5

    add-int/2addr v0, v5

    goto :goto_5

    .line 254
    :cond_6
    invoke-virtual {p0, v5}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v5

    add-int/2addr p2, v5

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    .line 259
    :cond_8
    iput p2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    .line 260
    iput v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    .line 262
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Created UsbDirectMidiDevice with "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " inputs and "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " outputs. isUniversalMidiDevice: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-array p1, v0, [Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    :goto_6
    if-ge p4, v0, :cond_9

    .line 269
    iget-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    new-instance p2, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    invoke-direct {p2, v1}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice-IA;)V

    aput-object p2, p1, p4

    add-int/lit8 p4, p4, 0x1

    goto :goto_6

    .line 272
    :cond_9
    new-instance p1, Lcom/android/server/usb/PowerBoostSetter;

    invoke-direct {p1}, Lcom/android/server/usb/PowerBoostSetter;-><init>()V

    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mPowerBoostSetter:Lcom/android/server/usb/PowerBoostSetter;

    return-void
.end method

.method public static create(Landroid/content/Context;Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)Lcom/android/server/usb/UsbDirectMidiDevice;
    .locals 1

    .line 188
    new-instance v0, Lcom/android/server/usb/UsbDirectMidiDevice;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbDirectMidiDevice;-><init>(Landroid/hardware/usb/UsbDevice;Lcom/android/server/usb/descriptors/UsbDescriptorParser;ZLjava/lang/String;)V

    .line 190
    invoke-virtual {v0, p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->register(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 191
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 192
    const-string p0, "UsbDirectMidiDevice"

    const-string p1, "createDeviceServer failed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v0
.end method

.method public static logByteArray(Ljava/lang/String;[BII)V
    .locals 3

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move p0, p2

    :goto_0
    add-int v1, p2, p3

    if-ge p0, v1, :cond_1

    .line 803
    aget-byte v1, p1, p0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    const-string v2, "0x%02X"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    if-eq p0, v1, :cond_0

    .line 805
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    .line 808
    :cond_1
    const-string p0, "UsbDirectMidiDevice"

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public final areEquivalent(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbInterface;)Z
    .locals 5

    .line 836
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getId()I

    move-result v0

    const/4 v1, 0x0

    if-ne p0, v0, :cond_6

    .line 837
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getAlternateSetting()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 838
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 839
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceSubclass()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 840
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getInterfaceProtocol()I

    move-result v0

    if-ne p0, v0, :cond_6

    .line 841
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-eq p0, v0, :cond_0

    goto :goto_2

    .line 845
    :cond_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 846
    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_2

    return v1

    .line 849
    :cond_1
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Landroid/hardware/usb/UsbInterface;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    move p0, v1

    .line 854
    :goto_0
    invoke-virtual {p1}, Landroid/hardware/usb/UsbInterface;->getEndpointCount()I

    move-result v0

    if-ge p0, v0, :cond_5

    .line 855
    invoke-virtual {p1, p0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v0

    .line 856
    invoke-virtual {p2, p0}, Landroid/hardware/usb/UsbInterface;->getEndpoint(I)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v2

    .line 857
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getAddress()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 858
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getAttributes()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 859
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v3

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getMaxPacketSize()I

    move-result v4

    if-ne v3, v4, :cond_4

    .line 860
    invoke-virtual {v0}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v0

    invoke-virtual {v2}, Landroid/hardware/usb/UsbEndpoint;->getInterval()I

    move-result v2

    if-eq v0, v2, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    return v1

    :cond_5
    const/4 p0, 0x1

    return p0

    :cond_6
    :goto_2
    return v1
.end method

.method public final calculateDefaultMidiProtocol()I
    .locals 9

    .line 276
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    const/4 v1, 0x0

    move v2, v1

    .line 278
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ge v2, v3, :cond_5

    .line 279
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v5, v1

    move v6, v5

    move v7, v6

    .line 282
    :goto_1
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v8

    if-ge v5, v8, :cond_2

    if-eqz v6, :cond_0

    if-nez v7, :cond_2

    .line 286
    :cond_0
    invoke-virtual {v3, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v8

    .line 288
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v8

    if-nez v8, :cond_1

    move v7, v4

    goto :goto_2

    :cond_1
    move v6, v4

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    if-eqz v6, :cond_4

    if-eqz v7, :cond_4

    .line 299
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v4}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v4

    .line 300
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v3, v5}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    .line 301
    invoke-virtual {p0, v5, v4}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_3

    .line 304
    :cond_3
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    .line 305
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getInterfaceNumber()I

    move-result v0

    .line 306
    invoke-virtual {v3}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getAlternateSetting()B

    move-result v1

    .line 304
    invoke-virtual {p0, v4, v0, v1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->calculateMidiType(Landroid/hardware/usb/UsbDeviceConnection;II)I

    move-result p0

    .line 308
    invoke-virtual {v4}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    return p0

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 313
    :cond_5
    const-string p0, "UsbDirectMidiDevice"

    const-string v0, "Cannot find interface with both input and output endpoints"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v4
.end method

.method public close()V
    .locals 2

    .line 722
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 723
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    if-eqz v1, :cond_0

    .line 724
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->closeLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    .line 726
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 727
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 729
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-eqz p0, :cond_1

    .line 730
    invoke-static {p0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    :cond_1
    return-void

    .line 727
    :goto_1
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final closeLocked()V
    .locals 8

    .line 735
    const-string v0, "closeLocked()"

    const-string v1, "UsbDirectMidiDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 738
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    move v4, v3

    :cond_0
    :goto_0
    if-ge v4, v2, :cond_1

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_0

    .line 740
    invoke-virtual {v5}, Ljava/lang/Thread;->interrupt()V

    goto :goto_0

    .line 745
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :cond_2
    :goto_1
    if-ge v4, v2, :cond_3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Ljava/lang/Thread;

    if-eqz v5, :cond_2

    const-wide/16 v6, 0xc8

    .line 748
    :try_start_0
    invoke-virtual {v5, v6, v7}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 750
    :catch_0
    const-string/jumbo v0, "thread join interrupted"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 v0, 0x0

    .line 755
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    move v1, v3

    .line 757
    :goto_2
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    array-length v4, v2

    if-ge v1, v4, :cond_4

    .line 758
    aget-object v2, v2, v1

    invoke-virtual {v2, v0}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v3

    .line 761
    :goto_3
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_6

    move v2, v3

    .line 764
    :goto_4
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 766
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 767
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 768
    invoke-virtual {v4}, Lcom/android/internal/midi/MidiEventMultiScheduler;->close()V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 771
    :cond_6
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 773
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v4, v3

    :goto_5
    if-ge v4, v2, :cond_7

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v4, v4, 0x1

    check-cast v5, Landroid/hardware/usb/UsbDeviceConnection;

    .line 774
    invoke-virtual {v5}, Landroid/hardware/usb/UsbDeviceConnection;->close()V

    goto :goto_5

    .line 776
    :cond_7
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 777
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 778
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 779
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 780
    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 782
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 3

    .line 870
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    const-wide v0, 0x10500000001L

    .line 872
    iget p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    const-string/jumbo v2, "num_inputs"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10500000002L

    .line 873
    iget p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumOutputs:I

    const-string/jumbo v2, "num_outputs"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    const-wide v0, 0x10800000003L

    .line 874
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    const-string v2, "is_universal"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v0, 0x10900000004L

    .line 875
    iget-object p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    const-string/jumbo v2, "name"

    invoke-virtual {p1, v2, v0, v1, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 876
    iget-boolean p4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz p4, :cond_0

    .line 877
    iget-object p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiBlockParser:Lcom/android/server/usb/descriptors/UsbMidiBlockParser;

    const-string p4, "block_parser"

    const-wide v0, 0x10b00000005L

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/usb/descriptors/UsbMidiBlockParser;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 880
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I
    .locals 0

    .line 894
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getClassSpecificEndpointDescriptor()Lcom/android/server/usb/descriptors/UsbDescriptor;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 895
    instance-of p1, p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    if-eqz p1, :cond_0

    .line 897
    check-cast p0, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;

    .line 899
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi10Endpoint;->getNumJacks()B

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isChannelVoiceMessage([B)Z
    .locals 2

    const/4 p0, 0x0

    .line 884
    aget-byte p1, p1, p0

    const/4 v0, 0x4

    shr-int/2addr p1, v0

    and-int/lit8 p1, p1, 0xf

    int-to-byte p1, p1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final openLocked()Z
    .locals 12

    .line 318
    const-string v0, "UsbDirectMidiDevice"

    const-string/jumbo v1, "openLocked()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    .line 321
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 322
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 323
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 324
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 325
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 326
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 327
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    const/4 v1, 0x0

    move v2, v1

    .line 329
    :goto_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 330
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 331
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 332
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 333
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 334
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 336
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbInterfaces:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    move v9, v1

    .line 337
    :goto_1
    invoke-virtual {v8}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getNumEndpoints()B

    move-result v10

    if-ge v9, v10, :cond_1

    .line 340
    invoke-virtual {v8, v9}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->getEndpointDescriptor(I)Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;

    move-result-object v10

    .line 342
    invoke-virtual {v10}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->getDirection()I

    move-result v11

    if-nez v11, :cond_0

    .line 343
    iget-object v11, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v10, v11}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v11

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    invoke-virtual {p0, v10}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 345
    new-instance v11, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 346
    invoke-virtual {p0, v10}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v10

    invoke-direct {v11, v10}, Lcom/android/internal/midi/MidiEventMultiScheduler;-><init>(I)V

    .line 347
    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 349
    :cond_0
    iget-object v11, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v10, v11}, Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbEndpoint;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    invoke-virtual {p0, v10}, Lcom/android/server/usb/UsbDirectMidiDevice;->getNumJacks(Lcom/android/server/usb/descriptors/UsbEndpointDescriptor;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_4

    .line 354
    :cond_2
    iget-object v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v0, v9}, Landroid/hardware/usb/UsbManager;->openDevice(Landroid/hardware/usb/UsbDevice;)Landroid/hardware/usb/UsbDeviceConnection;

    move-result-object v9

    .line 355
    iget-object v10, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mParser:Lcom/android/server/usb/descriptors/UsbDescriptorParser;

    invoke-virtual {v8, v10}, Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;->toAndroid(Lcom/android/server/usb/descriptors/UsbDescriptorParser;)Landroid/hardware/usb/UsbInterface;

    move-result-object v8

    .line 356
    invoke-virtual {p0, v8, v9}, Lcom/android/server/usb/UsbDirectMidiDevice;->updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z

    move-result v8

    if-nez v8, :cond_3

    goto :goto_3

    .line 359
    :cond_3
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 360
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v8, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 361
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 362
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 363
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 364
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_5
    move v0, v1

    move v2, v0

    .line 370
    :goto_4
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_8

    move v3, v1

    .line 373
    :goto_5
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 375
    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 376
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 377
    iget-object v5, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 378
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/midi/MidiEventMultiScheduler;

    move v6, v1

    :goto_6
    if-ge v6, v4, :cond_6

    .line 380
    invoke-virtual {v5, v6}, Lcom/android/internal/midi/MidiEventMultiScheduler;->getEventScheduler(I)Lcom/android/internal/midi/MidiEventScheduler;

    move-result-object v7

    .line 381
    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    aget-object v8, v8, v2

    invoke-virtual {v7}, Lcom/android/internal/midi/MidiEventScheduler;->getReceiver()Landroid/media/midi/MidiReceiver;

    move-result-object v7

    invoke-virtual {v8, v7}, Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;->setReceiver(Landroid/media/midi/MidiReceiver;)V

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 387
    :cond_8
    iget-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    invoke-virtual {v0}, Landroid/media/midi/MidiDeviceServer;->getOutputPortReceivers()[Landroid/media/midi/MidiReceiver;

    move-result-object v8

    move v0, v1

    move v2, v0

    .line 391
    :goto_7
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_a

    move v10, v1

    move v9, v2

    .line 394
    :goto_8
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v10, v2, :cond_9

    .line 405
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 406
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/hardware/usb/UsbDeviceConnection;

    .line 407
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpoints:Ljava/util/ArrayList;

    .line 408
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/hardware/usb/UsbEndpoint;

    .line 410
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mInputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 411
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 413
    new-instance v2, Lcom/android/server/usb/UsbDirectMidiDevice$2;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UsbDirectMidiDevice input thread "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v3, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/usb/UsbDirectMidiDevice$2;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILandroid/hardware/usb/UsbDeviceConnection;Landroid/hardware/usb/UsbEndpoint;[Landroid/media/midi/MidiReceiver;I)V

    .line 517
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 518
    iget-object p0, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v9, v5

    add-int/lit8 v10, v10, 0x1

    move-object p0, v3

    goto :goto_8

    :cond_9
    move-object v3, p0

    add-int/lit8 v0, v0, 0x1

    move v2, v9

    goto :goto_7

    :cond_a
    move-object v3, p0

    move p0, v1

    move v0, p0

    .line 525
    :goto_9
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge p0, v2, :cond_c

    move v9, v1

    .line 528
    :goto_a
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v9, v2, :cond_b

    .line 539
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDeviceConnections:Ljava/util/ArrayList;

    .line 540
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/hardware/usb/UsbDeviceConnection;

    .line 541
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpoints:Ljava/util/ArrayList;

    .line 542
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/hardware/usb/UsbEndpoint;

    .line 544
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mOutputUsbEndpointCableCounts:Ljava/util/ArrayList;

    .line 545
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 546
    iget-object v2, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiEventMultiSchedulers:Ljava/util/ArrayList;

    .line 547
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lcom/android/internal/midi/MidiEventMultiScheduler;

    .line 549
    new-instance v2, Lcom/android/server/usb/UsbDirectMidiDevice$3;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "UsbDirectMidiDevice output write thread "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v8}, Lcom/android/server/usb/UsbDirectMidiDevice$3;-><init>(Lcom/android/server/usb/UsbDirectMidiDevice;Ljava/lang/String;ILcom/android/internal/midi/MidiEventMultiScheduler;Landroid/hardware/usb/UsbEndpoint;Landroid/hardware/usb/UsbDeviceConnection;)V

    .line 659
    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 660
    iget-object v4, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mThreads:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/2addr v0, v5

    add-int/lit8 v9, v9, 0x1

    goto :goto_a

    :cond_b
    add-int/lit8 p0, p0, 0x1

    goto :goto_9

    :cond_c
    const/4 p0, 0x1

    .line 665
    iput-boolean p0, v3, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsOpen:Z

    return p0
.end method

.method public final register(Landroid/content/Context;)Z
    .locals 10

    .line 670
    iput-object p1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mContext:Landroid/content/Context;

    .line 671
    const-class v0, Landroid/media/midi/MidiManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/media/midi/MidiManager;

    const/4 p1, 0x0

    if-nez v0, :cond_0

    .line 673
    const-string p0, "UsbDirectMidiDevice"

    const-string v0, "No MidiManager in UsbDirectMidiDevice.register()"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1

    .line 677
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v1, :cond_1

    .line 678
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDirectMidiDevice;->calculateDefaultMidiProtocol()I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    .line 680
    iput v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    .line 683
    :goto_0
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 684
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getManufacturerName()Ljava/lang/String;

    move-result-object v1

    .line 685
    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v2}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    move-result-object v2

    .line 686
    iget-object v3, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v3}, Landroid/hardware/usb/UsbDevice;->getVersion()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_5

    .line 688
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_4

    .line 690
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_1

    .line 693
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    :goto_1
    move-object v4, v1

    goto :goto_3

    :cond_5
    :goto_2
    move-object v4, v2

    .line 695
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "#"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUniqueUsbDeviceIdentifier:Ljava/lang/String;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 696
    iget-boolean v6, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mIsUniversalMidiDevice:Z

    if-eqz v6, :cond_6

    .line 697
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MIDI 2.0"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_4

    .line 699
    :cond_6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " MIDI 1.0"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 701
    :goto_4
    iput-object v4, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mName:Ljava/lang/String;

    .line 702
    const-string/jumbo v6, "name"

    invoke-virtual {v5, v6, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v4, "manufacturer"

    invoke-virtual {v5, v4, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string/jumbo v1, "product"

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string/jumbo v1, "version"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    .line 707
    invoke-virtual {v1}, Landroid/hardware/usb/UsbDevice;->getSerialNumber()Ljava/lang/String;

    move-result-object v1

    .line 706
    const-string/jumbo v2, "serial_number"

    invoke-virtual {v5, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    const-string/jumbo v1, "usb_device"

    iget-object v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mUsbDevice:Landroid/hardware/usb/UsbDevice;

    invoke-virtual {v5, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const/4 v9, 0x1

    .line 710
    iput-boolean v9, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServerAvailable:Z

    .line 711
    iget-object v1, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mMidiInputPortReceivers:[Lcom/android/server/usb/UsbDirectMidiDevice$InputReceiverProxy;

    iget v2, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mNumInputs:I

    iget v7, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mDefaultMidiProtocol:I

    iget-object v8, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mCallback:Landroid/media/midi/MidiDeviceServer$Callback;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x1

    invoke-virtual/range {v0 .. v8}, Landroid/media/midi/MidiManager;->createDeviceServer([Landroid/media/midi/MidiReceiver;I[Ljava/lang/String;[Ljava/lang/String;Landroid/os/Bundle;IILandroid/media/midi/MidiDeviceServer$Callback;)Landroid/media/midi/MidiDeviceServer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mServer:Landroid/media/midi/MidiDeviceServer;

    if-nez v0, :cond_7

    return p1

    :cond_7
    return v9
.end method

.method public final swapEndiannessPerWord([BI)[B
    .locals 5

    and-int/lit8 p0, p2, 0x3

    if-eqz p0, :cond_0

    .line 788
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "size not multiple of 4: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UsbDirectMidiDevice"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sub-int p0, p2, p0

    .line 790
    new-array p0, p0, [B

    const/4 v0, 0x0

    :goto_0
    add-int/lit8 v1, v0, 0x3

    if-ge v1, p2, :cond_1

    .line 792
    aget-byte v2, p1, v1

    aput-byte v2, p0, v0

    add-int/lit8 v2, v0, 0x1

    add-int/lit8 v3, v0, 0x2

    .line 793
    aget-byte v4, p1, v3

    aput-byte v4, p0, v2

    .line 794
    aget-byte v2, p1, v2

    aput-byte v2, p0, v3

    .line 795
    aget-byte v2, p1, v0

    aput-byte v2, p0, v1

    add-int/lit8 v0, v0, 0x4

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public final updateUsbInterface(Landroid/hardware/usb/UsbInterface;Landroid/hardware/usb/UsbDeviceConnection;)Z
    .locals 4

    const/4 v0, 0x0

    .line 813
    const-string v1, "UsbDirectMidiDevice"

    if-nez p1, :cond_0

    .line 814
    const-string p0, "Usb Interface is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    if-nez p2, :cond_1

    .line 818
    const-string p0, "UsbDeviceConnection is null"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v2, 0x1

    .line 821
    invoke-virtual {p2, p1, v2}, Landroid/hardware/usb/UsbDeviceConnection;->claimInterface(Landroid/hardware/usb/UsbInterface;Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 822
    const-string p0, "Can\'t claim interface"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 825
    :cond_2
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDirectMidiDevice;->mShouldCallSetInterface:Z

    if-eqz p0, :cond_3

    .line 826
    invoke-virtual {p2, p1}, Landroid/hardware/usb/UsbDeviceConnection;->setInterface(Landroid/hardware/usb/UsbInterface;)Z

    move-result p0

    if-nez p0, :cond_4

    .line 827
    const-string p0, "Can\'t set interface"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 830
    :cond_3
    const-string/jumbo p0, "no alternate interface"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return v2
.end method
