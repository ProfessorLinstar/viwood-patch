.class public Lcom/android/server/utils/WatchedArrayList;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArrayList.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Ljava/util/ArrayList;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 139
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArrayList$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArrayList$1;-><init>(Lcom/android/server/utils/WatchedArrayList;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V
    .locals 4

    .line 412
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 415
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v0

    .line 416
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 418
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 419
    iget-object v3, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 421
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 413
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 205
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 207
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return v0
.end method

.method public clear()V
    .locals 3

    .line 258
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 261
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayList;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 265
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 365
    instance-of v0, p1, Lcom/android/server/utils/WatchedArrayList;

    if-eqz v0, :cond_0

    .line 366
    check-cast p1, Lcom/android/server/utils/WatchedArrayList;

    .line 367
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 293
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->hashCode()I

    move-result p0

    return p0
.end method

.method public final registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 2

    .line 100
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 101
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 103
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 344
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eq p2, p1, :cond_0

    .line 346
    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayList;->unregisterChildIf(Ljava/lang/Object;)V

    .line 347
    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArrayList;->registerChild(Ljava/lang/Object;)V

    .line 348
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArrayList;->onChanged()V

    :cond_0
    return-object p1
.end method

.method public size()I
    .locals 0

    .line 357
    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArrayList;
    .locals 2

    .line 388
    new-instance v0, Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result v1

    invoke-direct {v0, v1}, Lcom/android/server/utils/WatchedArrayList;-><init>(I)V

    .line 389
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArrayList;->snapshot(Lcom/android/server/utils/WatchedArrayList;Lcom/android/server/utils/WatchedArrayList;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayList;->snapshot()Lcom/android/server/utils/WatchedArrayList;

    move-result-object p0

    return-object p0
.end method

.method public final unregisterChild(Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public final unregisterChildIf(Ljava/lang/Object;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArrayList;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 3

    .line 117
    invoke-super {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->registeredObserverCount()I

    move-result p1

    if-nez p1, :cond_1

    .line 119
    iget-object p1, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/server/utils/WatchedArrayList;->mStorage:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/utils/WatchedArrayList;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArrayList;->mWatching:Z

    :cond_1
    return-void
.end method
