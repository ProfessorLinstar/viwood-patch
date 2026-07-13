.class public final Lcom/android/server/timedetector/GnssTimeUpdateService;
.super Landroid/os/Binder;
.source "GnssTimeUpdateService.java"


# static fields
.field public static final D:Z

.field public static final GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;


# instance fields
.field public mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

.field public final mAlarmManager:Landroid/app/AlarmManager;

.field public final mContext:Landroid/content/Context;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mHandler:Landroid/os/Handler;

.field public volatile mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

.field public final mLocalLog:Landroid/util/LocalLog;

.field public mLocationListener:Landroid/location/LocationListener;

.field public final mLocationManager:Landroid/location/LocationManager;

.field public final mLocationManagerInternal:Landroid/location/LocationManagerInternal;

.field public final mLock:Ljava/lang/Object;

.field public final mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;


# direct methods
.method public static synthetic $r8$lambda$XecnK8MW6u--EMgleTYtRmL2pJQ(Lcom/android/server/timedetector/GnssTimeUpdateService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->handleAlarmFired()V

    return-void
.end method

.method public static synthetic $r8$lambda$cmXF1vg9wuwtSmQdYD7XxzAlzFU(Lcom/android/server/timedetector/GnssTimeUpdateService;Landroid/location/Location;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->lambda$startGnssListeningLocked$0(Landroid/location/Location;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 60
    const-string v0, "GnssTimeUpdateService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    const-wide/16 v0, 0x4

    .line 101
    invoke-static {v0, v1}, Ljava/time/Duration;->ofHours(J)Ljava/time/Duration;

    move-result-object v0

    sput-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/AlarmManager;Landroid/location/LocationManager;Landroid/location/LocationManagerInternal;Lcom/android/server/timedetector/TimeDetectorInternal;)V
    .locals 3

    .line 131
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 108
    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/util/LocalLog;-><init>(IZ)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    .line 110
    invoke-static {}, Lcom/android/server/FgThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    .line 112
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    .line 121
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    .line 132
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    .line 133
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    .line 134
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    .line 135
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p4, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    .line 136
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p5, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 275
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string p3, "GnssTimeUpdateService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 276
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "mLastSuggestedGnssTime: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 278
    :try_start_0
    const-string/jumbo p3, "state: "

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 279
    iget-object p3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-eqz p3, :cond_1

    .line 280
    const-string/jumbo p3, "time updates enabled"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 282
    :cond_1
    const-string p3, "alarm enabled"

    invoke-virtual {p2, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 285
    const-string p1, "Log:"

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 286
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p2}, Landroid/util/LocalLog;->dump(Ljava/io/PrintWriter;)V

    return-void

    .line 284
    :goto_1
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final handleAlarmFired()V
    .locals 2

    .line 249
    const-string v0, "handleAlarmFired()"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 252
    :try_start_0
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 253
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 254
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final handleLocationAvailable()V
    .locals 13

    .line 208
    const-string v0, "handleLocationAvailable()"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManagerInternal:Landroid/location/LocationManagerInternal;

    invoke-virtual {v0}, Landroid/location/LocationManagerInternal;->getGnssTimeMillis()Landroid/location/LocationTime;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 214
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Passive location time received: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 216
    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {v2, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->suggestGnssTime(Landroid/location/LocationTime;)V

    goto :goto_0

    .line 219
    :cond_0
    const-string v0, "getGnssTimeMillis() returned null"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 222
    :goto_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 223
    :try_start_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    if-nez v0, :cond_1

    .line 224
    const-string v0, "mLocationListener unexpectedly null"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logWarning(Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 226
    :cond_1
    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v2, v0}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    const/4 v0, 0x0

    .line 227
    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v0, :cond_2

    .line 231
    const-string v0, "mAlarmListener was unexpectedly non-null"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logWarning(Ljava/lang/String;)V

    .line 232
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    .line 236
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Lcom/android/server/timedetector/GnssTimeUpdateService;->GNSS_TIME_UPDATE_ALARM_INTERVAL:Ljava/time/Duration;

    .line 237
    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    add-long v8, v2, v4

    .line 238
    new-instance v11, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;

    invoke-direct {v11, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v11, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 239
    iget-object v6, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    const-string v10, "GnssTimeUpdateService"

    iget-object v12, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mHandler:Landroid/os/Handler;

    const/4 v7, 0x2

    invoke-virtual/range {v6 .. v12}, Landroid/app/AlarmManager;->set(IJLjava/lang/String;Landroid/app/AlarmManager$OnAlarmListener;Landroid/os/Handler;)V

    .line 245
    monitor-exit v1

    return-void

    :goto_2
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$startGnssListeningLocked$0(Landroid/location/Location;)V
    .locals 0

    .line 197
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->handleLocationAvailable()V

    return-void
.end method

.method public final logDebug(Ljava/lang/String;)V
    .locals 0

    .line 307
    sget-boolean p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->D:Z

    if-eqz p0, :cond_0

    .line 308
    const-string p0, "GnssTimeUpdateService"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final logError(Ljava/lang/String;)V
    .locals 1

    .line 297
    const-string v0, "GnssTimeUpdateService"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public final logWarning(Ljava/lang/String;)V
    .locals 1

    .line 302
    const-string v0, "GnssTimeUpdateService"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    invoke-virtual {p0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    .line 292
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateServiceShellCommand;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public startGnssListening()Z
    .locals 3

    .line 145
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.SET_TIME"

    const-string v2, "Start GNSS listening"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocalLog:Landroid/util/LocalLog;

    const-string/jumbo v1, "startGnssListening() called"

    invoke-virtual {v0, v1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    .line 149
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningInternal()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 154
    throw p0
.end method

.method public startGnssListeningInternal()Z
    .locals 4

    .line 168
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    const-string v1, "gps"

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->hasProvider(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    const-string v0, "GPS provider does not exist on this device"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logError(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 175
    const-string v1, "Already listening for GNSS updates"

    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 176
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 181
    :cond_1
    iget-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    if-eqz v1, :cond_2

    .line 182
    iget-object v3, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v3, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/AlarmManager$OnAlarmListener;)V

    const/4 v1, 0x0

    .line 183
    iput-object v1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mAlarmListener:Landroid/app/AlarmManager$OnAlarmListener;

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->startGnssListeningLocked()V

    .line 187
    monitor-exit v0

    return v2

    .line 188
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final startGnssListeningLocked()V
    .locals 4

    .line 193
    const-string/jumbo v0, "startGnssListeningLocked()"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 197
    new-instance v0, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/timedetector/GnssTimeUpdateService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/GnssTimeUpdateService;)V

    iput-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 198
    iget-object v0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationManager:Landroid/location/LocationManager;

    new-instance v1, Landroid/location/LocationRequest$Builder;

    const-wide v2, 0x7fffffffffffffffL

    invoke-direct {v1, v2, v3}, Landroid/location/LocationRequest$Builder;-><init>(J)V

    const-wide/16 v2, 0x0

    .line 201
    invoke-virtual {v1, v2, v3}, Landroid/location/LocationRequest$Builder;->setMinUpdateIntervalMillis(J)Landroid/location/LocationRequest$Builder;

    move-result-object v1

    .line 202
    invoke-virtual {v1}, Landroid/location/LocationRequest$Builder;->build()Landroid/location/LocationRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mExecutor:Ljava/util/concurrent/Executor;

    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLocationListener:Landroid/location/LocationListener;

    .line 198
    const-string v3, "gps"

    invoke-virtual {v0, v3, v1, v2, p0}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;Landroid/location/LocationRequest;Ljava/util/concurrent/Executor;Landroid/location/LocationListener;)V

    return-void
.end method

.method public final suggestGnssTime(Landroid/location/LocationTime;)V
    .locals 6

    .line 261
    const-string/jumbo v0, "suggestGnssTime()"

    invoke-virtual {p0, v0}, Lcom/android/server/timedetector/GnssTimeUpdateService;->logDebug(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p1}, Landroid/location/LocationTime;->getUnixEpochTimeMillis()J

    move-result-wide v0

    .line 264
    invoke-virtual {p1}, Landroid/location/LocationTime;->getElapsedRealtimeNanos()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    .line 266
    new-instance p1, Landroid/app/time/UnixEpochTime;

    invoke-direct {p1, v2, v3, v0, v1}, Landroid/app/time/UnixEpochTime;-><init>(JJ)V

    .line 267
    iput-object p1, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mLastSuggestedGnssTime:Landroid/app/time/UnixEpochTime;

    .line 269
    new-instance v0, Lcom/android/server/timedetector/GnssTimeSuggestion;

    invoke-direct {v0, p1}, Lcom/android/server/timedetector/GnssTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;)V

    .line 270
    iget-object p0, p0, Lcom/android/server/timedetector/GnssTimeUpdateService;->mTimeDetectorInternal:Lcom/android/server/timedetector/TimeDetectorInternal;

    invoke-interface {p0, v0}, Lcom/android/server/timedetector/TimeDetectorInternal;->suggestGnssTime(Lcom/android/server/timedetector/GnssTimeSuggestion;)V

    return-void
.end method
