.class public Lco/nstant/in/cbor/model/DoublePrecisionFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "DoublePrecisionFloat.java"


# instance fields
.field public final value:D


# direct methods
.method public constructor <init>(D)V
    .locals 1

    .line 10
    sget-object v0, Lco/nstant/in/cbor/model/SpecialType;->IEEE_754_DOUBLE_PRECISION_FLOAT:Lco/nstant/in/cbor/model/SpecialType;

    invoke-direct {p0, v0}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 11
    iput-wide p1, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 20
    instance-of v0, p1, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;

    .line 22
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-wide p0, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    iget-wide v2, v0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    cmpl-double p0, p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getValue()D
    .locals 2

    .line 15
    iget-wide v0, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    return-wide v0
.end method

.method public hashCode()I
    .locals 3

    .line 29
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    move-result v0

    iget-wide v1, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 34
    iget-wide v0, p0, Lco/nstant/in/cbor/model/DoublePrecisionFloat;->value:D

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
