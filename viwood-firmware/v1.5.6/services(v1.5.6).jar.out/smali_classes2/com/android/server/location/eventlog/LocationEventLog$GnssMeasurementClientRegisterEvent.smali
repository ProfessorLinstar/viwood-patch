.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public final mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mRegistered:Z


# direct methods
.method public constructor <init>(ZLandroid/location/util/identity/CallerIdentity;Landroid/location/GnssMeasurementRequest;)V
    .locals 0

    .line 590
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 591
    iput-boolean p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    .line 592
    iput-object p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 593
    iput-object p3, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 598
    iget-boolean v0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 599
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gnss measurements +registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mGnssMeasurementRequest:Landroid/location/GnssMeasurementRequest;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 602
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gnss measurements -registration "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementClientRegisterEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
