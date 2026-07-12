.class public final Lcom/android/server/devicepolicy/PackageSetUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "PackageSetUnion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 29
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/PackageSetUnion;->getParcelableResolutionMechanism()Landroid/app/admin/StringSetUnion;

    move-result-object p0

    return-object p0
.end method

.method public getParcelableResolutionMechanism()Landroid/app/admin/StringSetUnion;
    .locals 0

    .line 47
    new-instance p0, Landroid/app/admin/StringSetUnion;

    invoke-direct {p0}, Landroid/app/admin/StringSetUnion;-><init>()V

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 1

    .line 34
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 38
    :cond_0
    new-instance p0, Ljava/util/HashSet;

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    .line 39
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/PolicyValue;

    .line 40
    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 42
    :cond_1
    new-instance p1, Landroid/app/admin/PackageSetPolicyValue;

    invoke-direct {p1, p0}, Landroid/app/admin/PackageSetPolicyValue;-><init>(Ljava/util/Set;)V

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 53
    const-string p0, "PackageSetUnion {}"

    return-object p0
.end method
