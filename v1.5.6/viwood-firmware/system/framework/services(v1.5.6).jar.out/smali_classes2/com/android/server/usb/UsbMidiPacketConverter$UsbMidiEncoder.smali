.class public Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;
.super Ljava/lang/Object;
.source "UsbMidiPacketConverter.java"


# instance fields
.field public mEmptyBytes:[B

.field public mHasSystemExclusiveStarted:Z

.field public mNumStoredSystemExclusiveBytes:I

.field public mShiftedCableNumber:B

.field public mStoredSystemExclusiveBytes:[B


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbMidiPacketConverter;I)V
    .locals 1

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x3

    .line 216
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    const/4 v0, 0x0

    .line 217
    iput v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 218
    iput-boolean v0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 220
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    shl-int/lit8 p1, p2, 0x4

    int-to-byte p1, p1

    .line 226
    iput-byte p1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    return-void
.end method


# virtual methods
.method public encode([BI)[B
    .locals 8

    .line 238
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :cond_0
    :goto_0
    if-ge v2, p2, :cond_c

    .line 241
    aget-byte v3, p1, v2

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ltz v3, :cond_3

    .line 242
    iget-boolean v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v6, :cond_1

    .line 243
    iget-object v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aput-byte v3, v6, v7

    add-int/2addr v7, v5

    .line 245
    iput v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ne v7, v4, :cond_2

    .line 247
    iget-byte v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/lit8 v3, v3, 0x4

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 249
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 250
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_1

    .line 253
    :cond_1
    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const/16 v6, -0x9

    if-eq v3, v6, :cond_5

    .line 259
    iget-boolean v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    if-eqz v3, :cond_5

    move v3, v1

    .line 261
    :goto_2
    iget v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    if-ge v3, v7, :cond_4

    .line 262
    iget-object v7, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aget-byte v7, v7, v3

    invoke-virtual {p0, v0, v7}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 265
    :cond_4
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 266
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 270
    :cond_5
    aget-byte v3, p1, v2

    const/16 v7, -0x10

    if-ge v3, v7, :cond_7

    shr-int/lit8 v3, v3, 0x4

    and-int/lit8 v3, v3, 0xf

    int-to-byte v3, v3

    .line 272
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v4

    aget v4, v4, v3

    add-int v5, v2, v4

    if-gt v5, p2, :cond_6

    .line 274
    iget-byte v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 275
    invoke-virtual {v0, p1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 277
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v3, v4, 0x3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :goto_3
    move v2, v5

    goto :goto_0

    :cond_6
    :goto_4
    if-ge v2, p2, :cond_0

    .line 281
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_7
    if-ne v3, v7, :cond_8

    .line 286
    iput-boolean v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 287
    iget-object v4, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    aput-byte v3, v4, v1

    .line 288
    iput v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto :goto_1

    :cond_8
    if-ne v3, v6, :cond_9

    .line 292
    iget v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    add-int/lit8 v3, v3, 0x5

    iget-byte v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 294
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mStoredSystemExclusiveBytes:[B

    iget v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    aget-byte v7, p1, v2

    aput-byte v7, v3, v6

    add-int/2addr v6, v5

    .line 296
    iput v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    .line 297
    invoke-virtual {v0, v3, v1, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 300
    iget-object v3, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    iget v5, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    sub-int/2addr v4, v5

    invoke-virtual {v0, v3, v1, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 301
    iput-boolean v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mHasSystemExclusiveStarted:Z

    .line 302
    iput v1, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mNumStoredSystemExclusiveBytes:I

    goto/16 :goto_1

    :cond_9
    and-int/lit8 v3, v3, 0xf

    .line 306
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetCODE_INDEX_NUMBER_FROM_SYSTEM_TYPE()[I

    move-result-object v4

    aget v3, v4, v3

    if-gez v3, :cond_a

    .line 308
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    goto/16 :goto_1

    .line 311
    :cond_a
    invoke-static {}, Lcom/android/server/usb/UsbMidiPacketConverter;->-$$Nest$sfgetPAYLOAD_SIZE()[I

    move-result-object v4

    aget v4, v4, v3

    add-int v5, v2, v4

    if-gt v5, p2, :cond_b

    .line 313
    iget-byte v6, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/2addr v3, v6

    invoke-virtual {v0, v3}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 314
    invoke-virtual {v0, p1, v2, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 316
    iget-object v2, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mEmptyBytes:[B

    rsub-int/lit8 v3, v4, 0x3

    invoke-virtual {v0, v2, v1, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_3

    :cond_b
    :goto_5
    if-ge v2, p2, :cond_0

    .line 320
    aget-byte v3, p1, v2

    invoke-virtual {p0, v0, v3}, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 327
    :cond_c
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    return-object p0
.end method

.method public final writeSingleByte(Ljava/io/ByteArrayOutputStream;B)V
    .locals 0

    .line 331
    iget-byte p0, p0, Lcom/android/server/usb/UsbMidiPacketConverter$UsbMidiEncoder;->mShiftedCableNumber:B

    or-int/lit8 p0, p0, 0xf

    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 332
    invoke-virtual {p1, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    const/4 p0, 0x0

    .line 333
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 334
    invoke-virtual {p1, p0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    return-void
.end method
