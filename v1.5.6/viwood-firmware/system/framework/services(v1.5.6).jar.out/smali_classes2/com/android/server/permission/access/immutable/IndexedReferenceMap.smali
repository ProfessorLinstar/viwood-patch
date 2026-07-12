.class public abstract Lcom/android/server/permission/access/immutable/IndexedReferenceMap;
.super Ljava/lang/Object;
.source "IndexedReferenceMap.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final map:Landroid/util/ArrayMap;


# direct methods
.method public constructor <init>(Landroid/util/ArrayMap;)V
    .locals 0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/ArrayMap;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;-><init>(Landroid/util/ArrayMap;)V

    return-void
.end method


# virtual methods
.method public final get(Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

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

.method public final getMap$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArrayMap;
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    move-result p0

    return p0
.end method

.method public final indexOfKey(Ljava/lang/Object;)I
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public final keyAt(I)Ljava/lang/Object;
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;
    .locals 1

    .line 44
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;-><init>(Lcom/android/server/permission/access/immutable/IndexedReferenceMap;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedReferenceMap;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final valueAt(I)Lcom/android/server/permission/access/immutable/Immutable;
    .locals 0

    .line 42
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedReferenceMap;->map:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/permission/access/immutable/MutableReference;

    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/MutableReference;->get()Lcom/android/server/permission/access/immutable/Immutable;

    move-result-object p0

    return-object p0
.end method
