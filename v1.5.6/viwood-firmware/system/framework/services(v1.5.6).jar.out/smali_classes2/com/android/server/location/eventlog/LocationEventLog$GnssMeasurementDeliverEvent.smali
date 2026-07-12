.class public final Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;
.super Ljava/lang/Object;
.source "LocationEventLog.java"


# instance fields
.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public final mNumGnssMeasurements:I


# direct methods
.method public constructor <init>(ILandroid/location/util/identity/CallerIdentity;)V
    .locals 0

    .line 614
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 615
    iput p1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mNumGnssMeasurements:I

    .line 616
    iput-object p2, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 621
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gnss measurements delivered GnssMeasurements["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mNumGnssMeasurements:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/eventlog/LocationEventLog$GnssMeasurementDeliverEvent;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
