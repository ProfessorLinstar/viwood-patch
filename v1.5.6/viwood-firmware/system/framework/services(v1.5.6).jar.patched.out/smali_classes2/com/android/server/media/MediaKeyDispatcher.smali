.class public abstract Lcom/android/server/media/MediaKeyDispatcher;
.super Ljava/lang/Object;
.source "MediaKeyDispatcher.java"


# direct methods
.method public static isDoubleTapOverridden(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isSingleTapOverridden(I)Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static isTripleTapOverridden(I)Z
    .locals 0

    .line 0
    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
