.class public Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;
.super Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;
.source "GnssMeasurementsProvider.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;


# direct methods
.method public static synthetic $r8$lambda$HF7Nsddx5j39_8GGOZjJuqMFJoI(Landroid/location/IGnssMeasurementsListener;)V
    .locals 1

    const/4 v0, 0x1

    .line 71
    invoke-interface {p0, v0}, Landroid/location/IGnssMeasurementsListener;->onStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/gnss/GnssMeasurementsProvider;Landroid/location/GnssMeasurementRequest;Landroid/location/util/identity/CallerIdentity;Landroid/location/IGnssMeasurementsListener;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;-><init>(Lcom/android/server/location/gnss/GnssListenerMultiplexer;Ljava/lang/Object;Landroid/location/util/identity/CallerIdentity;Landroid/os/IInterface;)V

    return-void
.end method


# virtual methods
.method public onActive()V
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->startOpNoThrow(ILandroid/location/util/identity/CallerIdentity;)Z

    return-void
.end method

.method public onInactive()V
    .locals 2

    .line 90
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration;->this$0:Lcom/android/server/location/gnss/GnssMeasurementsProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider;->-$$Nest$fgetmAppOpsHelper(Lcom/android/server/location/gnss/GnssMeasurementsProvider;)Lcom/android/server/location/injector/AppOpsHelper;

    move-result-object v0

    const/16 v1, 0x2a

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/location/injector/AppOpsHelper;->finishOp(ILandroid/location/util/identity/CallerIdentity;)V

    return-void
.end method

.method public onRegister()V
    .locals 3

    .line 69
    invoke-super {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->onRegister()V

    .line 70
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getRequest()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/GnssMeasurementRequest;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/eventlog/LocationEventLog;->logGnssMeasurementClientRegistered(Landroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V

    .line 71
    new-instance v0, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/location/gnss/GnssMeasurementsProvider$GnssMeasurementListenerRegistration$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    return-void
.end method

.method public onUnregister()V
    .locals 2

    .line 77
    sget-object v0, Lcom/android/server/location/eventlog/LocationEventLog;->EVENT_LOG:Lcom/android/server/location/eventlog/LocationEventLog;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssListenerMultiplexer$GnssListenerRegistration;->getIdentity()Landroid/location/util/identity/CallerIdentity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/location/eventlog/LocationEventLog;->logGnssMeasurementClientUnregistered(Landroid/location/util/identity/CallerIdentity;)V

    .line 78
    invoke-super {p0}, Lcom/android/server/location/listeners/BinderListenerRegistration;->onUnregister()V

    return-void
.end method
