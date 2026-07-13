.class public Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;
.super Ljava/lang/Object;
.source "ProxyGeocodeProvider.java"


# instance fields
.field public final mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x1110175

    const v1, 0x1040281

    .line 56
    const-string v2, "com.android.location.service.GeocodeProvider"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;->createFromConfig(Landroid/content/Context;Ljava/lang/String;II)Lcom/android/server/servicewatcher/CurrentUserServiceSupplier;

    move-result-object v0

    const/4 v1, 0x0

    .line 53
    const-string v2, "GeocoderProxy"

    invoke-static {p1, v2, v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->create(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceSupplier;Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;)Lcom/android/server/servicewatcher/ServiceWatcher;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    return-void
.end method

.method public static createAndRegister(Landroid/content/Context;)Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;
    .locals 1

    .line 41
    new-instance v0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;

    invoke-direct {v0, p0}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;-><init>(Landroid/content/Context;)V

    .line 42
    invoke-virtual {v0}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->register()Z

    move-result p0

    if-eqz p0, :cond_0

    return-object v0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public forwardGeocode(Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 2

    .line 94
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$2;-><init>(Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;Landroid/location/provider/ForwardGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method

.method public final register()Z
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {v0}, Lcom/android/server/servicewatcher/ServiceWatcher;->checkServiceResolves()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    invoke-interface {p0}, Lcom/android/server/servicewatcher/ServiceWatcher;->register()V

    :cond_0
    return v0
.end method

.method public reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 2

    .line 74
    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;->mServiceWatcher:Lcom/android/server/servicewatcher/ServiceWatcher;

    new-instance v1, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;-><init>(Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    invoke-interface {v0, v1}, Lcom/android/server/servicewatcher/ServiceWatcher;->runOnBinder(Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;)V

    return-void
.end method
