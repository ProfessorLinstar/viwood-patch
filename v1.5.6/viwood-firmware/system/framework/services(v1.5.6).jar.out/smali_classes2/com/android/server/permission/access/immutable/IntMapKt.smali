.class public abstract Lcom/android/server/permission/access/immutable/IntMapKt;
.super Ljava/lang/Object;
.source "IntMap.kt"


# direct methods
.method public static final gc(Landroid/util/SparseArray;)V
    .locals 0

    .line 98
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    return-void
.end method

.method public static final putReturnOld(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 61
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 63
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 64
    invoke-virtual {p0, v0, p2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    return-object p1

    .line 67
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static final removeAtReturnOld(Landroid/util/SparseArray;I)Ljava/lang/Object;
    .locals 1

    .line 92
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    .line 93
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    return-object v0
.end method
