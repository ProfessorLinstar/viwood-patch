.class public Lcom/android/server/location/gnss/GnssGeofenceProxy;
.super Landroid/location/IGpsGeofenceHardware$Stub;
.source "GnssGeofenceProxy.java"

# interfaces
.implements Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;


# instance fields
.field public final mGeofenceEntries:Landroid/util/SparseArray;

.field public final mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

.field public final mLock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/hal/GnssNative;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Landroid/location/IGpsGeofenceHardware$Stub;-><init>()V

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    .line 51
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 53
    invoke-virtual {p1, p0}, Lcom/android/server/location/gnss/hal/GnssNative;->addBaseCallbacks(Lcom/android/server/location/gnss/hal/GnssNative$BaseCallbacks;)V

    return-void
.end method


# virtual methods
.method public addCircularHardwareGeofence(IDDDIIII)Z
    .locals 14

    .line 67
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    move v3, p1

    move-wide/from16 v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move/from16 v10, p8

    move/from16 v11, p9

    move/from16 v12, p10

    move/from16 v13, p11

    invoke-virtual/range {v2 .. v13}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    new-instance v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;-><init>(Lcom/android/server/location/gnss/GnssGeofenceProxy-IA;)V

    .line 73
    iput p1, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    move-wide/from16 v4, p2

    .line 74
    iput-wide v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    move-wide/from16 v6, p4

    .line 75
    iput-wide v6, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    move-wide/from16 v8, p6

    .line 76
    iput-wide v8, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    move/from16 v10, p8

    .line 77
    iput v10, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    move/from16 v11, p9

    .line 78
    iput v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    move/from16 v12, p10

    .line 79
    iput v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    move/from16 v13, p11

    .line 80
    iput v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    .line 81
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    .line 83
    :cond_0
    :goto_0
    monitor-exit v1

    return v0

    .line 84
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public isHardwareGeofenceSupported()Z
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 59
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {p0}, Lcom/android/server/location/gnss/hal/GnssNative;->isGeofencingSupported()Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 60
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onHalRestarted()V
    .locals 15

    .line 129
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v0, 0x0

    .line 130
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    .line 132
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v4, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    iget-wide v5, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->latitude:D

    iget-wide v7, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->longitude:D

    iget-wide v9, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->radius:D

    iget v11, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->lastTransition:I

    iget v12, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    iget v13, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->notificationResponsiveness:I

    iget v14, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->unknownTimer:I

    invoke-virtual/range {v3 .. v14}, Lcom/android/server/location/gnss/hal/GnssNative;->addGeofence(IDDDIIII)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 137
    iget-boolean v3, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    if-eqz v3, :cond_0

    .line 138
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    iget v2, v2, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->geofenceId:I

    invoke-virtual {v3, v2}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 141
    :cond_1
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public pauseHardwareGeofence(I)Z
    .locals 2

    .line 100
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 101
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->pauseGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 103
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 105
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 108
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 109
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeHardwareGeofence(I)Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 90
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1}, Lcom/android/server/location/gnss/hal/GnssNative;->removeGeofence(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 92
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 94
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 95
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resumeHardwareGeofence(II)Z
    .locals 2

    .line 114
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 115
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/location/gnss/hal/GnssNative;->resumeGeofence(II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 117
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy;->mGeofenceEntries:Landroid/util/SparseArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->paused:Z

    .line 120
    iput p2, p0, Lcom/android/server/location/gnss/GnssGeofenceProxy$GeofenceEntry;->monitorTransitions:I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 123
    :cond_0
    :goto_0
    monitor-exit v0

    return v1

    .line 124
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
