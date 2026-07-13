.class public Lco/nstant/in/cbor/model/NegativeInteger;
.super Lco/nstant/in/cbor/model/Number;
.source "NegativeInteger.java"


# direct methods
.method public constructor <init>(Ljava/math/BigInteger;)V
    .locals 1

    .line 13
    sget-object v0, Lco/nstant/in/cbor/model/MajorType;->NEGATIVE_INTEGER:Lco/nstant/in/cbor/model/MajorType;

    invoke-direct {p0, v0, p1}, Lco/nstant/in/cbor/model/Number;-><init>(Lco/nstant/in/cbor/model/MajorType;Ljava/math/BigInteger;)V

    return-void
.end method
