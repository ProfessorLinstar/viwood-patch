.class public Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"


# instance fields
.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1110186

    const v1, 0x10402b6

    .line 60
    const-string v2, "com.android.location.service.PopulationDensityProvider"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    const/4 v1, 0x0

    .line 57
    const-string v2, "PopulationDensityProxy"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;
    .locals 1

    .line 48
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;-><init>(Landroid/content/Context;)V

    .line 49
    invoke-virtual {v0}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->register()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V
    .locals 9

    .line 101
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    move-object v8, p6

    invoke-direct/range {v1 .. v8}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;DDILandroid/location/provider/IS2CellIdsCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V
    .locals 2

    .line 78
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;Landroid/location/provider/IS2LevelCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public final register()Z
    .locals 1

    .line 69
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_0
    return v0
.end method
