.class public final Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
.super Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
.source "IndexedReferenceMap.kt"


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;-><init>(Landroid/util/ArrayMap;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/ArrayMap;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 55
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 54
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IndexedReferenceMap;)V
    .locals 3

    .line 60
    new-instance v0, Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 61
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 62
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {v2}, Lcom/android/server/permission/access/immutable/MutableReference;->toImmutable()Lcom/android/server/permission/access/immutable/MutableReference;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->setValueAt(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 59
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final mutate(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 67
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final put(Ljava/lang/Object;Lcom/android/server/permission/access/immutable/Immutable;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    new-instance v0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-direct {v0, p2}, Lcom/android/server/permission/access/immutable/MutableReference;-><init>(Lcom/android/server/permission/access/immutable/Immutable;)V

    invoke-virtual {p0, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final remove(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 71
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0
.end method
