.class public abstract Lcom/android/server/usb/descriptors/UsbVCInterface;
.super Lcom/android/server/usb/descriptors/UsbDescriptor;
.source "UsbVCInterface.java"


# instance fields
.field public final mSubtype:B


# direct methods
.method public constructor <init>(IBB)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/server/usb/descriptors/UsbDescriptor;-><init>(IB)V

    .line 42
    iput-byte p3, p0, Lcom/android/server/usb/descriptors/UsbVCInterface;->mSubtype:B

    return-void
.end method

.method public static allocDescriptor(Lcom/android/server/usb/descriptors/UsbDescriptorParser;Lcom/android/server/usb/descriptors/ByteStream;IB)Lcom/android/server/usb/descriptors/UsbDescriptor;
    .locals 2

    .line 50
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->getByte()B

    move-result v0

    .line 51
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->getCurInterface()Lcom/android/server/usb/descriptors/UsbInterfaceDescriptor;

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 107
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Unknown Video Class Interface subtype: 0x"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 107
    const-string p1, "UsbVCInterface"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 98
    :pswitch_0
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCProcessingUnit;-><init>(IBB)V

    return-object p0

    .line 92
    :pswitch_1
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCSelectorUnit;-><init>(IBB)V

    return-object p0

    .line 86
    :pswitch_2
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCOutputTerminal;-><init>(IBB)V

    return-object p0

    .line 80
    :pswitch_3
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;

    invoke-direct {p0, p2, p3, v0}, Lcom/android/server/usb/descriptors/UsbVCInputTerminal;-><init>(IBB)V

    return-object p0

    .line 68
    :pswitch_4
    invoke-virtual {p1}, Lcom/android/server/usb/descriptors/ByteStream;->unpackUsbShort()I

    move-result p1

    .line 69
    invoke-virtual {p0, p1}, Lcom/android/server/usb/descriptors/UsbDescriptorParser;->setVCInterfaceSpec(I)V

    .line 73
    new-instance p0, Lcom/android/server/usb/descriptors/UsbVCHeader;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/android/server/usb/descriptors/UsbVCHeader;-><init>(IBBI)V

    return-object p0

    :pswitch_5
    return-object v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
