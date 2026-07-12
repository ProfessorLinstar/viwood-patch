.class public final Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;
.super Lcom/android/server/location/eventlog/LocalEventLog;
.source "LocationEventLog.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 629
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/eventlog/LocalEventLog;-><init>(ILjava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final addLog(Ljava/lang/Object;)V
    .locals 2

    .line 647
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/location/eventlog/LocalEventLog;->addLog(JLjava/lang/Object;)V

    return-void
.end method

.method public logDeliveredGnssMeasurements(ILandroid/location/util/identity/CallerIdentity;)V
    .locals 1

    .line 638
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;-><init>(ILandroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderDeliveredLocations(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V
    .locals 1

    .line 643
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderDeliverLocationEvent;-><init>(Ljava/lang/String;ILandroid/location/util/identity/CallerIdentity;)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method

.method public logProviderReceivedLocations(Ljava/lang/String;I)V
    .locals 1

    .line 633
    new-instance v0, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;

    invoke-direct {v0, p1, p2}, Lcom/android/server/location/eventlog/LocationEventLog$ProviderReceiveLocationEvent;-><init>(Ljava/lang/String;I)V

    invoke-virtual {p0, v0}, Lcom/android/server/location/eventlog/LocationEventLog$LocationsEventLog;->addLog(Ljava/lang/Object;)V

    return-void
.end method
