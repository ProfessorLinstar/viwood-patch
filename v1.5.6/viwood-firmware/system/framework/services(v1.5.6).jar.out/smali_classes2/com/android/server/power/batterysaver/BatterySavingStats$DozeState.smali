.class public interface abstract Lcom/android/server/power/batterysaver/BatterySavingStats$DozeState;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# direct methods
.method public static fromIndex(I)I
    .locals 0

    .line 0
    shr-int/lit8 p0, p0, 0x3

    and-int/lit8 p0, p0, 0x3

    return p0
.end method
