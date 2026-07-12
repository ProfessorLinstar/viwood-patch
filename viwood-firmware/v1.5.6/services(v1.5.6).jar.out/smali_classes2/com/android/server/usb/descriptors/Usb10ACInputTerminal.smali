.class public final Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;
.super Lcom/android/server/usb/descriptors/UsbACTerminal;
.source "Usb10ACInputTerminal.java"

# interfaces
.implements Lcom/android/server/usb/descriptors/UsbAudioChannelCluster;


# instance fields
.field public mChannelConfig:I

.field public mChannelNames:B

.field public mNrChannels:B

.field public mTerminal:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACTerminal;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getChannelConfig()I
    .locals 0

    .line 46
    iget p0, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mChannelConfig:I

    return p0
.end method

.method public getChannelCount()B
    .locals 0

    .line 41
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mNrChannels:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 60
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 62
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mNrChannels:B

    .line 63
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mChannelConfig:I

    .line 64
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mChannelNames:B

    .line 65
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->mTerminal:B

    .line 67
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 72
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 74
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->getChannelCount()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Chans. Config: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACInputTerminal;->getChannelConfig()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 75
    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
