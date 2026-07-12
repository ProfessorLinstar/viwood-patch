.class public abstract Lco/nstant/in/cbor/model/DataItem;
.super Ljava/lang/Object;
.source "DataItem.java"


# instance fields
.field public final majorType:Lco/nstant/in/cbor/model/MajorType;

.field public tag:Lco/nstant/in/cbor/model/Tag;


# direct methods
.method public constructor <init>(Lco/nstant/in/cbor/model/MajorType;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    .line 12
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public assertTrue(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    return-void

    .line 65
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 46
    instance-of v0, p1, Lco/nstant/in/cbor/model/DataItem;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 47
    check-cast p1, Lco/nstant/in/cbor/model/DataItem;

    .line 48
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 49
    iget-object v3, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    invoke-virtual {v0, v3}, Lco/nstant/in/cbor/model/Tag;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne p0, p1, :cond_0

    return v2

    :cond_0
    return v1

    .line 51
    :cond_1
    iget-object v0, p1, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-nez v0, :cond_2

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p1, p1, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    if-ne p0, p1, :cond_2

    return v2

    :cond_2
    return v1
.end method

.method public getMajorType()Lco/nstant/in/cbor/model/MajorType;
    .locals 0

    .line 16
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    return-object p0
.end method

.method public getTag()Lco/nstant/in/cbor/model/Tag;
    .locals 0

    .line 37
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-object p0
.end method

.method public hasTag()Z
    .locals 0

    .line 41
    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public hashCode()I
    .locals 1

    .line 60
    iget-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->majorType:Lco/nstant/in/cbor/model/MajorType;

    iget-object p0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    filled-new-array {v0, p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public setTag(I)V
    .locals 3

    if-ltz p1, :cond_0

    .line 24
    new-instance v0, Lco/nstant/in/cbor/model/Tag;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lco/nstant/in/cbor/model/Tag;-><init>(J)V

    iput-object v0, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void

    .line 21
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "tag number must be 0 or greater"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setTag(Lco/nstant/in/cbor/model/Tag;)V
    .locals 0

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iput-object p1, p0, Lco/nstant/in/cbor/model/DataItem;->tag:Lco/nstant/in/cbor/model/Tag;

    return-void
.end method
