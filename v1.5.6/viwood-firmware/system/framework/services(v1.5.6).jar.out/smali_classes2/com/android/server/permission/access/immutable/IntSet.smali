.class public abstract Lcom/android/server/permission/access/immutable/IntSet;
.super Ljava/lang/Object;
.source "IntSet.kt"

# interfaces
.implements Lcom/android/server/permission/access/immutable/Immutable;


# instance fields
.field public final array:Landroid/util/SparseBooleanArray;


# direct methods
.method public constructor <init>(Landroid/util/SparseBooleanArray;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/permission/access/immutable/IntSet;->array:Landroid/util/SparseBooleanArray;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/util/SparseBooleanArray;Lcom/android/server/permission/jarjar/kotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/permission/access/immutable/IntSet;-><init>(Landroid/util/SparseBooleanArray;)V

    return-void
.end method


# virtual methods
.method public final elementAt(I)I
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result p0

    return p0
.end method

.method public final getArray$frameworks__base__services__permission__android_common__services_permission_pre_jarjar()Landroid/util/SparseBooleanArray;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntSet;->array:Landroid/util/SparseBooleanArray;

    return-object p0
.end method

.method public final getSize()I
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->size()I

    move-result p0

    return p0
.end method

.method public toMutable()Lcom/android/server/permission/access/immutable/MutableIntSet;
    .locals 1

    .line 34
    new-instance v0, Lcom/android/server/permission/access/immutable/MutableIntSet;

    invoke-direct {v0, p0}, Lcom/android/server/permission/access/immutable/MutableIntSet;-><init>(Lcom/android/server/permission/access/immutable/IntSet;)V

    return-object v0
.end method

.method public bridge synthetic toMutable()Ljava/lang/Object;
    .locals 0

    .line 22
    invoke-virtual {p0}, Lcom/android/server/permission/access/immutable/IntSet;->toMutable()Lcom/android/server/permission/access/immutable/MutableIntSet;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/android/server/permission/access/immutable/IntSet;->array:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0}, Landroid/util/SparseBooleanArray;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
