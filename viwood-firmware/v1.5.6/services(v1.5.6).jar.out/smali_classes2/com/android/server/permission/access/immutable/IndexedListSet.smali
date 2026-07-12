.class public abstract Lcom/android/server/permission/access/immutable/IndexedListSet;
.super Ljava/lang/Object;
.source "IndexedListSet.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final list:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IndexedListSet;-><init>(Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public final contains(Ljava/lang/Object;)Z
    .locals 0

    .line 27
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final elementAt(I)Ljava/lang/Object;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getList$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Ljava/util/ArrayList;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public final isEmpty()Z
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedListSet;
    .locals 1

    .line 33
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIndexedListSet;-><init>(Lcom/android/server/permission/access/immutable/IndexedListSet;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IndexedListSet;->toMutable()Lcom/android/server/permission/access/immutable/MutableIndexedListSet;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 35
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IndexedListSet;->list:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
