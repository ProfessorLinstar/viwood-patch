.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/CollectionsKt__CollectionsJVMKt;
.super Ljava/lang/Object;
.source "CollectionsJVM.kt"


# direct methods
.method public static final listOf(Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    .line 22
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string/jumbo v0, "singletonList(...)"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
