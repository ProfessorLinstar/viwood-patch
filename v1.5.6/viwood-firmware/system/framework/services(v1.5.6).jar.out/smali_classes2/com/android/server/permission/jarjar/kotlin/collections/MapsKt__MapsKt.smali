.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/MapsKt__MapsJVMKt;
.source "Maps.kt"


# direct methods
.method public static emptyMap()Ljava/util/Map;
    .locals 2

    .line 40
    sget-object v0, Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;->INSTANCE:Lcom/android/server/permission/jarjar/kotlin/collections/EmptyMap;

    const-string/jumbo v1, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>"

    invoke-static {v0, v1}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
