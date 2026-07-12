.class public abstract Lco/nstant/in/cbor/model/AbstractFloat;
.super Lco/nstant/in/cbor/model/Special;
.source "AbstractFloat.java"


# instance fields
.field public final value:F


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/SpecialType;F)V
    .locals 0

    .line 10
    invoke-direct {p0, p1}, Lco/nstant/in/cbor/model/Special;-><init>(Lco/nstant/in/cbor/model/SpecialType;)V

    .line 11
    iput p2, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .line 20
    instance-of v0, p1, Lco/nstant/in/cbor/model/AbstractFloat;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 21
    move-object v0, p1

    check-cast v0, Lco/nstant/in/cbor/model/AbstractFloat;

    .line 22
    invoke-super {p0, p1}, Lco/nstant/in/cbor/model/Special;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    iget p1, v0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    cmpl-float p0, p0, p1

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getValue()F
    .locals 0

    .line 15
    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 29
    invoke-super {p0}, Lco/nstant/in/cbor/model/Special;->hashCode()I

    move-result v0

    iget p0, p0, Lco/nstant/in/cbor/model/AbstractFloat;->value:F

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    xor-int/2addr p0, v0

    return p0
.end method
