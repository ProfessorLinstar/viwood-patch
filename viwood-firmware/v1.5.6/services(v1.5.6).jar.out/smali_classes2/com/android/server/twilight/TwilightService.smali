.class public final Lcom/android/server/twilight/TwilightService;
.super Lcom/android/server/SystemService;
.source "TwilightService.java"

# interfaces
.implements Landroid/app/AlarmManager$OnAlarmListener;
.implements Landroid/os/Handler$Callback;
.implements Landroid/location/LocationListener;


# instance fields
.field public mAlarmManager:Landroid/app/AlarmManager;

.field public mBootCompleted:Z

.field public final mHandler:Landroid/os/Handler;

.field public mHasListeners:Z

.field public mLastLocation:Landroid/location/Location;

.field public mLastTwilightState:Lcom/android/server/twilight/TwilightState;

.field public final mListeners:Landroid/util/ArrayMap;

.field public mLocationManager:Landroid/location/LocationManager;

.field public mTimeChangedReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public static synthetic $r8$lambda$LGxa95zghnRqvHglJe8_uupAa40(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V
    .locals 0

    .line 229
    invoke-interface {p0, p1}, Lcom/android/server/twilight/TwilightListener;->onTwilightStateChanged(Lcom/android/server/twilight/TwilightState;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/twilight/TwilightService;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmListeners(Lcom/android/server/twilight/TwilightService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mupdateTwilightState(Lcom/android/server/twilight/TwilightService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    const-string v0, "TwilightService"

    invoke-virtual {p1, v0}, Landroid/content/Context;->createAttributionContext(Ljava/lang/String;)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    .line 79
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public static calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;
    .locals 9

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 284
    :cond_0
    new-instance v0, Lcom/ibm/icu/impl/CalendarAstronomer;

    .line 285
    invoke-virtual {p0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {p0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/ibm/icu/impl/CalendarAstronomer;-><init>(DD)V

    .line 287
    invoke-static {}, Landroid/icu/util/Calendar;->getInstance()Landroid/icu/util/Calendar;

    move-result-object p0

    .line 288
    invoke-virtual {p0, p1, p2}, Landroid/icu/util/Calendar;->setTimeInMillis(J)V

    const/16 v1, 0xb

    const/16 v2, 0xc

    .line 289
    invoke-virtual {p0, v1, v2}, Landroid/icu/util/Calendar;->set(II)V

    const/4 v1, 0x0

    .line 290
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xd

    .line 291
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    const/16 v2, 0xe

    .line 292
    invoke-virtual {p0, v2, v1}, Landroid/icu/util/Calendar;->set(II)V

    .line 293
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    const/4 v2, 0x1

    .line 295
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    .line 296
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    cmp-long v7, v5, p1

    const/4 v8, 0x5

    if-gez v7, :cond_1

    .line 299
    invoke-virtual {p0, v8, v2}, Landroid/icu/util/Calendar;->add(II)V

    .line 300
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 301
    invoke-virtual {v0, v2}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v3

    goto :goto_0

    :cond_1
    cmp-long p1, v3, p1

    if-lez p1, :cond_2

    const/4 p1, -0x1

    .line 303
    invoke-virtual {p0, v8, p1}, Landroid/icu/util/Calendar;->add(II)V

    .line 304
    invoke-virtual {p0}, Landroid/icu/util/Calendar;->getTimeInMillis()J

    move-result-wide p0

    invoke-virtual {v0, p0, p1}, Lcom/ibm/icu/impl/CalendarAstronomer;->setTime(J)V

    .line 305
    invoke-virtual {v0, v1}, Lcom/ibm/icu/impl/CalendarAstronomer;->getSunRiseSet(Z)J

    move-result-wide v5

    .line 308
    :cond_2
    :goto_0
    new-instance p0, Lcom/android/server/twilight/TwilightState;

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/android/server/twilight/TwilightState;-><init>(JJ)V

    return-object p0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 135
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq p1, v1, :cond_0

    return v2

    .line 145
    :cond_0
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_1

    .line 146
    iput-boolean v2, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 147
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_1

    .line 148
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->stopListening()V

    :cond_1
    return v0

    .line 137
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-nez p1, :cond_3

    .line 138
    iput-boolean v0, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    .line 139
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    if-eqz p1, :cond_3

    .line 140
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_3
    return v0
.end method

.method public onAlarm()V
    .locals 2

    .line 244
    const-string v0, "TwilightService"

    const-string/jumbo v1, "onAlarm"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 245
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 122
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 123
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 124
    const-string v0, "location"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/location/LocationManager;

    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const/4 p1, 0x1

    .line 126
    iput-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mBootCompleted:Z

    .line 127
    iget-boolean p1, p0, Lcom/android/server/twilight/TwilightService;->mHasListeners:Z

    if-eqz p1, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->startListening()V

    :cond_0
    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onLocationChanged: provider="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " accuracy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 254
    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 251
    const-string v1, "TwilightService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    iput-object p1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    .line 256
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    :cond_0
    return-void
.end method

.method public onProviderDisabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onProviderEnabled(Ljava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 84
    new-instance v0, Lcom/android/server/twilight/TwilightService$1;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$1;-><init>(Lcom/android/server/twilight/TwilightService;)V

    const-class v1, Lcom/android/server/twilight/TwilightManager;

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onStatusChanged(Ljava/lang/String;ILandroid/os/Bundle;)V
    .locals 0

    .line 0
    return-void
.end method

.method public final startListening()V
    .locals 5

    .line 157
    const-string v0, "TwilightService"

    const-string/jumbo v1, "startListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 161
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    .line 160
    invoke-virtual {v0, v2, p0, v1}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 164
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v0

    if-nez v0, :cond_1

    .line 165
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string/jumbo v1, "network"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 167
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 166
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 170
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    .line 171
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v3

    new-instance v4, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/twilight/TwilightService;)V

    .line 170
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/location/LocationManager;->getCurrentLocation(Ljava/lang/String;Landroid/os/CancellationSignal;Ljava/util/concurrent/Executor;Ljava/util/function/Consumer;)V

    .line 177
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_2

    .line 178
    new-instance v0, Lcom/android/server/twilight/TwilightService$2;

    invoke-direct {v0, p0}, Lcom/android/server/twilight/TwilightService$2;-><init>(Lcom/android/server/twilight/TwilightService;)V

    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 186
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.TIME_SET"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 187
    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 188
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 192
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/twilight/TwilightService;->updateTwilightState()V

    return-void
.end method

.method public final stopListening()V
    .locals 3

    .line 196
    const-string v0, "TwilightService"

    const-string/jumbo v1, "stopListening"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 199
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 200
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mTimeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    if-eqz v0, :cond_1

    .line 204
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v0, p0}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 207
    :cond_1
    iget-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v0, p0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    .line 208
    iput-object v1, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    return-void
.end method

.method public final updateTwilightState()V
    .locals 9

    .line 213
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 214
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastLocation:Landroid/location/Location;

    if-eqz v2, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2}, Landroid/location/LocationManager;->getLastLocation()Landroid/location/Location;

    move-result-object v2

    .line 216
    :goto_0
    invoke-static {v2, v0, v1}, Lcom/android/server/twilight/TwilightService;->calculateTwilightState(Landroid/location/Location;J)Lcom/android/server/twilight/TwilightState;

    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    invoke-static {v2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 224
    iput-object v0, p0, Lcom/android/server/twilight/TwilightService;->mLastTwilightState:Lcom/android/server/twilight/TwilightState;

    .line 226
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_1

    .line 227
    iget-object v3, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/twilight/TwilightListener;

    .line 228
    iget-object v4, p0, Lcom/android/server/twilight/TwilightService;->mListeners:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Handler;

    .line 229
    new-instance v5, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;

    invoke-direct {v5, v3, v0}, Lcom/android/server/twilight/TwilightService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/twilight/TwilightListener;Lcom/android/server/twilight/TwilightState;)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_4

    .line 232
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    .line 236
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->isNight()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 237
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunriseTimeMillis()J

    move-result-wide v0

    :goto_2
    move-wide v4, v0

    goto :goto_3

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->sunsetTimeMillis()J

    move-result-wide v0

    goto :goto_2

    .line 238
    :goto_3
    iget-object v2, p0, Lcom/android/server/twilight/TwilightService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v6, "TwilightService"

    iget-object v8, p0, Lcom/android/server/twilight/TwilightService;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    move-object v7, p0

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setExact(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    :cond_3
    return-void

    .line 232
    :goto_4
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method
