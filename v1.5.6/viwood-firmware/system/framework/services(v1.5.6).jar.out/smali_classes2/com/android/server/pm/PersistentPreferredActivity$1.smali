.class public Lcom/android/server/pm/PersistentPreferredActivity$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "PersistentPreferredActivity.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 50
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/PersistentPreferredActivity;
    .locals 2

    .line 53
    new-instance v0, Lcom/android/server/pm/PersistentPreferredActivity;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PersistentPreferredActivity;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/server/pm/PersistentPreferredActivity;Lcom/android/server/pm/PersistentPreferredActivity-IA;)V

    .line 54
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 50
    invoke-virtual {p0}, Lcom/android/server/pm/PersistentPreferredActivity$1;->createSnapshot()Lcom/android/server/pm/PersistentPreferredActivity;

    move-result-object p0

    return-object p0
.end method
