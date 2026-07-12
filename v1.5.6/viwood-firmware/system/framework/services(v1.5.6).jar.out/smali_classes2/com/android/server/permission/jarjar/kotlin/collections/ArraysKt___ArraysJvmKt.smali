.class public abstract Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt___ArraysJvmKt;
.super Lcom/android/server/permission/jarjar/kotlin/collections/ArraysKt__ArraysKt;
.source "_ArraysJvm.kt"


# direct methods
.method public static asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    invoke-static {p0}, Lcom/android/server/permission/jarjar/kotlin/collections/ArraysUtilJVM;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    const-string v0, "asList(...)"

    invoke-static {p0, v0}, Lcom/android/server/permission/jarjar/kotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
