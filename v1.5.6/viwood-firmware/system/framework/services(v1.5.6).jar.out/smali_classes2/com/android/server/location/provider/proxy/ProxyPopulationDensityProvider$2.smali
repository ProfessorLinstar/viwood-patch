.class public Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic val$callback:Landroid/location/provider/IS2CellIdsCallback;

.field public final synthetic val$latitudeDegrees:D

.field public final synthetic val$longitudeDegrees:D

.field public final synthetic val$numAdditionalCells:I


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;DDILandroid/location/provider/IS2CellIdsCallback;)V
    .locals 0

    .line 102
    iput-wide p2, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$latitudeDegrees:D

    iput-wide p4, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$longitudeDegrees:D

    iput p6, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$numAdditionalCells:I

    iput-object p7, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 113
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    invoke-interface {p0}, Landroid/location/provider/IS2CellIdsCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 115
    :catch_0
    const-string p0, "ProxyPopulationDensityProvider"

    const-string/jumbo p1, "remote exception while querying coarsened S2 cell"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 7

    .line 105
    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$latitudeDegrees:D

    iget-wide v3, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$longitudeDegrees:D

    iget v5, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$numAdditionalCells:I

    iget-object v6, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$2;->val$callback:Landroid/location/provider/IS2CellIdsCallback;

    .line 106
    invoke-interface/range {v0 .. v6}, Landroid/location/provider/IPopulationDensityProvider;->getCoarsenedS2Cells(DDILandroid/location/provider/IS2CellIdsCallback;)V

    return-void
.end method
