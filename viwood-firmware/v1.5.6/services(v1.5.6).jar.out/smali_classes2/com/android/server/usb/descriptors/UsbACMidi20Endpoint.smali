.class public final Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACMidi20Endpoint.java"


# instance fields
.field public mBlockIds:[B

.field public mNumGroupTerminals:B


# direct methods
.method public constructor <init>(IBIB)V
    .locals 0

    .line 32
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBIB)V

    const/4 p1, 0x0

    .line 29
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    return-void
.end method


# virtual methods
.method public getNumGroupTerminals()B
    .locals 0

    .line 36
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mNumGroupTerminals:B

    return p0
.end method

.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 3

    .line 45
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 47
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mNumGroupTerminals:B

    if-lez v0, :cond_0

    .line 49
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    const/4 v0, 0x0

    .line 50
    :goto_0
    iget-byte v1, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mNumGroupTerminals:B

    if-ge v0, v1, :cond_0

    .line 51
    iget-object v1, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 54
    :cond_0
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 3

    .line 59
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptor;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AC Midi20 Endpoint: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getType()B

    move-result v1

    invoke-static {v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->getHexString(B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptor;->getLength()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    .line 61
    invoke-virtual {p1, v1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeHeader(ILjava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->openList()V

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->getNumGroupTerminals()B

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Group Terminals."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->getNumGroupTerminals()B

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Group Terminal "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/descriptors/UsbACMidi20Endpoint;->mBlockIds:[B

    aget-byte v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeListItem(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->closeList()V

    return-void
.end method
