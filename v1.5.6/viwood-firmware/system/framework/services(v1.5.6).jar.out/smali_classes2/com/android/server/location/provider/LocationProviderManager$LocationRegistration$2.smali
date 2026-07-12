.class public Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;
.super Ljava/lang/Object;
.source "LocationProviderManager.java"

# interfaces
.implements Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;


# instance fields
.field public final synthetic this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

.field public final synthetic val$locationResult:Landroid/location/LocationResult;

.field public final synthetic val$useWakeLock:Z


# direct methods
.method public constructor <init>(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;Landroid/location/LocationResult;Z)V
    .locals 0

    .line 1028
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iput-object p2, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    iput-boolean p3, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPostExecute(Z)V
    .locals 1

    if-nez p1, :cond_0

    .line 1059
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v0, :cond_0

    .line 1060
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    if-eqz p1, :cond_2

    .line 1066
    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-static {p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fputmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;I)V

    iget-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {p1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getRequest()Landroid/location/LocationRequest;

    move-result-object p1

    invoke-virtual {p1}, Landroid/location/LocationRequest;->getMaxUpdates()I

    move-result p1

    if-lt v0, p1, :cond_2

    .line 1068
    sget-boolean p1, Lcom/android/server/location/LocationManagerService;->D:Z

    if-eqz p1, :cond_1

    .line 1069
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " provider registration "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " finished after "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-static {v0}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->-$$Nest$fgetmNumLocationsDelivered(Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;)I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " updates"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LocationManagerService"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1073
    :cond_1
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    :cond_2
    return-void
.end method

.method public onPreExecute()V
    .locals 2

    .line 1033
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v1}, Landroid/location/LocationResult;->getLastLocation()Landroid/location/Location;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->setLastDeliveredLocation(Landroid/location/Location;)V

    .line 1035
    iget-boolean v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v0, :cond_0

    .line 1036
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x7530

    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_0
    return-void
.end method

.method public operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V
    .locals 2

    .line 1045
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    invoke-virtual {v0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 1046
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v0}, Landroid/location/LocationResult;->deepCopy()Landroid/location/LocationResult;

    move-result-object v0

    goto :goto_0

    .line 1048
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    .line 1052
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$useWakeLock:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v1, v1, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->mWakeLockReleaser:Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 1051
    :goto_1
    invoke-interface {p1, v0, v1}, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;->deliverOnLocationChanged(Landroid/location/LocationResult;Landroid/os/IRemoteCallback;)V

    .line 1053
    sget-object p1, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    iget-object v0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;->this$0:Lcom/android/server/location/provider/LocationProviderManager;

    iget-object v0, v0, Lcom/android/server/location/provider/LocationProviderManager;->mName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->val$locationResult:Landroid/location/LocationResult;

    invoke-virtual {v1}, Landroid/location/LocationResult;->size()I

    move-result v1

    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->this$1:Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration;

    .line 1054
    invoke-virtual {p0}, Lcom/android/server/location/provider/LocationProviderManager$Registration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    .line 1053
    invoke-virtual {p1, v0, v1, p0}, Lcom/android/server/location/eventlog/LocationEventLog;->logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method public bridge synthetic operate(Ljava/lang/Object;)V
    .locals 0

    .line 1028
    check-cast p1, Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;

    invoke-virtual {p0, p1}, Lcom/android/server/location/provider/LocationProviderManager$LocationRegistration$2;->operate(Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;)V

    return-void
.end method
