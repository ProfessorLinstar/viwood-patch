.class public Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;
.super Ljava/lang/Object;
.source "GnssGeofenceProxy.java"


# instance fields
.field public geofenceId:I

.field public lastTransition:I

.field public latitude:D

.field public longitude:D

.field public monitorTransitions:I

.field public notificationResponsiveness:I

.field public paused:Z

.field public radius:D

.field public unknownTimer:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssGeofenceProxy-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;-><init>()V

    return-void
.end method
