.class public Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

.field public mAmbientLux:F

.field public mBrightness:F

.field public final mContext:Landroid/content/Context;

.field public mDefaultDisplayState:I

.field public final mHandler:Landroid/os/Handler;

.field public mHighAmbientBrightnessThresholds:[F

.field public mHighDisplayBrightnessThresholds:[F

.field public mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

.field public mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

.field public final mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

.field public mLightSensor:Landroid/hardware/Sensor;

.field public final mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

.field public mLightSensorName:Ljava/lang/String;

.field public mLightSensorType:Ljava/lang/String;

.field public mLoggingEnabled:Z

.field public mLowAmbientBrightnessThresholds:[F

.field public mLowDisplayBrightnessThresholds:[F

.field public mLowPowerModeEnabled:Z

.field public mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

.field public mRefreshRateChangeable:Z

.field public mRefreshRateInHighZone:I

.field public mRefreshRateInLowZone:I

.field public mRegisteredLightSensor:Landroid/hardware/Sensor;

.field public mSensorManager:Landroid/hardware/SensorManager;

.field public mShouldObserveAmbientHighChange:Z

.field public mShouldObserveAmbientLowChange:Z

.field public mShouldObserveDisplayHighChange:Z

.field public mShouldObserveDisplayLowChange:Z

.field public final mThermalListener:Landroid/os/IThermalEventListener$Stub;

.field public mThermalRegistered:Z

.field public mThermalStatus:I

.field public final mVsyncLowLightBlockingVoteEnabled:Z

.field public final synthetic this$0:Lcom/android/server/display/mode/DisplayModeDirector;


# direct methods
.method public static synthetic $r8$lambda$8DAn56bU6WgFgsFx-a9p7-LZAcI(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 1991
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Ay2prysMHDYMO6gnyiTQlctgcyI(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadLowBrightnessThresholds$2()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ErR8h1ciNprVwDnWLJTnyyvJFow(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2251
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$IKnEMBFyGRQBJ1PKPV09LlnUYcQ(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadLowBrightnessThresholds$0()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$NoY5RPLd_tMQ9arcQdNvKQupLRA(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2257
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$QQJ_8KNK1PlQxWszYy-c-kL2A3U(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 1997
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Qap_vgSsSIpOoM7GLXh-0nck6zU(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2211
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$R05hOuFMoShOgMWSJv7wolTW2T0(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2205
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TN6bCtO3Mq3QS43W5huCcmcyJ1w(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigHighBrightnessThresholdsChanged$14()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TOfl-cGYXuStF3el4JR8AneQz-w(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2063
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$aoh3sBmq2C7SevGL6MwSMwgHrls(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigLowBrightnessThresholdsChanged$10()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$eSIxrilA5_Gi_Xv6-SCnYK1kGRg(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigHighBrightnessThresholdsChanged$12()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$horxynV7MmybweJstKDz3KJXC50(Lcom/android/server/display/DisplayDeviceConfig;)[F
    .locals 0

    .line 2057
    invoke-virtual {p0}, Lcom/android/server/display/DisplayDeviceConfig;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$q9lF_A0quq49fCqX-dNNPJaLYQ8(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadHighBrightnessThresholds$4()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uJDIpoE3-0BsPhq2MxsFE6C-7l4(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$onDeviceConfigLowBrightnessThresholdsChanged$8()[F

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$ukYjuV9AUGT_8BbrisQUwkGAqfM(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->lambda$loadHighBrightnessThresholds$6()[F

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientFilter(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Lcom/android/server/display/utils/AmbientFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)F
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHighAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLowAmbientBrightnessThresholds(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)[F
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmAmbientLux(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmThermalStatus(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    return-void
.end method

.method public static bridge synthetic -$$Nest$mloadIdleScreenRefreshRateConfigs(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mobserve(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Landroid/hardware/SensorManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monBrightnessChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceConfigHighBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigHighBrightnessThresholdsChanged([F[F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monDeviceConfigLowBrightnessThresholdsChanged(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;[F[F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onDeviceConfigLowBrightnessThresholdsChanged([F[F)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mreloadLightSensor(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->reloadLightSensor(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetLoggingEnabled(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Z)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->setLoggingEnabled(Z)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mupdateIdleScreenRefreshRate(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;F)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateIdleScreenRefreshRate(F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/mode/DisplayModeDirector$Injector;Lcom/android/server/display/feature/DisplayManagerFlags;)V
    .locals 1

    .line 1897
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1836
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;Lcom/android/server/display/mode/DisplayModeDirector-IA;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    const/high16 p1, -0x40800000    # -1.0f

    .line 1839
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    const/high16 p1, 0x7fc00000    # Float.NaN

    .line 1849
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 1858
    new-instance p1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;

    invoke-direct {p1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$1;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    const/4 p1, 0x0

    .line 1877
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 1878
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 1879
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 1893
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 1898
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 1899
    iput-object p3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    .line 1900
    iput-object p4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    .line 1901
    invoke-virtual {p0, v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1903
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00a0

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 1905
    invoke-virtual {p5}, Lcom/android/server/display/feature/DisplayManagerFlags;->isVsyncLowLightVoteEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mVsyncLowLightBlockingVoteEnabled:Z

    .line 1906
    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V

    return-void
.end method


# virtual methods
.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 7

    .line 2285
    const-string v0, "  BrightnessObserver"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2286
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mAmbientLux: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2287
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mBrightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mDefaultDisplayState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLowPowerModeEnabled: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2290
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateChangeable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2291
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2292
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientLowChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2293
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInLowZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2295
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget v4, v0, v3

    .line 2296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 2299
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_1

    aget v4, v0, v3

    .line 2300
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mAmbientLowBrightnessThreshold: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2303
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveDisplayHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2304
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mShouldObserveAmbientHighChange: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRefreshRateInHighZone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2307
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length v1, v0

    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_2

    aget v4, v0, v3

    .line 2308
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "    mDisplayHighBrightnessThresholds: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 2311
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    array-length v1, v0

    :goto_3
    if-ge v2, v1, :cond_3

    aget v3, v0, v2

    .line 2312
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    mAmbientHighBrightnessThresholds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 2315
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mRegisteredLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensor: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2318
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    mLightSensorType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2319
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 2321
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    if-eqz v0, :cond_4

    .line 2322
    new-instance v0, Landroid/util/IndentingPrintWriter;

    const-string v1, "    "

    invoke-direct {v0, p1, v1}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2323
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    invoke-virtual {p0, v0}, Lcom/android/server/display/utils/AmbientFilter;->dump(Ljava/io/PrintWriter;)V

    :cond_4
    return-void
.end method

.method public final getBrightness(I)F
    .locals 0

    .line 2679
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    invoke-interface {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getBrightnessInfo(I)Landroid/hardware/display/BrightnessInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2681
    iget p0, p0, Landroid/hardware/display/BrightnessInfo;->adjustedBrightness:F

    return p0

    :cond_0
    const/high16 p0, 0x7fc00000    # Float.NaN

    return p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .locals 0

    .line 1953
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .locals 0

    .line 1948
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getIdleScreenRefreshRateConfig()Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;
    .locals 0

    .line 1975
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    return-object p0
.end method

.method public getIdleScreenRefreshRateTimeoutLuxThresholdPoints()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;",
            ">;"
        }
    .end annotation

    .line 1982
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    return-object p0
.end method

.method public final getLightSensor()Landroid/hardware/Sensor;
    .locals 3

    .line 2423
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    const/4 v2, 0x5

    invoke-static {v0, v1, p0, v2}, Lcom/android/server/display/utils/SensorUtils;->findSensor(Landroid/hardware/SensorManager;Ljava/lang/String;Ljava/lang/String;I)Landroid/hardware/Sensor;

    move-result-object p0

    return-object p0
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .locals 0

    .line 1943
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .locals 0

    .line 1938
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    return-object p0
.end method

.method public getRefreshRateInHighZone()I
    .locals 0

    .line 1961
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return p0
.end method

.method public getRefreshRateInLowZone()I
    .locals 0

    .line 1969
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return p0
.end method

.method public final hasLowLightVrrConfig()Z
    .locals 2

    .line 2352
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2353
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v1

    .line 2354
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2355
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mVsyncLowLightBlockingVoteEnabled:Z

    if-eqz p0, :cond_0

    if-eqz v1, :cond_0

    .line 2357
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->isVrrSupportEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 2358
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object p0

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    .line 2354
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final hasValidHighZone()Z
    .locals 1

    .line 2571
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    if-nez v0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final hasValidLowZone()Z
    .locals 1

    .line 2566
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-gtz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final hasValidThreshold([F)Z
    .locals 4

    .line 2432
    array-length p0, p1

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p0, :cond_1

    aget v2, p1, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method public final isDeviceActive()Z
    .locals 1

    .line 2670
    iget p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isIdleScreenRefreshRateConfigDefined()Z
    .locals 1

    .line 2638
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenConfigInSubscribingLightSensorEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2640
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isInsideHighZone(FF)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 2481
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 2482
    aget v2, v2, v1

    .line 2483
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    cmpl-float v7, v3, v4

    if-ltz v7, :cond_0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    cmpl-float v2, p2, v3

    if-ltz v2, :cond_2

    return v6

    :cond_0
    if-ltz v5, :cond_1

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_2

    return v6

    :cond_1
    cmpl-float v2, v3, v4

    if-ltz v2, :cond_2

    cmpl-float v2, p2, v3

    if-ltz v2, :cond_2

    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final isInsideLowZone(FF)Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    .line 2450
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 2451
    aget v2, v2, v1

    .line 2452
    iget-object v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    aget v3, v3, v1

    const/4 v4, 0x0

    cmpl-float v5, v2, v4

    const/4 v6, 0x1

    if-ltz v5, :cond_0

    cmpl-float v7, v3, v4

    if-ltz v7, :cond_0

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_2

    return v6

    :cond_0
    if-ltz v5, :cond_1

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_2

    return v6

    :cond_1
    cmpl-float v2, v3, v4

    if-ltz v2, :cond_2

    cmpg-float v2, p2, v3

    if-gtz v2, :cond_2

    return v6

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method public final synthetic lambda$loadHighBrightnessThresholds$4()[F
    .locals 0

    .line 2056
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadHighBrightnessThresholds$6()[F
    .locals 0

    .line 2062
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadLowBrightnessThresholds$0()[F
    .locals 0

    .line 1990
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$loadLowBrightnessThresholds$2()[F
    .locals 0

    .line 1996
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigHighBrightnessThresholdsChanged$12()[F
    .locals 0

    .line 2250
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigHighBrightnessThresholdsChanged$14()[F
    .locals 0

    .line 2256
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigLowBrightnessThresholdsChanged$10()[F
    .locals 0

    .line 2210
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final synthetic lambda$onDeviceConfigLowBrightnessThresholdsChanged$8()[F
    .locals 0

    .line 2204
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p0

    return-object p0
.end method

.method public final loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F
    .locals 0

    if-eqz p5, :cond_0

    .line 2088
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_2

    if-nez p4, :cond_1

    .line 2095
    :try_start_1
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    .line 2096
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    .line 2095
    invoke-interface {p6, p0}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F

    :goto_1
    move-object p1, p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_2

    .line 2098
    :cond_1
    invoke-interface {p2}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [F
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 2100
    :goto_2
    const-string p2, "DisplayModeDirector"

    const-string p3, "Unexpectedly failed to load display brightness threshold"

    invoke-static {p2, p3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_3
    return-object p1
.end method

.method public final loadHighBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 7

    .line 2055
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda10;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda11;

    invoke-direct {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070084

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2061
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda12;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda13;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070083

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2067
    iget-object p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    array-length p1, p1

    array-length p0, p0

    if-ne p1, p0, :cond_0

    return-void

    .line 2069
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display high brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2072
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ambientBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2074
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadIdleScreenRefreshRateConfigs(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 2

    .line 1910
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1911
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDisplayManagerFlags(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DisplayManagerFlags;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/display/feature/DisplayManagerFlags;->isIdleScreenConfigInSubscribingLightSensorEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    .line 1913
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 1922
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getIdleScreenRefreshRateTimeoutLuxThresholdPoint()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    .line 1923
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 1916
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 1917
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    .line 1918
    monitor-exit v0

    return-void

    .line 1923
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final loadLowBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 7

    .line 1987
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1988
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1989
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda7;

    invoke-direct {v2, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x107002a

    move-object v0, p0

    move-object v4, p1

    move v5, p2

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 1995
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda8;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda9;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070010

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2001
    iget-object p1, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    array-length p1, p1

    array-length p0, p0

    if-ne p1, p0, :cond_0

    return-void

    .line 2002
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "display low brightness threshold array and ambient brightness threshold array have different length: displayBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2005
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ", ambientBrightnessThresholds="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2007
    invoke-static {p2}, Ljava/util/Arrays;->toString([F)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 2037
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p2, v0

    :goto_0
    if-ne p2, v0, :cond_2

    if-nez p1, :cond_1

    .line 2044
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e00a0

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_1

    .line 2046
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultHighBlockingZoneRefreshRate()I

    move-result p2

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 2049
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getHighBlockingZoneThermalMap()Landroid/util/SparseArray;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 2050
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    return-void
.end method

.method public final loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 1

    const/4 v0, -0x1

    if-eqz p2, :cond_0

    .line 2016
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    :cond_0
    move p2, v0

    :goto_0
    if-ne p2, v0, :cond_2

    if-nez p1, :cond_1

    .line 2023
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x10e0069

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    goto :goto_1

    .line 2025
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getDefaultLowBlockingZoneRefreshRate()I

    move-result p2

    :cond_2
    :goto_1
    if-nez p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 2028
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getLowBlockingZoneThermalMap()Landroid/util/SparseArray;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    .line 2029
    iput p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    return-void
.end method

.method public final observe(Landroid/hardware/SensorManager;)V
    .locals 3

    .line 2108
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 p1, 0x0

    .line 2109
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getBrightness(I)F

    move-result p1

    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 2112
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 2113
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 2114
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 2115
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getLowAmbientBrightnessThresholds()[F

    move-result-object v0

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    .line 2116
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 2119
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2120
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2123
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    .line 2124
    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighDisplayBrightnessThresholds()[F

    move-result-object p1

    .line 2125
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object v0

    .line 2126
    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getHighAmbientBrightnessThresholds()[F

    move-result-object v0

    if-eqz p1, :cond_1

    if-eqz v0, :cond_1

    .line 2127
    array-length v1, p1

    array-length v2, v0

    if-ne v1, v2, :cond_1

    .line 2130
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2131
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2134
    :cond_1
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInLowZone()I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_2

    .line 2136
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2139
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmConfigParameterProvider(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getRefreshRateInHighZone()I

    move-result p1

    if-eq p1, v0, :cond_3

    .line 2141
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2144
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    .line 2145
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDeviceConfigDisplaySettings(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/display/mode/DisplayModeDirector$DeviceConfigDisplaySettings;->startListening()V

    .line 2146
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->registerDisplayListener()V

    return-void
.end method

.method public final onBrightnessChangedLocked()V
    .locals 5

    .line 2505
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2511
    :cond_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    if-eqz v0, :cond_1

    goto/16 :goto_3

    .line 2517
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidLowZone()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isInsideLowZone(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2519
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2520
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v0

    .line 2521
    invoke-virtual {v0}, Lcom/android/server/display/DisplayDeviceConfig;->getRefreshRateData()Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    .line 2520
    invoke-static {v0}, Lcom/android/server/display/mode/Vote;->forSupportedRefreshRates(Ljava/util/List;)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    :goto_0
    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    goto :goto_1

    .line 2523
    :cond_2
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    int-to-float v1, v0

    int-to-float v0, v0

    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2525
    invoke-static {}, Lcom/android/server/display/mode/Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;

    move-result-object v1

    goto :goto_0

    .line 2527
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v2, :cond_4

    .line 2528
    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2529
    invoke-static {v3, v2}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 2532
    iget v1, v2, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v2, v2, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2533
    invoke-static {v1, v2}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v1

    goto :goto_2

    :cond_3
    move-object v0, v1

    .line 2538
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidHighZone()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    .line 2539
    invoke-virtual {p0, v2, v3}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isInsideHighZone(FF)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2541
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    int-to-float v1, v0

    int-to-float v0, v0

    .line 2542
    invoke-static {v1, v0}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2544
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v1, :cond_5

    .line 2545
    iget v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2546
    invoke-static {v2, v1}, Lcom/android/server/display/mode/SkinThermalStatusObserver;->findBestMatchingRefreshRateRange(ILandroid/util/SparseArray;)Landroid/view/SurfaceControl$RefreshRateRange;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 2549
    iget v0, v1, Landroid/view/SurfaceControl$RefreshRateRange;->min:F

    iget v1, v1, Landroid/view/SurfaceControl$RefreshRateRange;->max:F

    .line 2550
    invoke-static {v0, v1}, Lcom/android/server/display/mode/Vote;->forPhysicalRefreshRates(FF)Lcom/android/server/display/mode/Vote;

    move-result-object v0

    :cond_5
    move-object v1, v0

    .line 2553
    invoke-static {}, Lcom/android/server/display/mode/Vote;->forDisableRefreshRateSwitching()Lcom/android/server/display/mode/Vote;

    move-result-object v0

    .line 2556
    :cond_6
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v2, :cond_7

    .line 2557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Display brightness "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", ambient lux "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientLux:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v3, ", Vote "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DisplayModeDirector"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2560
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 2561
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/16 v1, 0x14

    invoke-virtual {p0, v1, v0}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    :cond_8
    :goto_3
    return-void
.end method

.method public final onDeviceConfigHighBrightnessThresholdsChanged([F[F)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2240
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 2242
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2243
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    move-object v0, p0

    goto :goto_0

    .line 2246
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2247
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    .line 2248
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2249
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x1070084

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    .line 2255
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda3;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda4;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070083

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    .line 2262
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2248
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public final onDeviceConfigLowBrightnessThresholdsChanged([F[F)V
    .locals 7

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 2194
    array-length v0, p1

    array-length v1, p2

    if-ne v0, v1, :cond_0

    .line 2196
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2197
    iput-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    move-object v0, p0

    goto :goto_0

    .line 2200
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2201
    :try_start_0
    iget-object p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p2}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v4

    .line 2202
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2203
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda14;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda15;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda2;-><init>()V

    const v3, 0x107002a

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    .line 2209
    new-instance v1, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda16;

    invoke-direct {v1, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;)V

    new-instance v2, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda17;

    invoke-direct {v2, v4}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/display/DisplayDeviceConfig;)V

    new-instance v6, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$$ExternalSyntheticLambda5;-><init>()V

    const v3, 0x1070010

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadBrightnessThresholds(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Callable;ILcom/android/server/display/DisplayDeviceConfig;ZLjava/util/function/Function;)[F

    move-result-object p0

    iput-object p0, v0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    .line 2216
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2202
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onDeviceConfigRefreshRateInHighZoneChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2273
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2274
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInHighZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 2276
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2277
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_0
    move-exception p0

    .line 2276
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2278
    :cond_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-eq p1, v0, :cond_1

    .line 2279
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    .line 2280
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_1
    return-void
.end method

.method public onDeviceConfigRefreshRateInLowZoneChanged(I)V
    .locals 2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 2227
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2228
    :try_start_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmDefaultDisplayDeviceConfig(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadRefreshRateInLowZone(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 2230
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2231
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void

    :catchall_0
    move-exception p0

    .line 2230
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 2232
    :cond_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    if-eq p1, v0, :cond_1

    .line 2233
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    .line 2234
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    :cond_1
    return-void
.end method

.method public onDisplayAdded(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 2

    if-nez p1, :cond_1

    .line 2336
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateDefaultDisplayState()V

    .line 2340
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getBrightness(I)F

    move-result p1

    .line 2341
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2342
    :try_start_0
    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    invoke-static {p1, v1}, Lcom/android/internal/display/BrightnessSynchronizer;->floatEquals(FF)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2343
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mBrightness:F

    .line 2344
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 2346
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onLowPowerModeEnabledLocked(Z)V
    .locals 1

    .line 2177
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-eq v0, p1, :cond_0

    .line 2178
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    .line 2179
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    if-eqz p1, :cond_0

    .line 2181
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->removeFlickerRefreshRateVotes()V

    :cond_0
    return-void
.end method

.method public onRefreshRateSettingChangedLocked(FF)V
    .locals 1

    sub-float p1, p2, p1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    const/high16 p1, 0x42700000    # 60.0f

    cmpl-float p1, p2, p1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 2166
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eq p2, p1, :cond_1

    .line 2167
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    .line 2168
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    if-nez p1, :cond_1

    .line 2170
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->removeFlickerRefreshRateVotes()V

    :cond_1
    return-void
.end method

.method public final registerDisplayListener()V
    .locals 7

    .line 2150
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;JJ)V

    return-void
.end method

.method public final registerLightSensor()V
    .locals 5

    .line 2644
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v0, :cond_1

    .line 2649
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    .line 2652
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    const v3, 0x3d090

    iget-object v4, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 2654
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 2655
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_2

    .line 2656
    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: registerListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public final reloadLightSensor(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 0

    .line 2402
    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->reloadLightSensorData(Lcom/android/server/display/DisplayDeviceConfig;)V

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->restartObserver()V

    return-void
.end method

.method public final reloadLightSensorData(Lcom/android/server/display/DisplayDeviceConfig;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 2410
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2412
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 2413
    invoke-virtual {p1}, Lcom/android/server/display/DisplayDeviceConfig;->getAmbientLightSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p1

    iget-object p1, p1, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    return-void

    .line 2414
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    if-nez p1, :cond_1

    .line 2415
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x104026a

    .line 2416
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorType:Ljava/lang/String;

    .line 2418
    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorName:Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public final removeFlickerRefreshRateVotes()V
    .locals 3

    .line 2188
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    .line 2189
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmVotesStorage(Lcom/android/server/display/mode/DisplayModeDirector;)Lcom/android/server/display/mode/VotesStorage;

    move-result-object p0

    const/16 v0, 0x14

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/mode/VotesStorage;->updateGlobalVote(ILcom/android/server/display/mode/Vote;)V

    return-void
.end method

.method public final restartObserver()V
    .locals 3

    .line 2362
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInLowZone:I

    const/4 v1, 0x0

    if-gtz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasLowLightVrrConfig()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2368
    :cond_0
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2369
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    goto :goto_1

    .line 2363
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowDisplayBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayLowChange:Z

    .line 2365
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowAmbientBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    .line 2372
    :goto_1
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateInHighZone:I

    if-lez v0, :cond_2

    .line 2373
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighDisplayBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2375
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighAmbientBrightnessThresholds:[F

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->hasValidThreshold([F)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    goto :goto_2

    .line 2378
    :cond_2
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveDisplayHighChange:Z

    .line 2379
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    .line 2382
    :goto_2
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->shouldRegisterLightSensor()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2383
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->getLightSensor()Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2385
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    if-eq v0, v1, :cond_4

    .line 2386
    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 2387
    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v1}, Lcom/android/server/display/utils/AmbientFilterFactory;->createBrightnessFilter(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/android/server/display/utils/AmbientFilter;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2388
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    goto :goto_3

    :cond_3
    const/4 v0, 0x0

    .line 2391
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mAmbientFilter:Lcom/android/server/display/utils/AmbientFilter;

    .line 2392
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensor:Landroid/hardware/Sensor;

    .line 2395
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    .line 2396
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2397
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->onBrightnessChangedLocked()V

    .line 2398
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setDefaultDisplayState(I)V
    .locals 2

    .line 2586
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_0

    .line 2587
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDefaultDisplayState: mDefaultDisplayState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DisplayModeDirector"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2591
    :cond_0
    iget v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    if-eq v0, p1, :cond_1

    .line 2592
    iput p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mDefaultDisplayState:I

    .line 2593
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->updateSensorStatus()V

    :cond_1
    return-void
.end method

.method public final setLoggingEnabled(Z)V
    .locals 1

    .line 2156
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 2159
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    .line 2160
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {p0, p1}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->setLoggingEnabled(Z)V

    return-void
.end method

.method public final shouldRegisterLightSensor()Z
    .locals 1

    .line 2633
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    if-nez v0, :cond_1

    .line 2634
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isIdleScreenRefreshRateConfigDefined()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final unregisterSensorListener()V
    .locals 2

    .line 2661
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;->removeCallbacks()V

    .line 2662
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v0, 0x0

    .line 2663
    iput-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRegisteredLightSensor:Landroid/hardware/Sensor;

    .line 2664
    iget-boolean p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz p0, :cond_0

    .line 2665
    const-string p0, "DisplayModeDirector"

    const-string/jumbo v0, "updateSensorStatus: unregisterListener"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public updateBlockingZoneThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V
    .locals 0

    .line 1932
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadLowBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    .line 1933
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->loadHighBrightnessThresholds(Lcom/android/server/display/DisplayDeviceConfig;Z)V

    return-void
.end method

.method public final updateDefaultDisplayState()V
    .locals 2

    .line 2576
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2581
    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->setDefaultDisplayState(I)V

    return-void
.end method

.method public final updateIdleScreenRefreshRate(F)V
    .locals 4

    .line 2807
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 2808
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 2815
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateTimeoutLuxThresholdPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, -0x1

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;

    .line 2816
    invoke-virtual {v2}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getLux()Ljava/math/BigInteger;

    move-result-object v3

    invoke-virtual {v3}, Ljava/math/BigInteger;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v3, v3, p1

    if-gtz v3, :cond_1

    .line 2818
    invoke-virtual {v2}, Lcom/android/server/display/config/IdleScreenRefreshRateTimeoutLuxThresholdPoint;->getTimeout()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->intValue()I

    move-result v1

    goto :goto_0

    .line 2821
    :cond_2
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    if-eqz p1, :cond_4

    iget p1, p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;->timeoutMillis:I

    if-eq v1, p1, :cond_3

    goto :goto_1

    :cond_3
    return-void

    .line 2823
    :cond_4
    :goto_1
    new-instance p1, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    invoke-direct {p1, v1}, Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    .line 2825
    iget-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p1}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 2826
    :try_start_0
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$mnotifyDesiredDisplayModeSpecsChangedLocked(Lcom/android/server/display/mode/DisplayModeDirector;)V

    .line 2827
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_5
    :goto_2
    const/4 p1, 0x0

    .line 2809
    iput-object p1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mIdleScreenRefreshRateConfig:Landroid/view/SurfaceControl$IdleScreenRefreshRateConfig;

    return-void
.end method

.method public final updateSensorStatus()V
    .locals 3

    .line 2598
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLightSensorListener:Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver$LightSensorEventListener;

    if-nez v0, :cond_0

    goto/16 :goto_1

    .line 2602
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLoggingEnabled:Z

    if-eqz v0, :cond_1

    .line 2603
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mShouldObserveAmbientLowChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientLowChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mShouldObserveAmbientHighChange = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mShouldObserveAmbientHighChange:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2606
    const-string v0, "DisplayModeDirector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateSensorStatus: mLowPowerModeEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mRefreshRateChangeable = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2612
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->shouldRegisterLightSensor()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->isDeviceActive()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowPowerModeEnabled:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mRefreshRateChangeable:Z

    if-eqz v0, :cond_3

    .line 2614
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->registerLightSensor()V

    .line 2615
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mLowZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mHighZoneRefreshRateForThermals:Landroid/util/SparseArray;

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    .line 2618
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->unregisterSensorListener()V

    :cond_4
    move v0, v1

    :goto_0
    if-eqz v0, :cond_5

    .line 2621
    iget-boolean v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    if-nez v2, :cond_5

    .line 2622
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    invoke-interface {v0, v1}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->registerThermalServiceListener(Landroid/os/IThermalEventListener;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    return-void

    :cond_5
    if-nez v0, :cond_6

    .line 2623
    iget-boolean v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    if-eqz v0, :cond_6

    .line 2624
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mInjector:Lcom/android/server/display/mode/DisplayModeDirector$Injector;

    iget-object v2, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalListener:Landroid/os/IThermalEventListener$Stub;

    invoke-interface {v0, v2}, Lcom/android/server/display/mode/DisplayModeDirector$Injector;->unregisterThermalServiceListener(Landroid/os/IThermalEventListener;)V

    .line 2625
    iput-boolean v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalRegistered:Z

    .line 2626
    iget-object v0, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->this$0:Lcom/android/server/display/mode/DisplayModeDirector;

    invoke-static {v0}, Lcom/android/server/display/mode/DisplayModeDirector;->-$$Nest$fgetmLock(Lcom/android/server/display/mode/DisplayModeDirector;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 2627
    :try_start_0
    iput v1, p0, Lcom/android/server/display/mode/DisplayModeDirector$BrightnessObserver;->mThermalStatus:I

    .line 2628
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_6
    :goto_1
    return-void
.end method
