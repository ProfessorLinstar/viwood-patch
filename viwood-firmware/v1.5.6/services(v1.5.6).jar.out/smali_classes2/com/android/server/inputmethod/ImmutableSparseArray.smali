.class public final Lcom/android/server/inputmethod/ImmutableSparseArray;
.super Ljava/lang/Object;
.source "ImmutableSparseArray.java"


# static fields
.field public static final EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;


# instance fields
.field public final mArray:Landroid/util/SparseArray;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Lcom/android/server/inputmethod/ImmutableSparseArray;

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-direct {v0, v1}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    sput-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    return-void
.end method

.method public static empty()Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 1

    .line 53
    sget-object v0, Lcom/android/server/inputmethod/ImmutableSparseArray;->EMPTY:Lcom/android/server/inputmethod/ImmutableSparseArray;

    return-object v0
.end method


# virtual methods
.method public cloneWithPutOrSelf(ILjava/lang/Object;)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 2

    .line 149
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-ltz v0, :cond_0

    .line 151
    iget-object v1, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p2, :cond_0

    return-object p0

    .line 156
    :cond_0
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    .line 157
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 158
    new-instance p1, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object p1
.end method

.method public cloneWithRemoveOrSelf(I)Lcom/android/server/inputmethod/ImmutableSparseArray;
    .locals 2

    .line 172
    invoke-virtual {p0, p1}, Lcom/android/server/inputmethod/ImmutableSparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    return-object p0

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 177
    invoke-static {}, Lcom/android/server/inputmethod/ImmutableSparseArray;->empty()Lcom/android/server/inputmethod/ImmutableSparseArray;

    move-result-object p0

    return-object p0

    .line 179
    :cond_1
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p0

    .line 180
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 181
    new-instance p1, Lcom/android/server/inputmethod/ImmutableSparseArray;

    invoke-direct {p1, p0}, Lcom/android/server/inputmethod/ImmutableSparseArray;-><init>(Landroid/util/SparseArray;)V

    return-object p1
.end method

.method public contains(I)Z
    .locals 0

    .line 109
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 133
    iget-object v2, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public get(I)Ljava/lang/Object;
    .locals 0

    .line 121
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public indexOfKey(I)I
    .locals 0

    .line 98
    iget-object p0, p0, Lcom/android/server/inputmethod/ImmutableSparseArray;->mArray:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method
