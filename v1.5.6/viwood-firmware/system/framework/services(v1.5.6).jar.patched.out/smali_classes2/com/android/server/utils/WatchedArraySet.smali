.class public Lcom/android/server/utils/WatchedArraySet;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedArraySet.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mStorage:Landroid/util/ArraySet;

.field public volatile mWatching:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 133
    invoke-direct {p0, v0, v0}, Lcom/android/server/utils/WatchedArraySet;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    .line 144
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 145
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p1, p2}, Landroid/util/ArraySet;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedArraySet;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 41
    new-instance v0, Lcom/android/server/utils/WatchedArraySet$1;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedArraySet$1;-><init>(Lcom/android/server/utils/WatchedArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    .line 166
    new-instance v0, Landroid/util/ArraySet;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    iput-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 53
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method private registerChild(Ljava/lang/Object;)V
    .locals 1

    .line 63
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 64
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->registerObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V
    .locals 4

    .line 423
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 426
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v0

    .line 427
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->ensureCapacity(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 429
    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/utils/Snapshots;->maybeSnapshot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 430
    iget-object v3, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->append(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 424
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private unregisterChild(Ljava/lang/Object;)V
    .locals 1

    .line 74
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 75
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method

.method private unregisterChildIf(Ljava/lang/Object;)V
    .locals 1

    .line 87
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    instance-of v0, p1, Lcom/android/server/utils/Watchable;

    if-eqz v0, :cond_0

    .line 88
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 89
    check-cast p1, Lcom/android/server/utils/Watchable;

    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-interface {p1, p0}, Lcom/android/server/utils/Watchable;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 267
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    .line 268
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return v0
.end method

.method public addAll(Ljava/util/Collection;)V
    .locals 1

    .line 288
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 289
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public clear()V
    .locals 3

    .line 208
    iget-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 211
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 215
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 365
    instance-of v0, p1, Lcom/android/server/utils/WatchedArraySet;

    if-eqz v0, :cond_0

    .line 366
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    check-cast p1, Lcom/android/server/utils/WatchedArraySet;

    iget-object p1, p1, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 368
    :cond_0
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 377
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->hashCode()I

    move-result p0

    return p0
.end method

.method public isEmpty()Z
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p0

    return p0
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
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    .line 104
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 106
    iget-object v1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerChild(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 312
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public removeAt(I)Ljava/lang/Object;
    .locals 1

    .line 328
    iget-object v0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->removeAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 329
    invoke-direct {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->unregisterChildIf(Ljava/lang/Object;)V

    .line 330
    invoke-direct {p0}, Lcom/android/server/utils/WatchedArraySet;->onChanged()V

    return-object p1
.end method

.method public size()I
    .locals 0

    .line 351
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedArraySet;
    .locals 1

    .line 399
    new-instance v0, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    .line 400
    invoke-static {v0, p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot(Lcom/android/server/utils/WatchedArraySet;Lcom/android/server/utils/WatchedArraySet;)V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 31
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArraySet;->snapshot()Lcom/android/server/utils/WatchedArraySet;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 389
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0}, Landroid/util/ArraySet;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
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
    iget-object p1, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 121
    iget-object v2, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/utils/WatchedArraySet;->unregisterChild(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    iput-boolean v0, p0, Lcom/android/server/utils/WatchedArraySet;->mWatching:Z

    :cond_1
    return-void
.end method

.method public untrackedStorage()Landroid/util/ArraySet;
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    return-object p0
.end method

.method public valueAt(I)Ljava/lang/Object;
    .locals 0

    .line 248
    iget-object p0, p0, Lcom/android/server/utils/WatchedArraySet;->mStorage:Landroid/util/ArraySet;

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
