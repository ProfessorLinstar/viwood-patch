.class public Lcom/android/server/pm/PackageSetting$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "PackageSetting.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 267
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/PackageSetting;
    .locals 2

    .line 270
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Z)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 267
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting$1;->createSnapshot()Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method
