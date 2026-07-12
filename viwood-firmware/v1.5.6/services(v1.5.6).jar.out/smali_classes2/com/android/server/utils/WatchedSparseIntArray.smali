.class public Lcom/android/server/utils/WatchedSparseIntArray;
.super Lcom/android/server/utils/WatchableImpl;
.source "WatchedSparseIntArray.java"

# interfaces
.implements Lcom/android/server/utils/Snappable;


# instance fields
.field public final mStorage:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 42
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/utils/WatchedSparseIntArray;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    .line 67
    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clone()Landroid/util/SparseIntArray;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    return-void
.end method

.method private onChanged()V
    .locals 0

    .line 35
    invoke-virtual {p0, p0}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public static snapshot(Lcom/android/server/utils/WatchedSparseIntArray;Lcom/android/server/utils/WatchedSparseIntArray;)V
    .locals 5

    .line 313
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 316
    invoke-virtual {p1}, Lcom/android/server/utils/WatchedSparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 318
    iget-object v2, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->keyAt(I)I

    move-result v3

    invoke-virtual {p1, v1}, Lcom/android/server/utils/WatchedSparseIntArray;->valueAt(I)I

    move-result v4

    invoke-virtual {v2, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-void

    .line 314
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "snapshot destination is not empty"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public delete(I)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result p1

    if-ltz p1, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 125
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 266
    instance-of v0, p1, Lcom/android/server/utils/WatchedSparseIntArray;

    if-eqz v0, :cond_0

    .line 267
    check-cast p1, Lcom/android/server/utils/WatchedSparseIntArray;

    .line 268
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    iget-object p1, p1, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public get(II)I
    .locals 0

    .line 113
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseIntArray;->get(II)I

    move-result p0

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public keyAt(I)I
    .locals 0

    .line 173
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public put(II)V
    .locals 1

    .line 145
    iget-object v0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 146
    invoke-direct {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->onChanged()V

    return-void
.end method

.method public size()I
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->size()I

    move-result p0

    return p0
.end method

.method public snapshot()Lcom/android/server/utils/WatchedSparseIntArray;
    .locals 1

    .line 289
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0, p0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 290
    invoke-virtual {v0}, Lcom/android/server/utils/WatchableImpl;->seal()V

    return-object v0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 27
    invoke-virtual {p0}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot()Lcom/android/server/utils/WatchedSparseIntArray;

    move-result-object p0

    return-object p0
.end method

.method public snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V
    .locals 0

    .line 300
    invoke-static {p0, p1}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;Lcom/android/server/utils/WatchedSparseIntArray;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0}, Landroid/util/SparseIntArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public valueAt(I)I
    .locals 0

    .line 193
    iget-object p0, p0, Lcom/android/server/utils/WatchedSparseIntArray;->mStorage:Landroid/util/SparseIntArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result p0

    return p0
.end method
