.class public final Lcom/android/server/devicepolicy/MostRecent;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "MostRecent.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/MostRecent;
    .locals 0

    .line 39
    new-instance p0, Landroid/app/admin/MostRecent;

    invoke-direct {p0}, Landroid/app/admin/MostRecent;-><init>()V

    return-object p0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 28
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/MostRecent;->getParcelableResolutionMechanism()Landroid/app/admin/MostRecent;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 32
    new-instance p0, Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 34
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map$Entry;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/PolicyValue;

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 44
    const-string p0, "MostRecent {}"

    return-object p0
.end method
