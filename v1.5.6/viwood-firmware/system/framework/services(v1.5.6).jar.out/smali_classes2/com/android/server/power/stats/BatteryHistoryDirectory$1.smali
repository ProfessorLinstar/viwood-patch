.class public Lcom/android/server/power/stats/BatteryHistoryDirectory$1;
.super Ljava/lang/Object;
.source "BatteryHistoryDirectory.java"

# interfaces
.implements Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compress(Ljava/io/OutputStream;[B)V
    .locals 1

    .line 97
    new-instance p0, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;

    invoke-direct {p0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;-><init>()V

    const/4 v0, 0x1

    .line 98
    invoke-virtual {p0, v0}, Lorg/apache/commons/compress/compressors/gzip/GzipParameters;->setCompressionLevel(I)V

    .line 99
    new-instance v0, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;

    invoke-direct {v0, p1, p0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;-><init>(Ljava/io/OutputStream;Lorg/apache/commons/compress/compressors/gzip/GzipParameters;)V

    .line 100
    invoke-virtual {v0, p2}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->write([B)V

    .line 101
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->finish()V

    .line 102
    invoke-virtual {v0}, Lorg/apache/commons/compress/compressors/gzip/GzipCompressorOutputStream;->flush()V

    return-void
.end method

.method public uncompress([BLjava/io/InputStream;)V
    .locals 1

    .line 107
    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, p2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {p0, p1, v0}, Lcom/android/server/power/stats/BatteryHistoryDirectory$Compressor;->readFully([BLjava/io/InputStream;)V

    return-void
.end method
