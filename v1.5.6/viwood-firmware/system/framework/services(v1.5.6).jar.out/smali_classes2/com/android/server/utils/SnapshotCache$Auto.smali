.class public Lcom/android/server/utils/SnapshotCache$Auto;
.super Lcom/android/server/utils/SnapshotCache;
.source "SnapshotCache.java"


# direct methods
.method public constructor <init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V
    .locals 0

    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/utils/Snappable;
    .locals 0

    .line 190
    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/utils/Snappable;

    invoke-interface {p0}, Lcom/android/server/utils/Snappable;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/utils/Snappable;

    return-object p0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 179
    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache$Auto;->createSnapshot()Lcom/android/server/utils/Snappable;

    move-result-object p0

    return-object p0
.end method
