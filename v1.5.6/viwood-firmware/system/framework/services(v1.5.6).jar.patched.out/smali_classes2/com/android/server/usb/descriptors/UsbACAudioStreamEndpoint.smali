.class public Lcom/android/server/usb/descriptors/UsbACAudioStreamEndpoint;
.super Lcom/android/server/usb/descriptors/UsbACEndpoint;
.source "UsbACAudioStreamEndpoint.java"


# direct methods
.method public constructor <init>(IBIB)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/usb/descriptors/UsbACEndpoint;-><init>(IBIB)V

    return-void
.end method


# virtual methods
.method public parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I
    .locals 2

    .line 33
    invoke-super {p0, p1}, Lcom/android/server/usb/descriptors/UsbACEndpoint;->parseRawDescriptors(Lcom/android/server/usb/descriptors/ByteStream;)I

    .line 36
    iget v0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getReadCount()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Lcom/android/server/usb/descriptors/ByteStream;->advance(I)V

    .line 37
    iget p0, p0, Lcom/android/server/usb/descriptors/UsbDescriptor;->mLength:I

    return p0
.end method
