.class public Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;
.super Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;
.source "ThermalManagerService.java"


# instance fields
.field public final mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

.field public mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;


# direct methods
.method public static synthetic $r8$lambda$0QWkWTHrZlAvk1Mz2p8CAztAYhk(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 7

    .line 1702
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_2

    .line 1704
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_1

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    check-cast v2, Landroid/hardware/thermal/V2_0/Temperature;

    .line 1705
    iget v3, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-static {v3}, Landroid/os/Temperature;->isValidStatus(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1707
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Invalid status data from HAL"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1708
    iput v0, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    .line 1711
    :cond_0
    new-instance v3, Landroid/os/Temperature;

    iget v4, v2, Landroid/hardware/thermal/V2_0/Temperature;->value:F

    iget v5, v2, Landroid/hardware/thermal/V2_0/Temperature;->type:I

    iget-object v6, v2, Landroid/hardware/thermal/V2_0/Temperature;->name:Ljava/lang/String;

    iget v2, v2, Landroid/hardware/thermal/V2_0/Temperature;->throttlingStatus:I

    invoke-direct {v3, v4, v5, v6, v2}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    invoke-interface {p0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-void

    .line 1717
    :cond_2
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get temperatures because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$CNeDDEmI3mqmSW-V4elBr1jnNWg(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic $r8$lambda$X0z6Uh_PovrmcJVW60Nm1Y957Fc(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->convertToAidlTemperatureThreshold(Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Z4zq_jwjYrRXcqOwq3_aJ_c27Ic(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 6

    .line 1742
    iget v0, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_1

    .line 1744
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v0, 0x1

    check-cast v1, Landroid/hardware/thermal/V2_0/CoolingDevice;

    .line 1745
    new-instance v2, Landroid/os/CoolingDevice;

    iget-wide v3, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->value:J

    iget v5, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->type:I

    iget-object v1, v1, Landroid/hardware/thermal/V2_0/CoolingDevice;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v5, v1}, Landroid/os/CoolingDevice;-><init>(JILjava/lang/String;)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void

    .line 1750
    :cond_1
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t get cooling device because of HAL error: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;)V
    .locals 1

    .line 1687
    invoke-direct {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;-><init>()V

    const/4 v0, 0x0

    .line 1665
    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1669
    new-instance v0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;

    invoke-direct {v0, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    iput-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    .line 1688
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    return-void
.end method


# virtual methods
.method public connectToHal()Z
    .locals 7

    .line 1804
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1806
    :try_start_0
    invoke-static {v1}, Landroid/hardware/thermal/V2_0/IThermal;->getService(Z)Landroid/hardware/thermal/V2_0/IThermal;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1807
    new-instance v4, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;

    invoke-direct {v4, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$DeathRecipient;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;)V

    const-wide/16 v5, 0x15ec

    invoke-interface {v3, v4, v5, v6}, Landroid/hardware/thermal/V2_0/IThermal;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 1808
    iget-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    iget-object v4, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalCallback20:Landroid/hardware/thermal/V2_0/IThermalChangedCallback$Stub;

    invoke-interface {v3, v4, v2, v2}, Landroid/hardware/thermal/V2_0/IThermal;->registerThermalChangedCallback(Landroid/hardware/thermal/V2_0/IThermalChangedCallback;ZI)Landroid/hardware/thermal/V1_0/ThermalStatus;

    .line 1810
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/util/NoSuchElementException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 1812
    :catch_0
    :try_start_1
    sget-object v3, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v4, "Thermal HAL 2.0 service not connected."

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    .line 1813
    iput-object v3, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    .line 1815
    :goto_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_0

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    monitor-exit v0

    return v1

    .line 1816
    :goto_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final convertToAidlTemperatureThreshold(Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;
    .locals 1

    .line 1794
    new-instance p0, Landroid/hardware/thermal/TemperatureThreshold;

    invoke-direct {p0}, Landroid/hardware/thermal/TemperatureThreshold;-><init>()V

    .line 1795
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->name:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->name:Ljava/lang/String;

    .line 1796
    iget v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->type:I

    iput v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    .line 1797
    iget-object v0, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->coldThrottlingThresholds:[F

    iput-object v0, p0, Landroid/hardware/thermal/TemperatureThreshold;->coldThrottlingThresholds:[F

    .line 1798
    iget-object p1, p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;->hotThrottlingThresholds:[F

    iput-object p1, p0, Landroid/hardware/thermal/TemperatureThreshold;->hotThrottlingThresholds:[F

    return-object p0
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2

    .line 1826
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1827
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1828
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ThermalHAL 2.0 connected: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-eqz p0, :cond_0

    const-string/jumbo p0, "yes"

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1829
    :cond_0
    const-string/jumbo p0, "no"

    :goto_0
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 1828
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1830
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public forecastSkinTemperature(I)F
    .locals 0

    .line 1821
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Not supported in Thermal HAL 2.0"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCurrentCoolingDevices(ZI)Ljava/util/List;
    .locals 4

    .line 1734
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1735
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1736
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 1737
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1740
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda0;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentCoolingDevices(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentCoolingDevicesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1757
    :try_start_2
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentCoolingDevices, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1758
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1760
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1761
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getCurrentTemperatures(ZI)Ljava/util/List;
    .locals 4

    .line 1694
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1695
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1696
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 1697
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1700
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;

    invoke-direct {v3, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda2;-><init>(Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getCurrentTemperatures(ZILandroid/hardware/thermal/V2_0/IThermal$getCurrentTemperaturesCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1724
    :try_start_2
    sget-object p2, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string v2, "Couldn\'t getCurrentTemperatures, reconnecting..."

    invoke-static {p2, v2, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1725
    invoke-virtual {p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->connectToHal()Z

    .line 1727
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1728
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public getTemperatureThresholds(ZI)Ljava/util/List;
    .locals 4

    .line 1767
    iget-object v0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mHalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1768
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1769
    iget-object v2, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->mThermalHal20:Landroid/hardware/thermal/V2_0/IThermal;

    if-nez v2, :cond_0

    .line 1770
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1773
    :cond_0
    :try_start_1
    new-instance v3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Ljava/util/List;)V

    invoke-interface {v2, p1, p2, v3}, Landroid/hardware/thermal/V2_0/IThermal;->getTemperatureThresholds(ZILandroid/hardware/thermal/V2_0/IThermal$getTemperatureThresholdsCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1786
    :try_start_2
    sget-object p1, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    const-string p2, "Couldn\'t getTemperatureThresholds, reconnecting..."

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1788
    :goto_0
    monitor-exit v0

    return-object v1

    .line 1789
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public final synthetic lambda$getTemperatureThresholds$2(Ljava/util/List;Landroid/hardware/thermal/V1_0/ThermalStatus;Ljava/util/ArrayList;)V
    .locals 1

    .line 1775
    iget v0, p2, Landroid/hardware/thermal/V1_0/ThermalStatus;->code:I

    if-nez v0, :cond_0

    .line 1776
    invoke-virtual {p3}, Ljava/util/ArrayList;->stream()Ljava/util/stream/Stream;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;

    invoke-direct {p3, p0}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V

    invoke-interface {p2, p3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 1778
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object p2

    .line 1777
    invoke-interface {p0, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    .line 1776
    invoke-interface {p1, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void

    .line 1780
    :cond_0
    sget-object p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Couldn\'t get temperature thresholds because of HAL error: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Landroid/hardware/thermal/V1_0/ThermalStatus;->debugMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
