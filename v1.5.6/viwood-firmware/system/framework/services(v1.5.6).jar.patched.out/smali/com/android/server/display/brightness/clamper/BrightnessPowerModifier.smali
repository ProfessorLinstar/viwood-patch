.class public Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;
.super Ljava/lang/Object;
.source "BrightnessPowerModifier.java"

# interfaces
.implements Lcom/android/server/display/brightness/clamper/BrightnessStateModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceDataListener;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$StatefulModifier;
.implements Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DeviceConfigListener;


# instance fields
.field public mApplied:Z

.field public mBrightnessCap:F

.field public final mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

.field public final mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

.field public mCurrentAvgPowerConsumed:F

.field public mCurrentBrightness:F

.field public mCurrentThermalLevel:I

.field public mCurrentThermalLevelChanged:Z

.field public mCustomAnimationRateDeviceConfig:F

.field public mCustomAnimationRateSec:F

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Ljava/util/function/BiFunction;

.field public final mDataSetMapper:Ljava/util/function/Function;

.field public final mHandler:Landroid/os/Handler;

.field public final mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

.field public mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

.field public mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

.field public mPowerThrottlingDataOverride:Ljava/util/Map;

.field public final mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3qJfZiNExghXhIpE-_DN4Ds7e-Q(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$5LoNAxwgtcr-skeyF7JY58bnPrw(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$recalculatePowerQuotaChange$4(IF)V

    return-void
.end method

.method public static synthetic $r8$lambda$_AAgBRrrOtfefLzj8CVwCZZrEUw(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eVUF0eCk5S6mSL1T-GhaCp5fFYg(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->lambda$onDeviceConfigChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$gSxzfeLlhiZZGgaI9xdvxU5NJEI(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;FI)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculatePowerQuotaChange(FI)V

    return-void
.end method

.method public static synthetic $r8$lambda$vaRpUl_duR6a_KEwqYhW64Mf9AA(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseThermalStatus(Ljava/lang/String;)I

    move-result p0

    .line 94
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result p1

    .line 95
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;-><init>(IF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)Lcom/android/server/display/brightness/clamper/PmicMonitor;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->activatePmicMonitor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mdeactivatePmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->deactivatePmicMonitor(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V
    .locals 6

    .line 113
    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;

    invoke-direct {v1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;-><init>()V

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;F)V
    .locals 3

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    const/4 v0, 0x0

    .line 70
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    .line 74
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    const/4 v1, 0x0

    .line 80
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    .line 81
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    const/4 v2, 0x0

    .line 82
    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    .line 83
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 85
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    const/high16 v0, -0x40800000    # -1.0f

    .line 87
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    .line 88
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 89
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 91
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    .line 101
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Ljava/util/function/Function;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 107
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    .line 108
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    .line 119
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    .line 120
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 121
    iput p5, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    .line 123
    invoke-interface {p4}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz p3, :cond_0

    .line 125
    iget p3, p3, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 127
    :cond_0
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-direct {p3, p0, p2}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    .line 128
    new-instance p5, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;

    invoke-direct {p5, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    .line 130
    invoke-virtual {p3}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->getThermalService()Landroid/os/IThermalService;

    move-result-object p3

    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    .line 129
    invoke-virtual {p1, p5, p3, v1, v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;->getPmicMonitor(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerChangeListener;Landroid/os/IThermalService;II)Lcom/android/server/display/brightness/clamper/PmicMonitor;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    .line 134
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 135
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private start()V
    .locals 6

    .line 339
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-nez v0, :cond_0

    return-void

    .line 342
    :cond_0
    iget v1, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    iget v2, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    const-string v3, " msec."

    const-string v4, "Brightness power max polling window:"

    const-string v5, "BrightnessPowerClamper"

    if-gt v1, v2, :cond_1

    .line 344
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, should be greater than brightness min polling window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 350
    :cond_1
    rem-int/2addr v1, v2

    if-eqz v1, :cond_2

    .line 352
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget v1, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMaxMillis:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " msec, is not divisible by brightness min polling window:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    iget p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->pollingWindowMinMillis:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 358
    :cond_2
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->customAnimationRate:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    .line 359
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->start()V

    return-void
.end method


# virtual methods
.method public final activatePmicMonitor()V
    .locals 1

    .line 363
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 366
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    return-void
.end method

.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 1

    .line 146
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_1

    .line 147
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 148
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    const/4 p1, 0x2

    .line 149
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 150
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 153
    iget-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    if-nez p1, :cond_0

    .line 154
    iget p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setCustomAnimationRate(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    const/high16 p1, -0x40800000    # -1.0f

    .line 155
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    :cond_0
    const/4 p1, 0x1

    .line 157
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 159
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    .line 161
    :goto_0
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    .line 211
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    .line 212
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x2

    .line 213
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public final deactivatePmicMonitor(I)V
    .locals 0

    if-eqz p1, :cond_0

    goto :goto_0

    .line 373
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    return-void

    .line 376
    :cond_1
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 174
    const-string v0, "BrightnessPowerClamper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentAvgPowerConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUniqueDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentThermalLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mCurrentThermalLevelChanged="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 179
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mPowerThrottlingDataFromDDC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v1, :cond_0

    const-string/jumbo v1, "null"

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {v1}, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 179
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 183
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final getPowerQuotaForThermalStatus(I)F
    .locals 3

    .line 315
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 317
    iget-object p0, p0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;

    .line 318
    iget v2, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->thermalStatus:I

    if-gt v2, p1, :cond_0

    .line 319
    iget v0, v1, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData$ThrottlingLevel;->powerQuotaMilliWatts:F

    goto :goto_0

    :cond_0
    return v0
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 0

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    .line 137
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->loadOverrideData()V

    .line 138
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->start()V

    return-void
.end method

.method public final synthetic lambda$onDeviceConfigChanged$3()V
    .locals 0

    .line 222
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->loadOverrideData()V

    .line 223
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    return-void
.end method

.method public final synthetic lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 201
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V

    .line 202
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateActiveData()V

    return-void
.end method

.method public final synthetic lambda$recalculatePowerQuotaChange$4(IF)V
    .locals 1

    .line 331
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    .line 332
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    .line 333
    iput p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    .line 334
    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->recalculateBrightnessCap()V

    return-void
.end method

.method public final loadOverrideData()V
    .locals 3

    .line 241
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getPowerThrottlingData()Ljava/lang/String;

    move-result-object v0

    .line 242
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataSetMapper:Ljava/util/function/Function;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    return-void
.end method

.method public onDeviceConfigChanged()V
    .locals 2

    .line 221
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    .line 200
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final recalculateActiveData()V
    .locals 3

    .line 229
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 232
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataOverride:Ljava/util/Map;

    .line 233
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_1

    .line 236
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    :cond_1
    :goto_0
    return-void
.end method

.method public final recalculateBrightnessCap()V
    .locals 4

    .line 260
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {p0, v0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->getPowerQuotaForThermalStatus(I)F

    move-result v0

    .line 261
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    const/high16 v2, 0x3f800000    # 1.0f

    if-lez v1, :cond_3

    .line 265
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-static {v1}, Lcom/android/server/display/brightness/BrightnessUtils;->isValidBrightnessValue(F)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    cmpl-float v3, v1, v0

    if-lez v3, :cond_1

    div-float/2addr v0, v1

    .line 269
    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    mul-float v2, v0, v1

    goto :goto_0

    .line 271
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    if-eqz v0, :cond_3

    .line 272
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    if-nez v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->stop()V

    goto :goto_0

    .line 282
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->isStopped()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 283
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->start()V

    .line 292
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    if-eqz v0, :cond_4

    .line 293
    iget v0, v0, Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;->brightnessLowestCapAllowed:F

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v2

    .line 297
    :cond_4
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_5

    .line 298
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power clamper changing current brightness cap mBrightnessCap: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " to target brightness cap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " for current screen brightness: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentBrightness:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\nPower clamper changed state: thermalStatus:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentThermalLevelChanged:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentThermalLevelChanged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentAvgPowerConsumed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCurrentAvgPowerConsumed:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " mCustomAnimationRateSec:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessPowerClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    iput v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mBrightnessCap:F

    .line 306
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateDeviceConfig:F

    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    .line 307
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    return-void

    :cond_5
    const/high16 v0, -0x40800000    # -1.0f

    .line 309
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mCustomAnimationRateSec:F

    return-void
.end method

.method public final recalculatePowerQuotaChange(FI)V
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;IF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;)V
    .locals 2

    .line 247
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getUniqueDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 248
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingDataId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    .line 249
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingDataFromDDC:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingData;

    if-nez v0, :cond_0

    .line 250
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Power throttling data is missing for powerThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessPowerClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    :cond_0
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$PowerData;->getPowerThrottlingConfigData()Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPowerThrottlingConfigData:Lcom/android/server/display/DisplayDeviceConfig$PowerThrottlingConfigData;

    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mPmicMonitor:Lcom/android/server/display/brightness/clamper/PmicMonitor;

    invoke-virtual {v0}, Lcom/android/server/display/brightness/clamper/PmicMonitor;->shutdown()V

    .line 167
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier;->mThermalLevelListener:Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessPowerModifier$ThermalLevelListener;->stop()V

    return-void
.end method
