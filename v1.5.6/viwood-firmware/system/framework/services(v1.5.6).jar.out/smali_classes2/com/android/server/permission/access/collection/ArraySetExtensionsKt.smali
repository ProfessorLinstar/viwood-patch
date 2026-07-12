.class public abstract Lcom/android/server/permission/access/collection/ArraySetExtensionsKt;
.super Ljava/lang/Object;
.source "ArraySetExtensions.kt"


# direct methods
.method public static final varargs arraySetOf([Ljava/lang/Object;)Landroid/util/ArraySet;
    .locals 1

    .line 21
    new-instance v0, Landroid/util/ArraySet;

    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method
