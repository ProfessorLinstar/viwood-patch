.class public abstract Lcom/android/server/permission/access/immutable/IndexedListSetExtensionsKt;
.super Ljava/lang/Object;
.source "IndexedListSetExtensions.kt"


# direct methods
.method public static final plus(Lcom/android/server/permission/access/immutable/IndexedListSet;Ljava/lang/Object;)Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    .locals 0

    .line 65
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p0

    .line 84
    invoke-virtual {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
