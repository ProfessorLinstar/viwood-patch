.class public Lcom/android/server/pm/CrossProfileIntentResolver;
.super Lcom/android/server/pm/WatchedIntentResolver;
.source "CrossProfileIntentResolver.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 56
    invoke-direct {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/android/server/pm/WatchedIntentResolver;-><init>()V

    .line 66
    invoke-virtual {p0, p1}, Lcom/android/server/pm/WatchedIntentResolver;->copyFrom(Lcom/android/server/pm/WatchedIntentResolver;)V

    .line 67
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;)V

    return-void
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 75
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver$1;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/CrossProfileIntentResolver$1;-><init>(Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/pm/CrossProfileIntentResolver;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method


# virtual methods
.method public getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;
    .locals 0

    .line 52
    invoke-virtual {p1}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 32
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->getIntentFilter(Lcom/android/server/pm/CrossProfileIntentFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z
    .locals 0

    .line 42
    iget p0, p2, Lcom/android/server/pm/CrossProfileIntentFilter;->mFlags:I

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 32
    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/CrossProfileIntentResolver;->isPackageForFilter(Ljava/lang/String;Lcom/android/server/pm/CrossProfileIntentFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 0

    .line 37
    new-array p0, p1, [Lcom/android/server/pm/CrossProfileIntentFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->newArray(I)[Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 61
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->snapshot()Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/server/pm/CrossProfileIntentResolver;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot()Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic snapshot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 32
    check-cast p1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/CrossProfileIntentResolver;->snapshot(Lcom/android/server/pm/CrossProfileIntentFilter;)Lcom/android/server/pm/CrossProfileIntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public sortResults(Ljava/util/List;)V
    .locals 0

    .line 0
    return-void
.end method
