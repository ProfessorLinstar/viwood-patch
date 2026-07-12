.class public Lcom/android/server/pm/InstantAppRegistry$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "InstantAppRegistry.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 195
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/InstantAppRegistry;
    .locals 2

    .line 198
    new-instance v0, Lcom/android/server/pm/InstantAppRegistry;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/InstantAppRegistry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/InstantAppRegistry;-><init>(Lcom/android/server/pm/InstantAppRegistry;Lcom/android/server/pm/InstantAppRegistry-IA;)V

    .line 199
    invoke-static {v0}, Lcom/android/server/pm/InstantAppRegistry;->-$$Nest$fgetmWatchable(Lcom/android/server/pm/InstantAppRegistry;)Lcom/android/server/utils/WatchableImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 195
    invoke-virtual {p0}, Lcom/android/server/pm/InstantAppRegistry$2;->createSnapshot()Lcom/android/server/pm/InstantAppRegistry;

    move-result-object p0

    return-object p0
.end method
