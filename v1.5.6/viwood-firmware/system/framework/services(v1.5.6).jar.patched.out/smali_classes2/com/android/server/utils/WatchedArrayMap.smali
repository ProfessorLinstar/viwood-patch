.class public Lcom/android/server/utils/WatchedArrayMap;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArrayMap.java"

# interfaces
.implements Ljava/util/Map;
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/ArrayMap;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 137
    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 144
    invoke-direct {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 148
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 45
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayMap$1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    .line 149
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0, p1, p2}, Landroid/util/ArrayMap;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 57
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 67
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 68
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 5

    .line 460
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 463
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    .line 464
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 466
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 467
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    .line 468
    iget-object v4, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 470
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 461
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .locals 1

    .line 78
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 79
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .locals 1

    .line 91
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .line 216
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    if-eqz v0, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 219
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 223
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 0

    .line 231
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 0

    .line 239
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsValue(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 0

    .line 247
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 255
    instance-of v0, p1, Lcom/android/server/utils/WatchedArrayMap;

    if-eqz v0, :cond_0

    .line 256
    check-cast p1, Lcom/android/server/utils/WatchedArrayMap;

    .line 257
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 268
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 284
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public keyAt(I)Ljava/lang/Object;
    .locals 0

    .line 355
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public keySet()Ljava/util/Set;
    .locals 0

    .line 292
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 300
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 301
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedArrayMap;->registerChild(Ljava/lang/Object;)V

    .line 302
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2

    .line 311
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 312
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 2

    .line 104
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 107
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    .line 108
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 110
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 321
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 322
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChildIf(Ljava/lang/Object;)V

    .line 323
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 424
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChildIf(Ljava/lang/Object;)V

    .line 425
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayMap;->onChanged()V

    return-object p1
.end method

.method public size()I
    .locals 0

    .line 332
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArrayMap;
    .locals 1

    .line 436
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    .line 437
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 35
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 0

    .line 447
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)V

    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    .line 121
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 122
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 123
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 125
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArrayMap;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 128
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayMap;->mWatching:Z

    :cond_1
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArrayMap;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0

    .line 368
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public values()Ljava/util/Collection;
    .locals 0

    .line 340
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayMap;->mStorage:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method
