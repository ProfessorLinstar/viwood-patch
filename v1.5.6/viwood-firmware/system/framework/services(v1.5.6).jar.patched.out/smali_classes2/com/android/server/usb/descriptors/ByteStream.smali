.class public final Lcom/android/server/usb/descriptors/ByteStream;
.super Ljava/lang/Object;
.source "ByteStream.java"


# instance fields
.field public final mBytes:[B

.field public mIndex:I

.field public mReadCount:I


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    .line 65
    iput-object p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    return-void

    .line 63
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method


# virtual methods
.method public advance(I)V
    .locals 6

    if-ltz p1, :cond_1

    .line 189
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    int-to-long v1, v0

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 190
    iget-object v3, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v4, v3

    int-to-long v4, v4

    cmp-long v1, v1, v4

    if-gtz v1, :cond_0

    .line 191
    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/2addr v0, p1

    .line 192
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    .line 195
    :cond_0
    array-length p1, v3

    iput p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 196
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 186
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public available()I
    .locals 1

    .line 224
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    array-length v0, v0

    iget p0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    sub-int/2addr v0, p0

    return v0
.end method

.method public getByte()B
    .locals 3

    .line 102
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 103
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 104
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte p0, v0, v1

    return p0

    .line 106
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public getReadCount()I
    .locals 0

    .line 79
    iget p0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return p0
.end method

.method public getUnsignedByte()I
    .locals 3

    .line 116
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    if-lez v0, :cond_0

    .line 117
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    .line 118
    iget-object v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mBytes:[B

    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    aget-byte p0, v0, v1

    and-int/lit16 p0, p0, 0xff

    return p0

    .line 120
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public resetReadCount()V
    .locals 1

    const/4 v0, 0x0

    .line 72
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    return-void
.end method

.method public reverse(I)V
    .locals 2

    if-ltz p1, :cond_1

    .line 211
    iget v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    if-lt v0, p1, :cond_0

    .line 212
    iget v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v1, p1

    iput v1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mReadCount:I

    sub-int/2addr v0, p1

    .line 213
    iput v0, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 215
    iput p1, p0, Lcom/android/server/usb/descriptors/ByteStream;->mIndex:I

    .line 216
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0

    .line 209
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public unpackUsbInt()I
    .locals 3

    .line 167
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_0

    .line 168
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 169
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 170
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v2

    .line 171
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result p0

    shl-int/lit8 p0, p0, 0x18

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr p0, v2

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 174
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public unpackUsbShort()I
    .locals 2

    .line 133
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result p0

    shl-int/lit8 p0, p0, 0x8

    or-int/2addr p0, v0

    return p0

    .line 138
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method

.method public unpackUsbTriple()I
    .locals 2

    .line 151
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->available()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    .line 152
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v0

    .line 153
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result v1

    .line 154
    invoke-virtual {p0}, Lcom/android/server/usb/descriptors/ByteStream;->getUnsignedByte()I

    move-result p0

    shl-int/lit8 p0, p0, 0x10

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr p0, v1

    or-int/2addr p0, v0

    return p0

    .line 157
    :cond_0
    new-instance p0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p0
.end method
