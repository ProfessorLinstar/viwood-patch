.class public Lco/nstant/in/cbor/decoder/SinglePrecisionFloatDecoder;
.super Lco/nstant/in/cbor/decoder/AbstractDecoder;
.source "SinglePrecisionFloatDecoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V
    .locals 0

    .line 12
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/decoder/AbstractDecoder;-><init>(Lco/nstant/in/cbor/CborDecoder;Ljava/io/InputStream;)V

    return-void
.end method


# virtual methods
.method public decode(I)Lco/nstant/in/cbor/model/SinglePrecisionFloat;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p1

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    .line 20
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x8

    .line 22
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    or-int/2addr p1, v0

    shl-int/lit8 p1, p1, 0x8

    .line 24
    invoke-virtual {p0}, Lco/nstant/in/cbor/decoder/AbstractDecoder;->nextSymbol()I

    move-result p0

    and-int/lit16 p0, p0, 0xff

    or-int/2addr p0, p1

    .line 25
    new-instance p1, Lco/nstant/in/cbor/model/SinglePrecisionFloat;

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-direct {p1, p0}, Lco/nstant/in/cbor/model/SinglePrecisionFloat;-><init>(F)V

    return-object p1
.end method
