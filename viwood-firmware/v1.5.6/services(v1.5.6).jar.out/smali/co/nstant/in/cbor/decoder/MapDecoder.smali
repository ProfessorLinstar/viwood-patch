.class public Lco/nstant/in/cbor/decoder/MapDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "MapDecoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/Map;
    .locals 4

    .line 19
    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 21
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/MapDecoder;->decodeInfinitiveLength()Lco/nstant/in/cbor/model/Map;

    move-result-object p0

    return-object p0

    .line 23
    :cond_0
    invoke-virtual {p0, v0, v1}, Lco/nstant/in/cbor/decoder/MapDecoder;->decodeFixedLength(J)Lco/nstant/in/cbor/model/Map;

    move-result-object p0

    return-object p0
.end method

.method public final decodeFixedLength(J)Lco/nstant/in/cbor/model/Map;
    .locals 6

    .line 50
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    long-to-int v1, p1

    invoke-direct {v0, v1}, Lco/nstant/in/cbor/model/Map;-><init>(I)V

    const-wide/16 v1, 0x0

    :goto_0
    cmp-long v3, v1, p1

    if-gez v3, :cond_3

    .line 52
    iget-object v3, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    .line 53
    iget-object v4, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v4}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    .line 57
    iget-object v5, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v5}, Lco/nstant/in/cbor/CborDecoder;->isRejectDuplicateKeys()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v5

    if-nez v5, :cond_0

    goto :goto_1

    .line 58
    :cond_0
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Duplicate key found in map"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 60
    :cond_1
    :goto_1
    invoke-virtual {v0, v3, v4}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    goto :goto_0

    .line 55
    :cond_2
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string p1, "Unexpected end of stream"

    invoke-direct {p0, p1}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    return-object v0
.end method

.method public final decodeInfinitiveLength()Lco/nstant/in/cbor/model/Map;
    .locals 4

    .line 28
    new-instance v0, Lco/nstant/in/cbor/model/Map;

    invoke-direct {v0}, Lco/nstant/in/cbor/model/Map;-><init>()V

    const/4 v1, 0x1

    .line 29
    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Map;->setChunked(Z)Lco/nstant/in/cbor/model/ChunkableDataItem;

    .line 30
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->isAutoDecodeInfinitiveMaps()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 32
    :goto_0
    iget-object v1, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v1}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v1

    .line 33
    sget-object v2, Lco/nstant/in/cbor/model/Special;->BREAK:Lco/nstant/in/cbor/model/Special;

    invoke-virtual {v2, v1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_2

    .line 36
    :cond_0
    iget-object v2, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v2}, Lco/nstant/in/cbor/CborDecoder;->decodeNext()Lco/nstant/in/cbor/model/DataItem;

    move-result-object v2

    if-eqz v1, :cond_3

    if-eqz v2, :cond_3

    .line 40
    iget-object v3, p0, Lco/nstant/in/cbor/decoder/AbstractDecoder;->decoder:Lco/nstant/in/cbor/CborDecoder;

    invoke-virtual {v3}, Lco/nstant/in/cbor/CborDecoder;->isRejectDuplicateKeys()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v1}, Lco/nstant/in/cbor/model/Map;->get(Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/DataItem;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 41
    :cond_1
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string v0, "Duplicate key found in map"

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 43
    :cond_2
    :goto_1
    invoke-virtual {v0, v1, v2}, Lco/nstant/in/cbor/model/Map;->put(Lco/nstant/in/cbor/model/DataItem;Lco/nstant/in/cbor/model/DataItem;)Lco/nstant/in/cbor/model/Map;

    goto :goto_0

    .line 38
    :cond_3
    new-instance p0, Lco/nstant/in/cbor/CborException;

    const-string v0, "Unexpected end of stream"

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/CborException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    return-object v0
.end method
