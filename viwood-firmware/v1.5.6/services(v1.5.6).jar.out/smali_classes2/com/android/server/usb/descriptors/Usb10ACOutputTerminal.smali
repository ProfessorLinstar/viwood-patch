.class public final Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;
.super Lcom/android/server/usb/descriptors/UsbACTerminal;
.source "Usb10ACOutputTerminal.java"


# instance fields
.field public mSourceID:B

.field public mTerminal:B


# direct methods
.method public constructor <init>(IBBI)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACTerminal;-><init>(IBBI)V

    return-void
.end method


# virtual methods
.method public getSourceID()B
    .locals 0

    .line 36
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->mSourceID:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->mSourceID:B

    .line 48
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    iput-byte p1, p0, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->mTerminal:B

    .line 49
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACTerminal;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 56
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 57
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Source ID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/Usb10ACOutputTerminal;->getSourceID()B

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
