.class public abstract Lcom/android/server/permission/access/immutable/IndexedMapExtensionsKt;
.super Ljava/lang/Object;
.source "IndexedMapExtensions.kt"


# direct methods
.method public static final getWithDefault(Lcom/android/server/permission/access/immutable/IndexedMap;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    if-nez p0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p1

    if-ltz p1, :cond_1

    .line 61
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    return-object p2
.end method

.method public static final putWithDefault(Lcom/android/server/permission/access/immutable/MutableIndexedMap;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_2

    .line 107
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/IndexedMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    .line 108
    invoke-static {p2, p1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 109
    invoke-static {p2, p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 110
    invoke-virtual {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->removeAt(I)Ljava/lang/Object;

    return-object p1

    .line 112
    :cond_0
    invoke-virtual {p0, v0, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->putAt(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object p1

    .line 117
    :cond_2
    invoke-static {p2, p3}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 118
    invoke-virtual {p0, p1, p2}, Lcom/android/server/permission/access/immutable/MutableIndexedMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-object p3
.end method
