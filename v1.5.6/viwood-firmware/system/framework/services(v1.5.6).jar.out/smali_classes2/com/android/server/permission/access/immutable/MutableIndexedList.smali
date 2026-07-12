.class public final Lcom/android/server/permission/access/immutable/MutableIndexedList;
.super Lcom/android/server/permission/access/immutable/IndexedList;
.source "IndexedList.kt"


# direct methods
.method public constructor <init>(Lcom/android/server/permission/access/immutable/IndexedList;)V
    .locals 1

    .line 37
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedList;->getList$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Ljava/util/ArrayList;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    .line 36
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IndexedList;-><init>(Ljava/util/ArrayList;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 36
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedList;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)V
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedList;->getList$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Ljava/util/ArrayList;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
