.class public abstract Lcom/android/server/permission/access/immutable/IntReferenceMapExtensionsKt;
.super Ljava/lang/Object;
.source "IntReferenceMapExtensions.kt"


# direct methods
.method public static final minusAssign(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;I)V
    .locals 1

    .line 82
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    sget-object p1, Lcom/android/server/permission/jarjar/kotlin/Unit;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/Unit;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/access/immutable/IntMapKt;->gc(Landroid/util/SparseArray;)V

    return-void
.end method

.method public static final set(Lcom/android/server/permission/access/immutable/MutableIntReferenceMap;ILcom/android/server/permission/access/immutable/Immutable;)V
    .locals 1

    .line 86
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntReferenceMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-direct {v0, p2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
