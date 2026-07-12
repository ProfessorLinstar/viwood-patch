.class public Lco/nstant/in/cbor/encoder/ByteStringEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "ByteStringEncoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/ByteString;)V
    .locals 3

    .line 19
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/ByteString;->getBytes()[B

    move-result-object v0

    .line 20
    invoke-virtual {p1}, Lco/nstant/in/cbor/model/ByteString;->isChunked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    sget-object p1, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeChunked(Lco/nstant/in/cbor/model/MajorType;)V

    if-eqz v0, :cond_0

    .line 23
    new-instance p1, Lco/nstant/in/cbor/model/ByteString;

    invoke-direct {p1, v0}, Lco/nstant/in/cbor/model/ByteString;-><init>([B)V

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/encoder/ByteStringEncoder;->encode(Lco/nstant/in/cbor/model/ByteString;)V

    :cond_0
    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 26
    iget-object p0, p0, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encoder:Lco/nstant/in/cbor/CborEncoder;

    sget-object p1, Lco/nstant/in/cbor/model/SimpleValue;->NULL:Lco/nstant/in/cbor/model/SimpleValue;

    invoke-virtual {p0, p1}, Lco/nstant/in/cbor/CborEncoder;->encode(Lco/nstant/in/cbor/model/DataItem;)V

    return-void

    .line 28
    :cond_2
    sget-object p1, Lco/nstant/in/cbor/model/MajorType;->BYTE_STRING:Lco/nstant/in/cbor/model/MajorType;

    array-length v1, v0

    int-to-long v1, v1

    invoke-virtual {p0, p1, v1, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    .line 29
    invoke-virtual {p0, v0}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->write([B)V

    return-void
.end method
