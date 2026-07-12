.class public Lcom/android/server/pm/SharedLibrariesImpl$2;
.super Lcom/android/server/utils/SnapshotCache;
.source "SharedLibrariesImpl.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 145
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 2

    .line 148
    new-instance v0, Lcom/android/server/pm/SharedLibrariesImpl;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/SharedLibrariesImpl;-><init>(Lcom/android/server/pm/SharedLibrariesImpl;Lcom/android/server/pm/SharedLibrariesImpl-IA;)V

    .line 149
    invoke-static {v0}, Lcom/android/server/pm/SharedLibrariesImpl;->-$$Nest$fgetmWatchable(Lcom/android/server/pm/SharedLibrariesImpl;)Lcom/android/server/utils/WatchableImpl;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/server/pm/SharedLibrariesImpl$2;->createSnapshot()Lcom/android/server/pm/SharedLibrariesImpl;

    move-result-object p0

    return-object p0
.end method
