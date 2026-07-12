.class public final Lcom/android/server/devicepolicy/FlagUnion;
.super Lcom/android/server/devicepolicy/ResolutionMechanism;
.source "FlagUnion.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lcom/android/server/devicepolicy/ResolutionMechanism;-><init>()V

    return-void
.end method


# virtual methods
.method public getParcelableResolutionMechanism()Landroid/app/admin/FlagUnion;
    .locals 0

    .line 45
    sget-object p0, Landroid/app/admin/FlagUnion;->FLAG_UNION:Landroid/app/admin/FlagUnion;

    return-object p0
.end method

.method public bridge synthetic getParcelableResolutionMechanism()Landroid/app/admin/ResolutionMechanism;
    .locals 0

    .line 26
    invoke-virtual {p0}, Lcom/android/server/devicepolicy/FlagUnion;->getParcelableResolutionMechanism()Landroid/app/admin/FlagUnion;

    move-result-object p0

    return-object p0
.end method

.method public resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/IntegerPolicyValue;
    .locals 1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    .line 36
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    .line 37
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

    .line 38
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-virtual {v0}, Landroid/app/admin/PolicyValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    or-int/2addr p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    .line 40
    :cond_1
    new-instance p1, Landroid/app/admin/IntegerPolicyValue;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-direct {p1, p0}, Landroid/app/admin/IntegerPolicyValue;-><init>(I)V

    return-object p1
.end method

.method public bridge synthetic resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/PolicyValue;
    .locals 0

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/FlagUnion;->resolve(Ljava/util/LinkedHashMap;)Landroid/app/admin/IntegerPolicyValue;

    move-result-object p0

    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 50
    const-string p0, "IntegerUnion {}"

    return-object p0
.end method
