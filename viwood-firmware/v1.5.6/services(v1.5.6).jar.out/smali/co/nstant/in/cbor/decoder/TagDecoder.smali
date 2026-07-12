.class public Lco/nstant/in/cbor/decoder/TagDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "TagDecoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/Tag;
    .locals 1

    .line 17
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLength(I)J

    move-result-wide p0

    invoke-direct {v0, p0, p1}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    return-object v0
.end method
