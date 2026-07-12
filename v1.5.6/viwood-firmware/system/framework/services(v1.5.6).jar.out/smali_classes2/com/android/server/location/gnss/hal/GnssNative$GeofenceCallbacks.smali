.class public interface abstract Lcom/android/server/location/gnss/hal/GnssNative$GeofenceCallbacks;
.super Ljava/lang/Object;
.source "GnssNative.java"


# virtual methods
.method public abstract onReportGeofenceAddStatus(II)V
.end method

.method public abstract onReportGeofencePauseStatus(II)V
.end method

.method public abstract onReportGeofenceRemoveStatus(II)V
.end method

.method public abstract onReportGeofenceResumeStatus(II)V
.end method

.method public abstract onReportGeofenceStatus(ILandroid/location/Location;)V
.end method

.method public abstract onReportGeofenceTransition(ILandroid/location/Location;IJ)V
.end method
