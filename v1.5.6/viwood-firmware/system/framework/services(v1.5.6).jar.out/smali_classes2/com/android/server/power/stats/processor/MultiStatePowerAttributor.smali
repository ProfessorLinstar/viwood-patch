.class public Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;
.super Ljava/lang/Object;
.source "MultiStatePowerAttributor.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerAttributor;


# instance fields
.field public final mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

.field public final mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

.field public final mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

.field public final mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;


# direct methods
.method public static synthetic $r8$lambda$1PNKYkCVv8W0KQfNrVHkcLFwoQo(Landroid/util/IndentingPrintWriter;Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 253
    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 255
    invoke-virtual {p1, p0}, Lcom/android/server/power/stats/PowerStatsSpan;->dump(Landroid/util/IndentingPrintWriter;)V

    :cond_0
    return-void
.end method

.method public static synthetic $r8$lambda$2lUOUDlJTWlJOEtxYVOy_maL-mc(Landroid/content/Context;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 2

    .line 210
    new-instance v0, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda16;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/SensorPowerStatsProcessor;-><init>(Ljava/util/function/Supplier;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$5-NDaBkXDxtfmlcXO5Mi6TAiDeM(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 200
    new-instance v0, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/GnssPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$55t4Zzm05ncx0W1YgnaCUrFLzJY(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 167
    new-instance v0, Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/VideoPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$70DTmGBx9LG3owXrv6hrK5RNa54(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->lambda$storeEstimatedPowerConsumption$15([JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    return-void
.end method

.method public static synthetic $r8$lambda$C67sk-eRLG4_SDkOzr97hAq8FAU(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 89
    new-instance v0, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WakelockPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$D1N6x10mQCnihZ1AFl0lEN6faPM(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 104
    new-instance v0, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/ScreenPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$Gabh_wS9BwnY1CxJQlA-pVuOeYw(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 145
    new-instance v0, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BluetoothPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$HupV73DXNt1muGGqeEn16l97Wsk(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 156
    new-instance v0, Lcom/android/server/power/stats/processor/AudioPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/AudioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$PUPeEfqqpmkpWSL858pKG_sXHrI(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 134
    new-instance v0, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/WifiPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$TT4c4y9zWE9QBwROEGZdDrozxb0(Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 78
    new-instance v0, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/BasePowerStatsProcessor;-><init>(Ljava/util/function/DoubleSupplier;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$WuvQKBwRfUJl4E-Jzwyx0kVNf9s(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 119
    new-instance v0, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/MobileRadioPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$dv30Q_VR9NUIlNenm3lSon2QyqQ(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 178
    new-instance v0, Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/FlashlightPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$kZpVspbFxjUHJVpatfPqZwCtuTw(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 94
    new-instance v0, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/processor/CpuPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V

    return-object v0
.end method

.method public static synthetic $r8$lambda$mQgGilTiebtIN-66-Js1k3uiw8c(Landroid/content/Context;)Landroid/hardware/SensorManager;
    .locals 1

    .line 211
    const-class v0, Landroid/hardware/SensorManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/SensorManager;

    return-object p0
.end method

.method public static synthetic $r8$lambda$w6EL18IggZuZAG7I0JGpTKsf49I(Lcom/android/internal/os/PowerProfile;)Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 189
    new-instance v0, Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/CameraPowerStatsProcessor;-><init>(Lcom/android/internal/os/PowerProfile;)V

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)V
    .locals 1

    .line 50
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 51
    invoke-static {p1, p3, p4, p5}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createAggregatedPowerStatsConfig(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 50
    invoke-direct {p0, p2, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    .line 58
    iput-object p1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    .line 59
    iput-object p2, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    .line 60
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;

    .line 61
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->getConfig()Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection$Reader;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;)V

    .line 60
    invoke-virtual {p1, v0}, Lcom/android/server/power/stats/PowerStatsStore;->addSectionReader(Lcom/android/server/power/stats/PowerStatsSpan$SectionReader;)V

    .line 62
    new-instance v0, Lcom/android/server/power/stats/processor/PowerStatsExporter;

    invoke-direct {v0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;-><init>(Lcom/android/server/power/stats/PowerStatsStore;Lcom/android/server/power/stats/processor/PowerStatsAggregator;)V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    const/16 p1, 0x12

    const/4 p2, 0x1

    .line 63
    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->setPowerComponentSupported(IZ)V

    return-void
.end method

.method public static createAggregatedPowerStatsConfig(Landroid/content/Context;Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;Ljava/util/function/DoubleSupplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
    .locals 6

    .line 69
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;-><init>()V

    const/16 v1, 0x12

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    filled-new-array {v2, v3}, [I

    move-result-object v4

    .line 71
    invoke-virtual {v1, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    const/4 v4, 0x2

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 74
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda0;

    invoke-direct {v5, p3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/DoubleSupplier;)V

    .line 78
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p3, 0xc

    .line 80
    invoke-virtual {v0, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3}, [I

    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    filled-new-array {v2, v3, v4}, [I

    move-result-object v5

    .line 84
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object v1

    new-instance v5, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda7;

    invoke-direct {v5, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 88
    invoke-virtual {v1, v5}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 91
    invoke-virtual {v0, v3, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p1, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda8;-><init>(Lcom/android/internal/os/PowerProfile;Lcom/android/internal/os/CpuScalingPolicies;)V

    .line 93
    invoke-virtual {p3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 96
    invoke-virtual {v0, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 97
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 100
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda9;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda9;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 103
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p2, 0xf

    .line 106
    invoke-virtual {v0, p2, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda10;

    invoke-direct {p3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda10;-><init>()V

    .line 108
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p2, 0x8

    .line 110
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    filled-new-array {v2, v3}, [I

    move-result-object v1

    .line 111
    invoke-virtual {p3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    filled-new-array {v2, v3, v4}, [I

    move-result-object v1

    .line 114
    invoke-virtual {p3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p3

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda11;

    invoke-direct {v1, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda11;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 118
    invoke-virtual {p3, v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p3, 0xe

    .line 121
    invoke-virtual {v0, p3, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda12;

    invoke-direct {p3}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda12;-><init>()V

    .line 123
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p2, 0xb

    .line 125
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 126
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 129
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda13;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda13;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 133
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 136
    invoke-virtual {v0, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 137
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 140
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda14;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda14;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 144
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 p2, 0x4

    .line 147
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 148
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 151
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda15;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 155
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 p2, 0x5

    .line 158
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 159
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 162
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 166
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 p2, 0x6

    .line 169
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 170
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 173
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda2;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 177
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 p2, 0x3

    .line 180
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 181
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 184
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda3;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda3;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 188
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p2, 0xa

    .line 191
    invoke-virtual {v0, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3}, [I

    move-result-object p3

    .line 192
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    filled-new-array {v2, v3, v4}, [I

    move-result-object p3

    .line 195
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p2

    new-instance p3, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda4;

    invoke-direct {p3, p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda4;-><init>(Lcom/android/internal/os/PowerProfile;)V

    .line 199
    invoke-virtual {p2, p3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/16 p1, 0x9

    .line 202
    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p1

    filled-new-array {v2, v3}, [I

    move-result-object p2

    .line 203
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p1

    filled-new-array {v2, v3, v4}, [I

    move-result-object p2

    .line 206
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p1

    new-instance p2, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;

    invoke-direct {p2, p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda5;-><init>(Landroid/content/Context;)V

    .line 210
    invoke-virtual {p1, p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 213
    new-instance p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;

    invoke-direct {p0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackCustomPowerComponents(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p0

    filled-new-array {v2, v3}, [I

    move-result-object p1

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p0

    filled-new-array {v2, v3, v4}, [I

    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object v0
.end method

.method public static createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;
    .locals 14

    .line 282
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getClockUpdates()Ljava/util/List;

    move-result-object v0

    .line 283
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No clock updates in aggregated power stats "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MultiStatePowerAttributor"

    invoke-static {v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const/4 v1, 0x0

    .line 288
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    iget-wide v2, v2, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    .line 290
    new-instance v4, Lcom/android/server/power/stats/PowerStatsSpan;

    invoke-direct {v4, v2, v3}, Lcom/android/server/power/stats/PowerStatsSpan;-><init>(J)V

    const-wide/16 v5, 0x0

    move-wide v11, v5

    .line 291
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 292
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v13, v5

    check-cast v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;

    .line 294
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    if-ne v1, v5, :cond_1

    .line 295
    invoke-virtual {p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getDuration()J

    move-result-wide v2

    sub-long/2addr v2, v11

    :goto_1
    move-wide v9, v2

    goto :goto_2

    .line 297
    :cond_1
    iget-wide v5, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    sub-long v2, v5, v2

    goto :goto_1

    .line 299
    :goto_2
    iget-wide v5, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    iget-wide v7, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->currentTime:J

    invoke-virtual/range {v4 .. v10}, Lcom/android/server/power/stats/PowerStatsSpan;->addTimeFrame(JJJ)V

    .line 300
    iget-wide v2, v13, Lcom/android/server/power/stats/processor/AggregatedPowerStats$ClockUpdate;->monotonicTime:J

    add-long/2addr v11, v9

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 304
    :cond_2
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;

    invoke-direct {v0, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsSection;-><init>(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    invoke-virtual {v4, v0}, Lcom/android/server/power/stats/PowerStatsSpan;->addSection(Lcom/android/server/power/stats/PowerStatsSpan$Section;)V

    return-object v4
.end method


# virtual methods
.method public dumpEstimatedPowerConsumption(Landroid/util/IndentingPrintWriter;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 1

    .line 250
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    move-object v0, p1

    move-object p1, p2

    move-wide p2, p3

    move-wide p4, p5

    new-instance p6, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;

    invoke-direct {p6, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda18;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    return-void
.end method

.method public estimatePowerConsumption(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    invoke-virtual/range {p0 .. p6}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->exportAggregatedPowerStats(Landroid/os/BatteryUsageStats$Builder;Lcom/android/internal/os/BatteryStatsHistory;JJ)V

    return-void
.end method

.method public getLastSavedEstimatesPowerConsumptionTimestamp()J
    .locals 8

    .line 311
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {p0}, Lcom/android/server/power/stats/PowerStatsStore;->getTableOfContents()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const-wide/16 v0, -0x1

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;

    .line 312
    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getSections()Ljava/util/List;

    move-result-object v3

    const-string v4, "aggregated-power-stats"

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 313
    invoke-virtual {v2}, Lcom/android/server/power/stats/PowerStatsSpan$Metadata;->getTimeFrames()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;

    .line 314
    iget-wide v4, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->startMonotonicTime:J

    iget-wide v6, v3, Lcom/android/server/power/stats/PowerStatsSpan$TimeFrame;->duration:J

    add-long/2addr v4, v6

    cmp-long v3, v4, v0

    if-lez v3, :cond_1

    move-wide v0, v4

    goto :goto_0

    :cond_2
    return-wide v0
.end method

.method public isPowerComponentSupported(I)Z
    .locals 0

    .line 236
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {p0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$storeEstimatedPowerConsumption$15([JLcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 4

    .line 266
    invoke-virtual {p0, p2}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->storeAggregatedPowerStats(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V

    .line 267
    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getStartTime()J

    move-result-wide v0

    invoke-virtual {p2}, Lcom/android/server/power/stats/processor/AggregatedPowerStats;->getDuration()J

    move-result-wide v2

    add-long/2addr v0, v2

    const/4 p0, 0x0

    aput-wide v0, p1, p0

    return-void
.end method

.method public setPowerComponentSupported(IZ)V
    .locals 1

    .line 229
    iget-object v0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporterEnabled:Landroid/util/SparseBooleanArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 230
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsExporter:Lcom/android/server/power/stats/processor/PowerStatsExporter;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/power/stats/processor/PowerStatsExporter;->setPowerComponentEnabled(IZ)V

    return-void
.end method

.method public storeAggregatedPowerStats(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)V
    .locals 0

    .line 274
    invoke-static {p1}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->createPowerStatsSpan(Lcom/android/server/power/stats/processor/AggregatedPowerStats;)Lcom/android/server/power/stats/PowerStatsSpan;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 278
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsStore:Lcom/android/server/power/stats/PowerStatsStore;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsStore;->storePowerStatsSpan(Lcom/android/server/power/stats/PowerStatsSpan;)V

    return-void
.end method

.method public storeEstimatedPowerConsumption(Lcom/android/internal/os/BatteryStatsHistory;JJ)J
    .locals 8

    const/4 v0, 0x1

    .line 263
    new-array v0, v0, [J

    .line 264
    iget-object v1, p0, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;->mPowerStatsAggregator:Lcom/android/server/power/stats/processor/PowerStatsAggregator;

    new-instance v7, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;

    invoke-direct {v7, p0, v0}, Lcom/android/server/power/stats/processor/MultiStatePowerAttributor$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/power/stats/processor/MultiStatePowerAttributor;[J)V

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/power/stats/processor/PowerStatsAggregator;->aggregatePowerStats(Lcom/android/internal/os/BatteryStatsHistory;JJLjava/util/function/Consumer;)V

    const/4 p0, 0x0

    .line 269
    aget-wide p0, v0, p0

    return-wide p0
.end method
