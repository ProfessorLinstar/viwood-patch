.class public interface abstract Lcom/android/server/power/batterysaver/BatterySavingStats$InteractiveState;
.super Ljava/lang/Object;
.source "BatterySavingStats.java"


# direct methods
.method public static fromIndex(I)I
    .locals 0

    .line 0
    shr-int/lit8 p0, p0, 0x2

    and-int/lit8 p0, p0, 0x1

    return p0
.end method
