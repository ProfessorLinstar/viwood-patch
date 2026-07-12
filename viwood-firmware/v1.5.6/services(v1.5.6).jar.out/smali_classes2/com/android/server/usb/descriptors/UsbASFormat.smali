.class public Lcom/android/server/usb/descriptors/UsbASFormat;
.super Lcom/android/server/usb/descriptors/UsbACInterface;
.source "UsbASFormat.java"


# instance fields
.field public final mFormatType:B


# direct methods
.method public constructor <init>(IBBBI)V
    .locals 0

    .line 44
    invoke-direct {p0, p1, p2, p3, p5}, Lcom/android/server/usb/descriptors/UsbACInterface;-><init>(IBBI)V

    .line 45
    iput-byte p4, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IBBI)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 3

    .line 72
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result p1

    .line 73
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getACInterfaceSpec()I

    move-result p0

    const/4 v0, 0x1

    const/16 v1, 0x200

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    .line 97
    new-instance p0, Lcom/android/server/usb/descriptors/UsbASFormat;

    move v2, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v2

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/UsbASFormat;-><init>(IBBBI)V

    return-object p0

    :cond_0
    move v2, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v2

    .line 92
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/Usb20ASFormatIII;-><init>(IBBBI)V

    return-object p0

    :cond_1
    move v2, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v2

    if-ne p0, v1, :cond_2

    .line 85
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatII;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/Usb20ASFormatII;-><init>(IBBBI)V

    return-object p0

    .line 87
    :cond_2
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ASFormatII;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/Usb10ASFormatII;-><init>(IBBBI)V

    return-object p0

    :cond_3
    move v2, p4

    move p4, p1

    move p1, p2

    move p2, p3

    move p3, v2

    if-ne p0, v1, :cond_4

    .line 78
    new-instance p0, Lcom/android/server/usb/descriptors/Usb20ASFormatI;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/Usb20ASFormatI;-><init>(IBBBI)V

    return-object p0

    .line 80
    :cond_4
    new-instance p0, Lcom/android/server/usb/descriptors/Usb10ASFormatI;

    invoke-direct/range {p0 .. p5}, Lcom/android/server/usb/descriptors/Usb10ASFormatI;-><init>(IBBBI)V

    return-object p0
.end method


# virtual methods
.method public getFormatType()B
    .locals 0

    .line 49
    iget-byte p0, p0, Lcom/android/server/usb/descriptors/UsbASFormat;->mFormatType:B

    return p0
.end method

.method public report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACInterface;->report(Lcom/android/server/usb/descriptors/report/ReportCanvas;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbASFormat;->getFormatType()B

    move-result p0

    invoke-static {p0}, Lcom/android/server/usb/descriptors/report/UsbStrings;->getFormatName(I)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/server/usb/descriptors/report/ReportCanvas;->writeParagraph(Ljava/lang/String;Z)V

    return-void
.end method
