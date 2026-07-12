.class public Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;
.super Ljava/lang/Object;
.source "GeofenceManager.java"


# instance fields
.field public final mGeofence:Landroid/location/Geofence;

.field public final mPendingIntent:Landroid/app/PendingIntent;


# direct methods
.method public constructor <init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    .line 86
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 95
    instance-of v0, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 96
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    .line 97
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    iget-object v2, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/PendingIntent;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p0, p1}, Landroid/location/Geofence;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method

.method public getPendingIntent()Landroid/app/PendingIntent;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->mPendingIntent:Landroid/app/PendingIntent;

    invoke-virtual {p0}, Landroid/app/PendingIntent;->hashCode()I

    move-result p0

    return p0
.end method
