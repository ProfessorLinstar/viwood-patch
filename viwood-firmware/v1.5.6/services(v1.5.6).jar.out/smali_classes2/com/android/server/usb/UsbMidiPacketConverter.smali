.class public Lcom/android/server/usb/UsbMidiPacketConverter;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# static fields
.field public static final CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

.field public static final PAYLOAD_SIZE:[I


# instance fields
.field public mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

.field public mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

.field public mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetCODE_INDEX_NUMBER_FROM_SYSTEM_TYPE()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetPAYLOAD_SIZE()[I
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x10

    .line 32
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/usb/UsbMidiPacketConverter;->PAYLOAD_SIZE:[I

    .line 53
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/usb/UsbMidiPacketConverter;->CODE_INDEX_NUMBER_FROM_SYSTEM_TYPE:[I

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        0x2
        0x3
        0x3
        0x1
        0x2
        0x3
        0x3
        0x3
        0x3
        0x3
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        0x2
        0x3
        0x2
        -0x1
        -0x1
        0x5
        -0x1
        0x5
        -0x1
        0x5
        0x5
        0x5
        -0x1
        0x5
        0x5
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    return-void
.end method


# virtual methods
.method public createDecoders(I)V
    .locals 1

    .line 139
    new-instance v0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-direct {v0, p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;I)V

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    return-void
.end method

.method public createEncoders(I)V
    .locals 3

    .line 95
    new-array v0, p1, [Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 97
    iget-object v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    new-instance v2, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    invoke-direct {v2, p0, v0}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;-><init>(Lcom/android/server/usb/UsbMidiPacketConverter;I)V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public decodeMidiPackets([BI)V
    .locals 0

    .line 151
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->decode([BI)V

    return-void
.end method

.method public encodeMidiPackets([BII)V
    .locals 3

    .line 112
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    array-length v0, v0

    const/4 v1, 0x0

    if-lt p3, v0, :cond_0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encoderId "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " invalid"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "UsbMidiPacketConverter"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move p3, v1

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiEncoders:[Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;

    aget-object p3, v0, p3

    invoke-virtual {p3, p1, p2}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->encode([BI)[B

    move-result-object p1

    .line 117
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    array-length p2, p1

    invoke-virtual {p0, p1, v1, p2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    return-void
.end method

.method public pullDecodedMidiPackets(I)[B
    .locals 0

    .line 161
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mUsbMidiDecoder:Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiDecoder;->pullBytes(I)[B

    move-result-object p0

    return-object p0
.end method

.method public pullEncodedMidiPackets()[B
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 127
    iget-object p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter;->mEncoderOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-object v0
.end method
