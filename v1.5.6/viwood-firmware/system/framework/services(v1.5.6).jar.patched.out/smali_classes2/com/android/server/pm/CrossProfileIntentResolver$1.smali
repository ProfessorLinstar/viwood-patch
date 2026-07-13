.class public Lcom/android/server/pm/CrossProfileIntentResolver$1;
.super Lcom/android/server/utils/SnapshotCache;
.source "CrossProfileIntentResolver.java"


# direct methods
.method public constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 75
    invoke-direct {p0, p2, p3}, Lcom/android/server/utils/SnapshotCache;-><init>(Ljava/lang/Object;Lcom/android/server/utils/Watchable;)V

    return-void
.end method


# virtual methods
.method public createSnapshot()Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 2

    .line 78
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    iget-object p0, p0, Lcom/android/server/utils/SnapshotCache;->mSource:Ljava/lang/Object;

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver-IA;)V

    return-object v0
.end method

.method public bridge synthetic createSnapshot()Ljava/lang/Object;
    .locals 0

    .line 75
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver$1;->createSnapshot()Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p0

    return-object p0
.end method
