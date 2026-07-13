.class public final Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;
.super Lcom/android/server/permission/access/immutable/IntReferenceMap;
.source "IntReferenceMap.kt"


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;-><init>(Landroid/util/SparseArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 55
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IntReferenceMap;)V
    .locals 3

    .line 60
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    .line 61
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 62
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public final mutate(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final mutateAt(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 77
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->mutate()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0
.end method

.method public final put(ILcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-direct {v0, p2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-static {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IntMapKt;->putReturnOld(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;

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

.method public final removeAt(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/permission/access/immutable/IntMapKt;->removeAtReturnOld(Landroid/util/SparseArray;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/access/immutable/IntMapKt;->gc(Landroid/util/SparseArray;)V

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0
.end method
