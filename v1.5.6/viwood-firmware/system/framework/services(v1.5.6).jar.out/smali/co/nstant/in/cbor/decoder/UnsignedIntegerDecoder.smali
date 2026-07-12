.class public Lco/nstant/in/cbor/decoder/UnsignedIntegerDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "UnsignedIntegerDecoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/UnsignedInteger;
    .locals 1

    .line 17
    new-instance v0, Lco/nstant/in/cbor/model/UnsignedInteger;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->getLengthAsBigInteger(I)Ljava/math/BigInteger;

    move-result-object p0

    invoke-direct {v0, p0}, Lco/nstant/in/cbor/model/UnsignedInteger;-><init>(Ljava/math/BigInteger;)V

    return-object v0
.end method
