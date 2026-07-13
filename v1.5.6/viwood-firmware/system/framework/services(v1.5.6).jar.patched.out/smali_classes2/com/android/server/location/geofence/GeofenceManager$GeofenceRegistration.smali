.class public Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;
.super Lcom/android/server/location/listeners/PendingIntentListenerRegistration;
.source "GeofenceManager.java"


# instance fields
.field public mCachedLocation:Landroid/location/Location;

.field public mCachedLocationDistanceM:F

.field public final mCenter:Landroid/location/Location;

.field public final mGeofence:Landroid/location/Geofence;

.field public mGeofenceState:I

.field public final mIdentity:Landroid/location/util/identity/CallerIdentity;

.field public mPermitted:Z

.field public final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field public final synthetic this$0:Lcom/android/server/location/geofence/GeofenceManager;


# direct methods
.method public static synthetic $r8$lambda$7mMBbn2ecRaa6NpdKG_IbZdRjss(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 0
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$sendIntent$2(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public static synthetic $r8$lambda$I1d1HHgL1PvVk1ytwCQk8H5rNVg(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$0(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public static synthetic $r8$lambda$rO9HD1t_XfQ0Ykyc99zfRGtgOZs(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;Landroid/app/PendingIntent;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->lambda$onLocationChanged$1(Landroid/app/PendingIntent;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/location/geofence/GeofenceManager;Landroid/location/Geofence;Landroid/location/util/identity/CallerIdentity;Landroid/app/PendingIntent;)V
    .locals 2

    .line 132
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    .line 133
    invoke-direct {p0, p4}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;-><init>(Ljava/lang/Object;)V

    .line 135
    iput-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    .line 136
    iput-object p3, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    .line 137
    new-instance p4, Landroid/location/Location;

    const-string v0, ""

    invoke-direct {p4, v0}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    .line 138
    invoke-virtual {p2}, Landroid/location/Geofence;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLatitude(D)V

    .line 139
    invoke-virtual {p2}, Landroid/location/Geofence;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p4, v0, v1}, Landroid/location/Location;->setLongitude(D)V

    .line 141
    iget-object p1, p1, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/PowerManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "GeofenceManager:"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    invoke-virtual {p3}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p4, 0x1

    .line 142
    invoke-virtual {p1, p4, p2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 144
    invoke-virtual {p1, p4}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    const/4 p0, 0x0

    .line 145
    invoke-virtual {p3, p0}, Landroid/location/util/identity/CallerIdentity;->addToWorkSource(Landroid/os/WorkSource;)Landroid/os/WorkSource;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    return-void
.end method

.method private onLocationPermissionsChanged()Z
    .locals 3

    .line 209
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    .line 211
    iget-boolean v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-eq v0, v1, :cond_0

    .line 212
    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public getDistanceToBoundary(Landroid/location/Location;)D
    .locals 1

    .line 220
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    invoke-virtual {p1, v0}, Landroid/location/Location;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 222
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result p1

    iput p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 225
    :cond_0
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {p1}, Landroid/location/Geofence;->getRadius()F

    move-result p1

    iget p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    sub-float/2addr p1, p0

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p0

    float-to-double p0, p0

    return-wide p0
.end method

.method public getGeofence()Landroid/location/Geofence;
    .locals 0

    .line 149
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    return-object p0
.end method

.method public getIdentity()Landroid/location/util/identity/CallerIdentity;
    .locals 0

    .line 153
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    return-object p0
.end method

.method public getOwner()Lcom/android/server/location/geofence/GeofenceManager;
    .locals 0

    .line 168
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    return-object p0
.end method

.method public bridge synthetic getOwner()Lcom/android/server/location/listeners/ListenerMultiplexer;
    .locals 0

    .line 110
    invoke-virtual {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getOwner()Lcom/android/server/location/geofence/GeofenceManager;

    move-result-object p0

    return-object p0
.end method

.method public getPendingIntentFromKey(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;)Landroid/app/PendingIntent;
    .locals 0

    .line 163
    invoke-virtual {p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;->getPendingIntent()Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getPendingIntentFromKey(Ljava/lang/Object;)Landroid/app/PendingIntent;
    .locals 0

    .line 110
    check-cast p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    invoke-virtual {p0, p1}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->getPendingIntentFromKey(Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public getTag()Ljava/lang/String;
    .locals 0

    .line 158
    const-string p0, "GeofenceManager"

    return-object p0
.end method

.method public isPermitted()Z
    .locals 0

    .line 189
    iget-boolean p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return p0
.end method

.method public final synthetic lambda$onLocationChanged$0(Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x1

    .line 243
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public final synthetic lambda$onLocationChanged$1(Landroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    .line 249
    invoke-virtual {p0, p1, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->sendIntent(Landroid/app/PendingIntent;Z)V

    return-void
.end method

.method public final synthetic lambda$sendIntent$2(Landroid/app/PendingIntent;Landroid/content/Intent;ILjava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 263
    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void
.end method

.method public onActive()V
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    invoke-virtual {v0}, Lcom/android/server/location/geofence/GeofenceManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/location/listeners/ListenerRegistration;->executeOperation(Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;)V

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)Lcom/android/internal/listeners/ListenerExecutor$ListenerOperation;
    .locals 3

    .line 230
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v0}, Landroid/location/Geofence;->isExpired()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 231
    invoke-virtual {p0}, Lcom/android/server/location/listeners/RemovableListenerRegistration;->remove()V

    return-object v1

    .line 235
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocation:Landroid/location/Location;

    .line 236
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCenter:Landroid/location/Location;

    invoke-virtual {v0, p1}, Landroid/location/Location;->distanceTo(Landroid/location/Location;)F

    move-result v0

    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    .line 238
    iget v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 239
    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v2}, Landroid/location/Geofence;->getRadius()F

    move-result v2

    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result p1

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 240
    iget v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mCachedLocationDistanceM:F

    cmpg-float p1, v2, p1

    const/4 v2, 0x1

    if-gtz p1, :cond_1

    .line 241
    iput v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-eq v0, v2, :cond_2

    .line 243
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object p1

    :cond_1
    const/4 p1, 0x2

    .line 246
    iput p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    if-ne v0, v2, :cond_2

    .line 249
    new-instance p1, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    return-object p1

    :cond_2
    return-object v1
.end method

.method public onLocationPermissionsChanged(I)Z
    .locals 1

    .line 201
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getUid()I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onLocationPermissionsChanged(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0}, Landroid/location/util/identity/CallerIdentity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 194
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->onLocationPermissionsChanged()Z

    move-result p0

    return p0
.end method

.method public onRegister()V
    .locals 3

    .line 173
    invoke-super {p0}, Lcom/android/server/location/listeners/PendingIntentListenerRegistration;->onRegister()V

    const/4 v0, 0x0

    .line 175
    iput v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofenceState:I

    .line 176
    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v0, v0, Lcom/android/server/location/geofence/GeofenceManager;->mLocationPermissionsHelper:Lcom/android/server/location/injector/LocationPermissionsHelper;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/location/injector/LocationPermissionsHelper;->hasLocationPermissions(ILandroid/location/util/identity/CallerIdentity;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    return-void
.end method

.method public final sendIntent(Landroid/app/PendingIntent;Z)V
    .locals 10

    .line 257
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "entering"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v5

    .line 259
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const-wide/16 v0, 0x7530

    invoke-virtual {p2, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 263
    :try_start_0
    iget-object p2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    iget-object v3, p2, Lcom/android/server/location/geofence/GeofenceManager;->mContext:Landroid/content/Context;

    new-instance v6, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;)V

    const/4 p2, 0x0

    .line 264
    invoke-static {p2}, Lcom/android/server/PendingIntentUtils;->createDontSendToRestrictedAppsBundle(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v9
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    .line 263
    :try_start_1
    invoke-virtual/range {v2 .. v9}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_0
    move-object v2, p1

    .line 266
    :catch_1
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 267
    iget-object p1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->this$0:Lcom/android/server/location/geofence/GeofenceManager;

    new-instance p2, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;

    iget-object v0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-direct {p2, v2, v0}, Lcom/android/server/location/geofence/GeofenceManager$GeofenceKey;-><init>(Landroid/app/PendingIntent;Landroid/location/Geofence;)V

    invoke-static {p1, p2, p0}, Lcom/android/server/location/geofence/GeofenceManager;->access$000(Lcom/android/server/location/geofence/GeofenceManager;Ljava/lang/Object;Lcom/android/server/location/listeners/ListenerRegistration;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 273
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mIdentity:Landroid/location/util/identity/CallerIdentity;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 276
    new-instance v1, Landroid/util/ArraySet;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 277
    iget-boolean v2, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mPermitted:Z

    if-nez v2, :cond_0

    .line 278
    const-string/jumbo v2, "na"

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 280
    :cond_0
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const-string v3, " "

    if-nez v2, :cond_1

    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 284
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/location/geofence/GeofenceManager$GeofenceRegistration;->mGeofence:Landroid/location/Geofence;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 285
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
