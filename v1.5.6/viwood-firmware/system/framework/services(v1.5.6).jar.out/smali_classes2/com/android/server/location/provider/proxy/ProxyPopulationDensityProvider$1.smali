.class public Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;
.super Ljava/lang/Object;
.source "ProxyPopulationDensityProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic val$callback:Landroid/location/provider/IS2LevelCallback;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider;Landroid/location/provider/IS2LevelCallback;)V
    .locals 0

    .line 79
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 89
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    invoke-interface {p0}, Landroid/location/provider/IS2LevelCallback;->onError()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 91
    :catch_0
    const-string p0, "ProxyPopulationDensityProvider"

    const-string/jumbo p1, "remote exception while querying default coarsening level"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 0

    .line 82
    invoke-static {p1}, Landroid/location/provider/IPopulationDensityProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IPopulationDensityProvider;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyPopulationDensityProvider$1;->val$callback:Landroid/location/provider/IS2LevelCallback;

    .line 83
    invoke-interface {p1, p0}, Landroid/location/provider/IPopulationDensityProvider;->getDefaultCoarseningLevel(Landroid/location/provider/IS2LevelCallback;)V

    return-void
.end method
