.class public abstract Lcom/android/server/utils/Snapshots;
.super Ljava/lang/Object;
.source "Snapshots.java"


# direct methods
.method public static maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 37
    instance-of v0, p0, Lcom/android/server/utils/Snappable;

    if-eqz v0, :cond_0

    .line 38
    check-cast p0, Lcom/android/server/utils/Snappable;

    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object p0

    :cond_0
    return-object p0
.end method
