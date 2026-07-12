.class public final Lcom/android/server/permission/access/immutable/MutableIndexedSet;
.super Lcom/android/server/permission/access/immutable/IndexedSet;
.source "IndexedSet.kt"


# direct methods
.method public constructor <init>(Landroid/util/ArraySet;)V
    .locals 1

    const/4 v0, 0x0

    .line 40
    invoke-direct {p0, p1, v0}, Lcom/android/server/permission/access/immutable/IndexedSet;-><init>(Landroid/util/ArraySet;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/ArraySet;ILcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 40
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/permission/access/immutable/IndexedSet;)V
    .locals 1

    .line 41
    new-instance v0, Landroid/util/ArraySet;

    invoke-virtual {p1}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSet$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArraySet;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/util/ArraySet;-><init>(Landroid/util/ArraySet;)V

    invoke-direct {p0, v0}, Lcom/android/server/permission/access/immutable/MutableIndexedSet;-><init>(Landroid/util/ArraySet;)V

    return-void
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 0

    .line 43
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedSet;->getSet$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method
