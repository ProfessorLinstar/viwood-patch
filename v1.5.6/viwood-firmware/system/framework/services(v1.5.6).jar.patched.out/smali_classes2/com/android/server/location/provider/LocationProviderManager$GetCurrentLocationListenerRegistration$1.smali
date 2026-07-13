.class public Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;Landroid/location/LocationResult;)V
    .locals 0

    .line 1390
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1413
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    :cond_0
    return-void
.end method

.method public operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .locals 2

    .line 1396
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v0, :cond_0

    .line 1397
    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_0

    .line 1399
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    :goto_0
    const/4 v1, 0x0

    .line 1403
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V

    .line 1404
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    .line 1405
    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->val$locationResult:Landroid/location/LocationResult;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->this$1:Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    .line 1404
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .locals 0

    .line 1390
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$GetCurrentLocationListenerRegistration$1;->operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
