.class Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public mInstance:Landroid/hardware/thermal/IThermal;

.field public final mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;


# direct methods
.method public static synthetic $r8$lambda$eU14JIDh7_eSiFFdcxpGZaa7E5A(ILandroid/hardware/thermal/TemperatureThreshold;)Z
    .locals 0

    .line 1288
    iget p1, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .locals 1

    .line 1194
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1149
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1159
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    .line 1195
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public declared-synchronized binderDied()V
    .locals 2

    monitor-enter p0

    .line 1390
    :try_start_0
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Thermal AIDL HAL died, reconnecting..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1391
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1392
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public connectToHal()Z
    .locals 2

    .line 1322
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1323
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    invoke-virtual {p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    .line 1324
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z
    .locals 2

    .line 1329
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x1

    if-eq p1, v0, :cond_0

    return v1

    .line 1333
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/thermal/IThermal;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 1335
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1336
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1380
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1381
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL AIDL 3  connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1383
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p0, :cond_0

    .line 1384
    const-string/jumbo p0, "yes"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const-string/jumbo p0, "no"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1382
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forecastSkinTemperature(I)F
    .locals 4

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    const/high16 v1, 0x7fc00000    # Float.NaN

    if-nez v0, :cond_0

    return v1

    .line 1310
    :cond_0
    :try_start_0
    invoke-interface {v0, p1}, Landroid/hardware/thermal/IThermal;->forecastSkinTemperature(I)F

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 1312
    sget-object v2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v3, "Couldn\'t forecastSkinTemperature, reconnecting..."

    invoke-static {v2, v3, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1313
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1314
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1315
    monitor-exit p1

    return v1

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .locals 10

    .line 1238
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1239
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_1

    .line 1245
    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getCoolingDevicesWithType(I)[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 1246
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getCoolingDevices()[Landroid/hardware/thermal/CoolingDevice;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    goto :goto_5

    .line 1250
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_5

    aget-object v5, v2, v4

    .line 1251
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-static {v6}, Landroid/os/CoolingDevice;->isValidType(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1252
    sget-object v6, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid cooling device type "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " from AIDL HAL"

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 1255
    iget v6, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    if-eq v6, p2, :cond_4

    goto :goto_2

    .line 1258
    :cond_4
    new-instance v6, Landroid/os/CoolingDevice;

    iget-wide v7, v5, Landroid/hardware/thermal/CoolingDevice;->value:J

    iget v9, v5, Landroid/hardware/thermal/CoolingDevice;->type:I

    iget-object v5, v5, Landroid/hardware/thermal/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v6, v7, v8, v9, v5}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1263
    :goto_3
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1264
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1265
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1266
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1261
    :goto_4
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return-object v1
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .locals 11

    .line 1201
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1202
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto/16 :goto_5

    :cond_0
    if-eqz p1, :cond_1

    .line 1208
    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperaturesWithType(I)[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_4

    .line 1209
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatures()[Landroid/hardware/thermal/Temperature;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    goto :goto_5

    .line 1213
    :cond_2
    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_1
    if-ge v5, v3, :cond_5

    aget-object v6, v2, v5

    .line 1214
    iget v7, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-static {v7}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1215
    sget-object v7, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid temperature status "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " received from AIDL HAL"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1217
    iput v4, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    :cond_3
    if-eqz p1, :cond_4

    .line 1219
    iget v7, v6, Landroid/hardware/thermal/Temperature;->type:I

    if-eq v7, p2, :cond_4

    goto :goto_2

    .line 1222
    :cond_4
    new-instance v7, Landroid/os/Temperature;

    iget v8, v6, Landroid/hardware/thermal/Temperature;->value:F

    iget v9, v6, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v10, v6, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget v6, v6, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v7, v8, v9, v10, v6}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1227
    :goto_3
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting"

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1228
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1229
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1230
    monitor-exit p1

    goto :goto_5

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1225
    :goto_4
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getCurrentCoolingDevices due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_5
    :goto_5
    return-object v1
.end method

.method public final getHalInstance()Landroid/hardware/thermal/IThermal;
    .locals 1

    .line 1153
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1154
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 1155
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .locals 3

    .line 1275
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->getHalInstance()Landroid/hardware/thermal/IThermal;

    move-result-object v0

    .line 1276
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-nez v0, :cond_0

    goto :goto_3

    :cond_0
    if-eqz p1, :cond_1

    .line 1282
    :try_start_0
    invoke-interface {v0, p2}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholdsWithType(I)[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    goto :goto_0

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p0

    goto :goto_2

    .line 1283
    :cond_1
    invoke-interface {v0}, Landroid/hardware/thermal/IThermal;->getTemperatureThresholds()[Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_2

    goto :goto_3

    :cond_2
    if-eqz p1, :cond_3

    .line 1288
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    new-instance v2, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;

    invoke-direct {v2, p2}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-interface {p1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    .line 1289
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    .line 1288
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    return-object p1

    .line 1291
    :cond_3
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 1295
    :goto_1
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1296
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1297
    :try_start_1
    invoke-virtual {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHalIfNeededLocked(Landroid/hardware/thermal/IThermal;)Z

    .line 1298
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1293
    :goto_2
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getTemperatureThresholds due to invalid status"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-object v1
.end method

.method public initProxyAndRegisterCallback(Landroid/os/IBinder;)V
    .locals 1

    .line 1341
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1342
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V

    .line 1343
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public initProxyAndRegisterCallbackLocked(Landroid/os/IBinder;)V
    .locals 3

    .line 1348
    const-string v0, "Unable to connect IThermal AIDL instance"

    if-eqz p1, :cond_0

    .line 1349
    invoke-static {p1}, Landroid/hardware/thermal/IThermal$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/thermal/IThermal;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    const/4 v1, 0x0

    .line 1351
    :try_start_0
    invoke-interface {p1, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1353
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1354
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    .line 1356
    :goto_0
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    if-eqz p1, :cond_0

    .line 1358
    :try_start_1
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Thermal HAL AIDL service connected with version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    .line 1359
    invoke-interface {v2}, Landroid/hardware/thermal/IThermal;->getInterfaceVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1358
    invoke-static {p1, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_3

    .line 1366
    :try_start_2
    iget-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mInstance:Landroid/hardware/thermal/IThermal;

    iget-object v1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->mThermalCallbackAidl:Landroid/hardware/thermal/IThermalChangedCallback;

    invoke-interface {p1, v1}, Landroid/hardware/thermal/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/IThermalChangedCallback;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 1371
    sget-object v1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1372
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    goto :goto_1

    :catch_2
    move-exception p0

    .line 1368
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v0, "Couldn\'t registerThermalChangedCallback due to invalid status"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_3
    move-exception p1

    .line 1361
    sget-object v0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v1, "Unable to read interface version from Thermal HAL"

    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1362
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;->connectToHal()Z

    :cond_0
    :goto_1
    return-void
.end method
