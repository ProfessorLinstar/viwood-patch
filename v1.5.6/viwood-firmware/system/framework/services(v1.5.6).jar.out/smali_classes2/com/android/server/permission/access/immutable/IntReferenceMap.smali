.class public abstract Lcom/android/server/permission/access/immutable/IntReferenceMap;
.super Ljava/lang/Object;
.source "IntReferenceMap.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public final contains(I)Z
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->contains(I)Z

    move-result p0

    return p0
.end method

.method public final get(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    move-result p0

    return p0
.end method

.method public final indexOfKey(I)I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result p0

    return p0
.end method

.method public final keyAt(I)I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Lcom/android/server/permission/access/immutable/IntReferenceMap;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->toMutable()Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0}, Landroid/util/SparseArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntReferenceMap;->array:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0
.end method
