.class public final Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "ComponentResolver.java"


# instance fields
.field public final mOrderResult:Landroid/util/ArrayMap;

.field public final mUserManager:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;)V
    .locals 1

    .line 1791
    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 1785
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1792
    iput-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-void
.end method


# virtual methods
.method public filterResults(Ljava/util/List;)V
    .locals 5

    .line 1832
    iget-object v0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1835
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_4

    .line 1837
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    iget-object v2, v2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    .line 1838
    invoke-virtual {v2}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 1839
    iget-object v4, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1840
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    if-nez v4, :cond_1

    goto :goto_1

    .line 1845
    :cond_1
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-ne v4, v2, :cond_2

    .line 1847
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1848
    iget-object v2, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    if-nez v2, :cond_3

    goto :goto_2

    .line 1855
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 v1, v1, -0x1

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public getIntentFilter(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Landroid/content/IntentFilter;
    .locals 0

    .line 0
    return-object p1
.end method

.method public bridge synthetic getIntentFilter(Ljava/lang/Object;)Landroid/content/IntentFilter;
    .locals 0

    .line 1771
    check-cast p1, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->getIntentFilter(Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public bridge synthetic isPackageForFilter(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 0

    .line 1771
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;)Z

    move-result p0

    return p0
.end method

.method public newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .locals 0

    .line 1797
    new-array p0, p1, [Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1771
    invoke-virtual {p0, p1}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->newArray(I)[Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p0

    return-object p0
.end method

.method public newResult(Lcom/android/server/pm/Computer;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;IIJ)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;
    .locals 0

    .line 1810
    iget-object p1, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {p1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result p1

    const/4 p3, 0x0

    if-nez p1, :cond_0

    return-object p3

    .line 1813
    :cond_0
    iget-object p1, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    invoke-virtual {p1}, Landroid/content/pm/InstantAppResolveInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1814
    invoke-virtual {p2}, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->getOrder()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    .line 1815
    iget-object p6, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    .line 1816
    invoke-virtual {p6, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Landroid/util/Pair;

    if-eqz p6, :cond_1

    .line 1818
    iget-object p6, p6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p6, Ljava/lang/Integer;

    invoke-virtual {p6}, Ljava/lang/Integer;->intValue()I

    move-result p6

    if-lt p6, p4, :cond_1

    return-object p3

    .line 1821
    :cond_1
    iget-object p3, p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;->resolveInfo:Landroid/content/pm/InstantAppResolveInfo;

    if-lez p4, :cond_2

    .line 1824
    iget-object p0, p0, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->mOrderResult:Landroid/util/ArrayMap;

    new-instance p4, Landroid/util/Pair;

    invoke-direct {p4, p5, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-object p2
.end method

.method public bridge synthetic newResult(Lcom/android/server/pm/Computer;Ljava/lang/Object;IIJ)Ljava/lang/Object;
    .locals 0

    .line 1771
    check-cast p2, Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/pm/resolution/ComponentResolver$InstantAppIntentResolver;->newResult(Lcom/android/server/pm/Computer;Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;IIJ)Landroid/content/pm/AuxiliaryResolveInfo$AuxiliaryFilter;

    move-result-object p0

    return-object p0
.end method
