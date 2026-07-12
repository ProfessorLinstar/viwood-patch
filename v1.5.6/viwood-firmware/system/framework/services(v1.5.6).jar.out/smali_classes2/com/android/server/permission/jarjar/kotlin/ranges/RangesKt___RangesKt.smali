.class public abstract Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt___RangesKt;
.super Lcom/android/server/permission/jarjar/kotlin/ranges/RangesKt__RangesKt;
.source "_Ranges.kt"


# direct methods
.method public static coerceAtMost(II)I
    .locals 0

    .line 0
    if-le p0, p1, :cond_0

    return p1

    :cond_0
    return p0
.end method

.method public static coerceAtMost(JJ)J
    .locals 1

    .line 0
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    return-wide p2

    :cond_0
    return-wide p0
.end method
