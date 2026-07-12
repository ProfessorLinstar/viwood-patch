.class public Lcom/android/server/location/geofence/GeofenceManager$1;
.super Ljava/lang/Object;
.source "GeofenceManager.java"

# interfaces
.implements Lcom/android/server/location/injector/LocationPermissionsHelper$LocationPermissionsListener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;)V
    .locals 0

    .line 301
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationPermissionsChanged(I)V
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(I)V

    return-void
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)V
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$1;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager;->onLocationPermissionsChanged(Ljava/lang/String;)V

    return-void
.end method
