.class public Lcom/android/server/utils/WatchedLongSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedLongSparseArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/LongSparseArray;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 128
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 40
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedLongSparseArray$1;-><init>(Lcom/android/server/utils/WatchedLongSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 129
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 40
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedLongSparseArray$1;-><init>(Lcom/android/server/utils/WatchedLongSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 140
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0, p1}, Landroid/util/LongSparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 52
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 61
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 62
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedLongSparseArray;Lcom/android/server/utils/WatchedLongSparseArray;)V
    .locals 6

    .line 406
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 409
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 411
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedLongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 412
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedLongSparseArray;->keyAt(I)J

    move-result-wide v3

    .line 413
    iget-object v5, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v5, v3, v4, v2}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 407
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .locals 1

    .line 72
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 73
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .locals 2

    .line 84
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1}, Landroid/util/LongSparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 86
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(J)V
    .locals 2

    .line 207
    iget-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Landroid/util/LongSparseArray;->get(JLjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->delete(J)V

    .line 209
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedLongSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 210
    invoke-direct {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->onChanged()V

    return-void
.end method

.method public get(J)Ljava/lang/Object;
    .locals 0

    .line 192
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public indexOfKey(J)I
    .locals 0

    .line 312
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/LongSparseArray;->indexOfKey(J)I

    move-result p0

    return p0
.end method

.method public keyAt(I)J
    .locals 0

    .line 269
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide p0

    return-wide p0
.end method

.method public put(JLjava/lang/Object;)V
    .locals 2

    .line 240
    iget-object v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2, p3}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 242
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedLongSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 243
    invoke-direct {p0, p3}, Lcom/android/server/utils/WatchedLongSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 244
    invoke-direct {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->onChanged()V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 2

    .line 97
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 100
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    .line 101
    iget-object p1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 103
    iget-object v1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v1, v0}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedLongSparseArray;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(J)V
    .locals 0

    .line 218
    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedLongSparseArray;->delete(J)V

    return-void
.end method

.method public size()I
    .locals 0

    .line 252
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedLongSparseArray;
    .locals 2

    .line 382
    new-instance v0, Lcom/android/server/utils/WatchedLongSparseArray;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedLongSparseArray;-><init>(I)V

    .line 383
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedLongSparseArray;->snapshot(Lcom/android/server/utils/WatchedLongSparseArray;Lcom/android/server/utils/WatchedLongSparseArray;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 30
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedLongSparseArray;->snapshot()Lcom/android/server/utils/WatchedLongSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 372
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0}, Landroid/util/LongSparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    .line 114
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 116
    iget-object p1, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p1}, Landroid/util/LongSparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 118
    iget-object v2, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {v2, v1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedLongSparseArray;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mWatching:Z

    :cond_1
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/utils/WatchedLongSparseArray;->mStorage:Landroid/util/LongSparseArray;

    invoke-virtual {p0, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
