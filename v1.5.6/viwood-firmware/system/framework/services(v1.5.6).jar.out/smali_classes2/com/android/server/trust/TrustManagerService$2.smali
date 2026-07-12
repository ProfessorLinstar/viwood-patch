.class public Lcom/android/server/trust/TrustManagerService$2;
.super Ljava/lang/Object;
.source "TrustManagerService.java"

# interfaces
.implements Lcom/android/server/servicewatcher/ServiceWatcher$ServiceListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/trust/TrustManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/trust/TrustManagerService;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V
    .locals 0

    .line 371
    invoke-static {p1}, Landroid/hardware/location/ISignificantPlaceProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/location/ISignificantPlaceProvider;

    move-result-object p1

    new-instance p2, Lcom/android/server/trust/TrustManagerService$2$1;

    invoke-direct {p2, p0}, Lcom/android/server/trust/TrustManagerService$2$1;-><init>(Lcom/android/server/trust/TrustManagerService$2;)V

    .line 372
    invoke-interface {p1, p2}, Landroid/hardware/location/ISignificantPlaceProvider;->setSignificantPlaceProviderManager(Landroid/hardware/location/ISignificantPlaceProviderManager;)V

    return-void
.end method

.method public bridge synthetic onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/ServiceWatcher$BoundServiceInfo;)V
    .locals 0

    .line 366
    check-cast p2, Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/trust/TrustManagerService$2;->onBind(Landroid/os/IBinder;Lcom/android/server/servicewatcher/CurrentUserServiceSupplier$BoundServiceInfo;)V

    return-void
.end method

.method public onUnbind()V
    .locals 1

    .line 384
    iget-object p0, p0, Lcom/android/server/trust/TrustManagerService$2;->this$0:Lcom/android/server/trust/TrustManagerService;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/server/trust/TrustManagerService;->-$$Nest$fputmIsInSignificantPlace(Lcom/android/server/trust/TrustManagerService;Z)V

    return-void
.end method
