.class public abstract Lcom/android/server/permission/access/immutable/IntMapExtensionsKt;
.super Ljava/lang/Object;
.source "IntMapExtensions.kt"


# direct methods
.method public static final set(Lcom/android/server/permission/access/immutable/MutableIntMap;ILjava/lang/Object;)V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
