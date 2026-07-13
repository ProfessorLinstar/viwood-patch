.class public Lcom/android/internal/util/jobs/FastPrintWriter;
.super Ljava/io/PrintWriter;
.source "FastPrintWriter.java"


# instance fields
.field private final mAutoFlush:Z

.field private final mBufferLen:I

.field private final mBytes:Ljava/nio/ByteBuffer;

.field private mCharset:Ljava/nio/charset/CharsetEncoder;

.field private mIoError:Z

.field private final mOutputStream:Ljava/io/OutputStream;

.field private mPos:I

.field private final mPrinter:Landroid/util/Printer;

.field private final mSeparator:Ljava/lang/String;

.field private final mText:[C

.field private final mWriter:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Landroid/util/Printer;)V
    .locals 1

    const/16 v0, 0x200

    .line 218
    invoke-direct {p0, p1, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Landroid/util/Printer;I)V

    return-void
.end method

.method public constructor <init>(Landroid/util/Printer;I)V
    .locals 3

    .line 235
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 239
    iput p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 240
    new-array p2, p2, [C

    iput-object p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 241
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 242
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 243
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 244
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 245
    iput-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 246
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 247
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 237
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "pr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 84
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Z)V
    .locals 1

    const/16 v0, 0x2000

    .line 102
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/OutputStream;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;ZI)V
    .locals 2

    .line 123
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 127
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 128
    new-array v0, p3, [C

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 129
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 130
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 131
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 132
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 133
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 134
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 135
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 125
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "out is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public constructor <init>(Ljava/io/Writer;)V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x2000

    .line 153
    invoke-direct {p0, p1, v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Z)V
    .locals 1

    const/16 v0, 0x2000

    .line 171
    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/util/jobs/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;ZI)V
    .locals 2

    .line 192
    new-instance v0, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/util/jobs/FastPrintWriter$DummyWriter;-><init>(Lcom/android/internal/util/jobs/FastPrintWriter-IA;)V

    invoke-direct {p0, v0, p2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;Z)V

    if-eqz p1, :cond_0

    .line 196
    iput p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    .line 197
    new-array p3, p3, [C

    iput-object p3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    .line 198
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    .line 199
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    .line 200
    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    .line 201
    iput-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    .line 202
    iput-boolean p2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    .line 203
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 204
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->initDefaultEncoder()V

    return-void

    .line 194
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string/jumbo p1, "wr is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private appendLocked(C)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 302
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    add-int/lit8 v1, v1, -0x1

    if-lt v0, v1, :cond_0

    .line 303
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 304
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 306
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    aput-char p1, v1, v0

    add-int/lit8 v0, v0, 0x1

    .line 307
    iput v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked(Ljava/lang/String;II)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 311
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 316
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 321
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 323
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 324
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_3
    add-int v0, p2, p3

    .line 326
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {p1, p2, v0, v2, v1}, Ljava/lang/String;->getChars(II[CI)V

    add-int/2addr v1, p3

    .line 327
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private appendLocked([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 331
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBufferLen:I

    if-le p3, v0, :cond_2

    add-int/2addr p3, p2

    :goto_0
    if-ge p2, p3, :cond_1

    add-int v1, p2, v0

    if-ge v1, p3, :cond_0

    move v2, v0

    goto :goto_1

    :cond_0
    sub-int v2, p3, p2

    .line 336
    :goto_1
    invoke-direct {p0, p1, p2, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V

    move p2, v1

    goto :goto_0

    :cond_1
    return-void

    .line 341
    :cond_2
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    add-int v2, v1, p3

    if-le v2, v0, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 344
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    .line 346
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v1, p3

    .line 347
    iput v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    return-void
.end method

.method private flushBytesLocked()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 351
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 354
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 355
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/OutputStream;->write([BII)V

    .line 356
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_0
    return-void
.end method

.method private flushLocked()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lez v0, :cond_8

    .line 364
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 365
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-static {v1, v3, v0}, Ljava/nio/CharBuffer;->wrap([CII)Ljava/nio/CharBuffer;

    move-result-object v0

    .line 366
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    .line 367
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v4, :cond_1

    .line 368
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isError()Z

    move-result v4

    if-nez v4, :cond_0

    .line 370
    invoke-virtual {v1}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 371
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 372
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mBytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0, v4, v2}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v1

    goto :goto_0

    .line 369
    :cond_0
    new-instance p0, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 377
    :cond_1
    iget-boolean v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v0, :cond_7

    .line 378
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushBytesLocked()V

    .line 379
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    goto :goto_3

    .line 381
    :cond_2
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_3

    .line 382
    iget-boolean v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v2, :cond_7

    .line 383
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    invoke-virtual {v1, v2, v3, v0}, Ljava/io/Writer;->write([CII)V

    .line 384
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    goto :goto_3

    .line 388
    :cond_3
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 389
    iget v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-ge v0, v1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    move v1, v3

    :goto_2
    if-ge v1, v0, :cond_5

    .line 390
    iget-object v4, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    iget v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    sub-int/2addr v5, v2

    sub-int/2addr v5, v1

    aget-char v4, v4, v5

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    .line 391
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v2

    sub-int/2addr v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v4, v5, :cond_5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 394
    :cond_5
    iget v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    if-lt v1, v0, :cond_6

    .line 395
    iget-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    const-string v1, ""

    invoke-interface {v0, v1}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 397
    :cond_6
    iget-object v2, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPrinter:Landroid/util/Printer;

    new-instance v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mText:[C

    sub-int/2addr v0, v1

    invoke-direct {v4, v5, v3, v0}, Ljava/lang/String;-><init>([CII)V

    invoke-interface {v2, v4}, Landroid/util/Printer;->println(Ljava/lang/String;)V

    .line 400
    :cond_7
    :goto_3
    iput v3, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mPos:I

    :cond_8
    return-void
.end method

.method private final initDefaultEncoder()V
    .locals 2

    .line 295
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    .line 296
    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 297
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void
.end method

.method private final initEncoder(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 252
    :try_start_0
    invoke-static {p1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    sget-object p1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    invoke-virtual {v0, p1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    .line 257
    iget-object p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mCharset:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {p0, p1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    return-void

    .line 254
    :catch_0
    new-instance p0, Ljava/io/UnsupportedEncodingException;

    invoke-direct {p0, p1}, Ljava/io/UnsupportedEncodingException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;
    .locals 0

    if-nez p1, :cond_0

    .line 699
    const-string/jumbo p1, "null"

    .line 701
    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 702
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3, p2}, Lcom/android/internal/util/jobs/FastPrintWriter;->write(Ljava/lang/String;II)V

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/PrintWriter;

    move-result-object p0

    return-object p0
.end method

.method public checkError()Z
    .locals 1

    .line 269
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flush()V

    .line 270
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 271
    :try_start_0
    iget-boolean p0, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 272
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public clearError()V
    .locals 2

    .line 280
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 281
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 282
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public close()V
    .locals 4

    .line 430
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 432
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 433
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 434
    invoke-virtual {v1}, Ljava/io/OutputStream;->close()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    .line 435
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 436
    invoke-virtual {v1}, Ljava/io/Writer;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 439
    :goto_0
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 442
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public flush()V
    .locals 4

    .line 411
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 413
    :try_start_0
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V

    .line 414
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    if-nez v1, :cond_1

    .line 415
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mOutputStream:Ljava/io/OutputStream;

    if-eqz v1, :cond_0

    .line 416
    invoke-virtual {v1}, Ljava/io/OutputStream;->flush()V

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_0

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mWriter:Ljava/io/Writer;

    if-eqz v1, :cond_1

    .line 418
    invoke-virtual {v1}, Ljava/io/Writer;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 422
    :goto_0
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 425
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public print(C)V
    .locals 3

    .line 473
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 475
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 477
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 480
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public print(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 512
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 514
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->print(I)V

    return-void
.end method

.method public print(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 521
    const-string p1, "0"

    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 523
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    return-void
.end method

.method public print(Ljava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    .line 496
    const-string/jumbo p1, "null"

    .line 498
    :cond_0
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 500
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 502
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 503
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 505
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public print([C)V
    .locals 3

    .line 454
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 456
    :try_start_0
    array-length v1, p1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 458
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 461
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public println()V
    .locals 4

    .line 531
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 533
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mSeparator:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p0, v1, v3, v2}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V

    .line 534
    iget-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mAutoFlush:Z

    if-eqz v1, :cond_0

    .line 535
    invoke-direct {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->flushLocked()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 538
    :try_start_1
    const-string v2, "FastPrintWriter"

    const-string v3, "Write failure"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 541
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public println(C)V
    .locals 0

    .line 576
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print(C)V

    .line 577
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public println(I)V
    .locals 0

    if-nez p1, :cond_0

    .line 547
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 549
    :cond_0
    invoke-super {p0, p1}, Ljava/io/PrintWriter;->println(I)V

    return-void
.end method

.method public println(J)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 556
    const-string p1, "0"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    .line 558
    :cond_0
    invoke-super {p0, p1, p2}, Ljava/io/PrintWriter;->println(J)V

    return-void
.end method

.method public println([C)V
    .locals 0

    .line 567
    invoke-virtual {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->print([C)V

    .line 568
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->println()V

    return-void
.end method

.method public setError()V
    .locals 2

    .line 289
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    .line 290
    :try_start_0
    iput-boolean v1, p0, Lcom/android/internal/util/jobs/FastPrintWriter;->mIoError:Z

    .line 291
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public write(I)V
    .locals 3

    .line 621
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    int-to-char p1, p1

    .line 623
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(C)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 625
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 628
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .line 639
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 641
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2, v1}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 643
    :try_start_1
    const-string v1, "FastPrintWriter"

    const-string v2, "Write failure"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 644
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 646
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .line 665
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 667
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 669
    :try_start_1
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 672
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public write([CII)V
    .locals 1

    .line 599
    iget-object v0, p0, Ljava/io/PrintWriter;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 601
    :try_start_0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/util/jobs/FastPrintWriter;->appendLocked([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 603
    :try_start_1
    const-string p2, "FastPrintWriter"

    const-string p3, "Write failure"

    invoke-static {p2, p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 604
    invoke-virtual {p0}, Lcom/android/internal/util/jobs/FastPrintWriter;->setError()V

    .line 606
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
