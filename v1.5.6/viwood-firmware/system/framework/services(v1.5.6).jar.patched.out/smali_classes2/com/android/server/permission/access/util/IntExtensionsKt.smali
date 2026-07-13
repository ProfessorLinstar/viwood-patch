.class public abstract Lcom/android/server/permission/access/util/IntExtensionsKt;
.super Ljava/lang/Object;
.source "IntExtensions.kt"


# direct methods
.method public static final andInv(II)I
    .locals 0

    .line 0
    not-int p1, p1

    and-int/2addr p0, p1

    return p0
.end method

.method public static final hasAnyBit(II)Z
    .locals 0

    .line 0
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static final hasBits(II)Z
    .locals 0

    .line 0
    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
