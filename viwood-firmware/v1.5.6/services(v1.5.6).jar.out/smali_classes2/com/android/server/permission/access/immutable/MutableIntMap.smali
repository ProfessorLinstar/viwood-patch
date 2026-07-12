.class public final Lcom/android/server/permission/access/immutable/MutableIntMap;
.super Lcom/android/server/permission/access/immutable/IntMap;
.source "IntMap.kt"


# direct methods
.method public constructor <init>(Landroid/util/SparseArray;)V
    .locals 1

    const/4 v0, 0x0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IntMap;-><init>(Landroid/util/SparseArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseArray;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 44
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IntMap;)V
    .locals 0

    .line 45
    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIntMap;-><init>(Landroid/util/SparseArray;)V

    return-void
.end method


# virtual methods
.method public final clear()V
    .locals 0

    .line 52
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/SparseArray;->clear()V

    return-void
.end method

.method public final put(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 47
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/server/permission/access/immutable/IntMapKt;->putReturnOld(Landroid/util/SparseArray;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntMap;->getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseArray;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/permission/access/immutable/IntMapKt;->gc(Landroid/util/SparseArray;)V

    return-object p1
.end method
