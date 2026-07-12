.class public Lcom/android/server/utils/WatchedSparseArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/SparseArray;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 131
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 142
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseArray;)V
    .locals 1

    .line 155
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 42
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseArray$1;-><init>(Lcom/android/server/utils/WatchedSparseArray;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    .line 156
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 54
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V
    .locals 5

    .line 486
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 489
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 491
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 492
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v3

    .line 493
    iget-object v4, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v4, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 487
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .locals 2

    .line 86
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public delete(I)V
    .locals 2

    .line 220
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 221
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 222
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 223
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 437
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseArray;

    if-eqz v0, :cond_0

    .line 438
    check-cast p1, Lcom/android/server/utils/WatchedSparseArray;

    .line 439
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 205
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 432
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .locals 0

    .line 323
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public put(ILjava/lang/Object;)V
    .locals 2

    .line 292
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 293
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    .line 295
    invoke-direct {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    .line 296
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseArray;->onChanged()V

    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 2

    .line 99
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 102
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    .line 103
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 0

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->delete(I)V

    return-void
.end method

.method public removeReturnOld(I)Ljava/lang/Object;
    .locals 1

    .line 231
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    .line 232
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChildIf(Ljava/lang/Object;)V

    return-object p1
.end method

.method public size()I
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseArray;
    .locals 2

    .line 462
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>(I)V

    .line 463
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 32
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot()Lcom/android/server/utils/WatchedSparseArray;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseArray;)V
    .locals 0

    .line 473
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;Lcom/android/server/utils/WatchedSparseArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 452
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    .line 116
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 118
    iget-object p1, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 120
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedSparseArray;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 123
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedSparseArray;->mWatching:Z

    :cond_1
    return-void
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0

    .line 343
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseArray;->mStorage:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
