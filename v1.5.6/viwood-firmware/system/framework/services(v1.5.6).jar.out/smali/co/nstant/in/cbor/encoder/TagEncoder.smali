.class public Lco/nstant/in/cbor/encoder/TagEncoder;
.super Lco/nstant/in/cbor/encoder/AbstractEncoder;
.source "TagEncoder.java"


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;-><init>(Lco/nstant/in/cbor/CborEncoder;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public encode(Lco/nstant/in/cbor/model/Tag;)V
    .locals 3

    .line 18
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->TAG:Lco/nstant/in/cbor/model/MajorType;

    invoke-virtual {p1}, Lco/nstant/in/cbor/model/Tag;->getValue()J

    move-result-wide v1

    invoke-virtual {p0, v0, v1, v2}, Lco/nstant/in/cbor/encoder/AbstractEncoder;->encodeTypeAndLength(Lco/nstant/in/cbor/model/MajorType;J)V

    return-void
.end method
