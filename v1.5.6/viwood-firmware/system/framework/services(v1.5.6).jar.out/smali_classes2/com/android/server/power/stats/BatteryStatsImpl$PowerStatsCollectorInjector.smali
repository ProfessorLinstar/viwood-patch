.class public Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/CpuPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/ScreenPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/MobileRadioPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/WifiPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/BluetoothPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/EnergyConsumerPowerStatsCollector$Injector;
.implements Lcom/android/server/power/stats/WakelockPowerStatsCollector$Injector;


# instance fields
.field public mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

.field public mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

.field public mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

.field public mPackageManager:Landroid/content/pm/PackageManager;

.field public mTelephonyManager:Landroid/telephony/TelephonyManager;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public static synthetic $r8$lambda$2EszRR8VBok57-Qh47O5zT15Piw(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->lambda$setContext$0()I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$8SRteE7R2F8hKhioGWdLMmHOCxw(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)Landroid/net/NetworkStats;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->lambda$getMobileNetworkStatsSupplier$1()Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TYqbxANU7wNwk6ywAtDe-hMJ_4A(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)Landroid/net/NetworkStats;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->lambda$getWifiNetworkStatsSupplier$2()Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$cOk1GC9PBp1jZcqUs-QSf9uXlJQ(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->lambda$getPhoneSignalScanDurationSupplier$4()J

    move-result-wide v0

    return-wide v0
.end method

.method public static synthetic $r8$lambda$hqstqQU_C-5-K6D1zcs7KX6J0YE(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)J
    .locals 2

    .line 0
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->lambda$getCallDurationSupplier$3()J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 2163
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V

    return-void
.end method


# virtual methods
.method public getBluetoothStatsRetriever()Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;
    .locals 0

    .line 2269
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    return-object p0
.end method

.method public getCallDurationSupplier()Ljava/util/function/LongSupplier;
    .locals 1

    .line 2274
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    return-object v0
.end method

.method public getClock()Lcom/android/internal/os/Clock;
    .locals 0

    .line 2194
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    return-object p0
.end method

.method public getConsumedEnergyRetriever()Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;
    .locals 0

    .line 2229
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    return-object p0
.end method

.method public getCpuScalingPolicies()Lcom/android/internal/os/CpuScalingPolicies;
    .locals 0

    .line 2209
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mCpuScalingPolicies:Lcom/android/internal/os/CpuScalingPolicies;

    return-object p0
.end method

.method public getDisplayCount()I
    .locals 0

    .line 2239
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->getDisplayCount()I

    move-result p0

    return p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 0

    .line 2189
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getKernelCpuStatsReader()Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;
    .locals 0

    .line 2219
    new-instance p0, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;

    invoke-direct {p0}, Lcom/android/server/power/stats/CpuPowerStatsCollector$KernelCpuStatsReader;-><init>()V

    return-object p0
.end method

.method public getMobileNetworkStatsSupplier()Ljava/util/function/Supplier;
    .locals 1

    .line 2244
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    return-object v0
.end method

.method public getPackageManager()Landroid/content/pm/PackageManager;
    .locals 0

    .line 2224
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method public getPhoneSignalScanDurationSupplier()Ljava/util/function/LongSupplier;
    .locals 1

    .line 2280
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    return-object v0
.end method

.method public getPowerProfile()Lcom/android/internal/os/PowerProfile;
    .locals 0

    .line 2214
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmPowerProfile(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/internal/os/PowerProfile;

    move-result-object p0

    return-object p0
.end method

.method public getPowerStatsCollectionThrottlePeriod(Ljava/lang/String;)J
    .locals 0

    .line 2199
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mBatteryStatsConfig:Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BatteryStatsConfig;->getPowerStatsThrottlePeriod(Ljava/lang/String;)J

    move-result-wide p0

    return-wide p0
.end method

.method public getScreenUsageTimeRetriever()Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;
    .locals 0

    .line 2234
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmScreenUsageTimeRetriever(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/ScreenPowerStatsCollector$ScreenUsageTimeRetriever;

    move-result-object p0

    return-object p0
.end method

.method public getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 0

    .line 2259
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method public getUidResolver()Lcom/android/server/power/stats/PowerStatsUidResolver;
    .locals 0

    .line 2204
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPowerStatsUidResolver:Lcom/android/server/power/stats/PowerStatsUidResolver;

    return-object p0
.end method

.method public getWakelockDurationRetriever()Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;
    .locals 0

    .line 2287
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWakelockDurationRetriever(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/WakelockPowerStatsCollector$WakelockDurationRetriever;

    move-result-object p0

    return-object p0
.end method

.method public getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 0

    .line 2264
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method public getWifiNetworkStatsSupplier()Ljava/util/function/Supplier;
    .locals 1

    .line 2249
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    return-object v0
.end method

.method public getWifiStatsRetriever()Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;
    .locals 0

    .line 2254
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmWifiStatsRetriever(Lcom/android/server/power/stats/BatteryStatsImpl;)Lcom/android/server/power/stats/WifiPowerStatsCollector$WifiStatsRetriever;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getCallDurationSupplier$3()J
    .locals 5

    .line 2274
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneOnTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 p0, 0x0

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    div-long/2addr v0, v3

    return-wide v0
.end method

.method public final synthetic lambda$getMobileNetworkStatsSupplier$1()Landroid/net/NetworkStats;
    .locals 1

    .line 2244
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->readMobileNetworkStatsLocked(Landroid/app/usage/NetworkStatsManager;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$getPhoneSignalScanDurationSupplier$4()J
    .locals 5

    .line 2280
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mPhoneSignalScanningTimer:Lcom/android/server/power/stats/BatteryStatsImpl$StopwatchTimer;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 2281
    invoke-virtual {p0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    const/4 p0, 0x0

    .line 2280
    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v0

    div-long/2addr v0, v3

    return-wide v0
.end method

.method public final synthetic lambda$getWifiNetworkStatsSupplier$2()Landroid/net/NetworkStats;
    .locals 1

    .line 2249
    iget-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->readWifiNetworkStatsLocked(Landroid/app/usage/NetworkStatsManager;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$setContext$0()I
    .locals 0

    .line 2178
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$fgetmBatteryVoltageMv(Lcom/android/server/power/stats/BatteryStatsImpl;)I

    move-result p0

    return p0
.end method

.method public networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;
    .locals 0

    .line 2292
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->networkStatsDelta(Landroid/net/NetworkStats;Landroid/net/NetworkStats;)Landroid/net/NetworkStats;

    move-result-object p0

    return-object p0
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 3

    .line 2176
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2177
    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;

    const-class v1, Landroid/power/PowerStatsInternal;

    .line 2178
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/power/PowerStatsInternal;

    new-instance v2, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;)V

    invoke-direct {v0, v1, v2}, Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetrieverImpl;-><init>(Landroid/power/PowerStatsInternal;Ljava/util/function/IntSupplier;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mConsumedEnergyRetriever:Lcom/android/server/power/stats/PowerStatsCollector$ConsumedEnergyRetriever;

    .line 2179
    const-class v0, Landroid/app/usage/NetworkStatsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/NetworkStatsManager;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mNetworkStatsManager:Landroid/app/usage/NetworkStatsManager;

    .line 2180
    const-string/jumbo v0, "phone"

    .line 2181
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 2182
    const-string/jumbo v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 2183
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    const-class v2, Landroid/bluetooth/BluetoothManager;

    .line 2184
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothManager;

    invoke-direct {v0, v1, p1}, Lcom/android/server/power/stats/BatteryStatsImpl$BluetoothStatsRetrieverImpl;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Landroid/bluetooth/BluetoothManager;)V

    iput-object v0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$PowerStatsCollectorInjector;->mBluetoothStatsRetriever:Lcom/android/server/power/stats/BluetoothPowerStatsCollector$BluetoothStatsRetriever;

    return-void
.end method
