.class public Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;
.super Ljava/lang/Object;
.source "ProxyGeocodeProvider.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$BinderOperation;


# instance fields
.field public final synthetic val$callback:Landroid/location/provider/IGeocodeCallback;

.field public final synthetic val$request:Landroid/location/provider/ReverseGeocodeRequest;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider;Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V
    .locals 0

    .line 75
    iput-object p2, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Landroid/location/provider/ReverseGeocodeRequest;

    iput-object p3, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 0

    .line 84
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Landroid/location/provider/IGeocodeCallback;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public run(Landroid/os/IBinder;)V
    .locals 1

    .line 78
    invoke-static {p1}, Landroid/location/provider/IGeocodeProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/location/provider/IGeocodeProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$request:Landroid/location/provider/ReverseGeocodeRequest;

    iget-object p0, p0, Lcom/android/server/location/provider/proxy/ProxyGeocodeProvider$1;->val$callback:Landroid/location/provider/IGeocodeCallback;

    invoke-interface {p1, v0, p0}, Landroid/location/provider/IGeocodeProvider;->reverseGeocode(Landroid/location/provider/ReverseGeocodeRequest;Landroid/location/provider/IGeocodeCallback;)V

    return-void
.end method
