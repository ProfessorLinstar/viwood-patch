.class public Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;
.super Ljava/lang/Object;
.source "BrightnessThermalModifier.java"

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

.field public mDataId:Ljava/lang/String;

.field public final mDataPointMapper:Ljava/util/function/BiFunction;

.field public final mDataSetMapper:Ljava/util/function/Function;

.field public final mHandler:Landroid/os/Handler;

.field public final mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

.field public mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

.field public mThermalThrottlingDataOverride:Ljava/util/Map;

.field public mThrottlingStatus:I

.field public mUniqueDisplayId:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3ZG5HSTRQ2t7KNJMOwKgXy204sI(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$XR3z-g3_7ZUkt1ztDHPdAtpOdQ8(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$onDeviceConfigChanged$3()V

    return-void
.end method

.method public static synthetic $r8$lambda$eW0xlnIU08x6wWuR_DZG0tFTYac(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jdbc_JzcgGEXRPTp_54StI8jthQ(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;
    .locals 1

    .line 93
    :try_start_0
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseThermalStatus(Ljava/lang/String;)I

    move-result p0

    .line 94
    invoke-static {p1}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseBrightness(Ljava/lang/String;)F

    move-result p1

    .line 95
    new-instance v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    invoke-direct {v0, p0, p1}, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;-><init>(IF)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mthermalStatusChanged(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->thermalStatusChanged(I)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 1

    .line 107
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;-><init>()V

    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    sget-object v0, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    const/4 v0, 0x0

    .line 76
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 80
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 82
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 84
    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    const/4 v0, 0x0

    .line 86
    iput v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 88
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    .line 89
    iput-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    .line 91
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda0;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    .line 101
    new-instance v0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda1;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Ljava/util/function/Function;

    .line 114
    iput-object p2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    .line 116
    invoke-virtual {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;->getDeviceConfigParameterProvider()Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    .line 117
    new-instance p3, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-direct {p3, p0, p1, p2}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$Injector;Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    .line 118
    new-instance p1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0, p4}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {p2, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private synthetic lambda$onDeviceConfigChanged$3()V
    .locals 0

    .line 198
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->loadOverrideData()V

    .line 199
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData()V

    return-void
.end method

.method private synthetic lambda$onDisplayChanged$2(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 177
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V

    .line 178
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateActiveData()V

    return-void
.end method

.method private loadOverrideData()V
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mConfigParameterProvider:Lcom/android/server/display/feature/DeviceConfigParameterProvider;

    invoke-virtual {v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getBrightnessThrottlingData()Ljava/lang/String;

    move-result-object v0

    .line 217
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataPointMapper:Ljava/util/function/BiFunction;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataSetMapper:Ljava/util/function/Function;

    invoke-static {v0, v1, v2}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->parseDeviceConfigMap(Ljava/lang/String;Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    return-void
.end method

.method private recalculateActiveData()V
    .locals 3

    .line 205
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    .line 209
    sget-object v2, Ljava/util/Collections;->EMPTY_MAP:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    .line 212
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateBrightnessCap()V

    :cond_1
    :goto_0
    return-void
.end method

.method private recalculateBrightnessCap()V
    .locals 5

    .line 234
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, v0, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;->throttlingLevels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;

    .line 237
    iget v3, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->thermalStatus:I

    iget v4, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    if-gt v3, v4, :cond_0

    .line 238
    iget v1, v2, Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData$ThrottlingLevel;->brightness:F

    goto :goto_0

    .line 246
    :cond_0
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v1, v0

    if-eqz v0, :cond_1

    .line 247
    iput v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    .line 248
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mChangeListener:Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;

    invoke-interface {p0}, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ClamperChangeListener;->onChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public apply(Landroid/hardware/display/DisplayManagerInternal$DisplayPowerRequest;Lcom/android/server/display/DisplayBrightnessState$Builder;)V
    .locals 3

    .line 127
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getMaxBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float p1, p1, v0

    const/4 v1, 0x0

    if-lez p1, :cond_1

    .line 128
    invoke-virtual {p2, v0}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setMaxBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 129
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightness()F

    move-result p1

    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightness(F)Lcom/android/server/display/DisplayBrightnessState$Builder;

    const/4 p1, 0x1

    .line 130
    invoke-virtual {p2, p1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setBrightnessMaxReason(I)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 131
    invoke-virtual {p2}, Lcom/android/server/display/DisplayBrightnessState$Builder;->getBrightnessReason()Lcom/android/server/display/brightness/BrightnessReason;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Lcom/android/server/display/brightness/BrightnessReason;->addModifier(I)V

    .line 134
    iget-boolean v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p2, v1}, Lcom/android/server/display/DisplayBrightnessState$Builder;->setIsSlowChange(Z)Lcom/android/server/display/DisplayBrightnessState$Builder;

    .line 137
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    return-void

    .line 139
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    return-void
.end method

.method public applyStateChange(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;)V
    .locals 1

    .line 187
    iget v0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    iget p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    cmpl-float v0, v0, p0

    if-lez v0, :cond_0

    .line 188
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightness:F

    const/4 p0, 0x1

    .line 189
    iput p0, p1, Lcom/android/server/display/brightness/clamper/BrightnessClamperController$ModifiersAggregatedState;->mMaxBrightnessReason:I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 2

    .line 150
    const-string v0, "BrightnessThermalClamper:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mThrottlingStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mUniqueDisplayId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 153
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 154
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataOverride: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataOverride:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 155
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataFromDeviceConfig: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mDataActive: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataActive:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mBrightnessCap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mBrightnessCap:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mApplied:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mApplied:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 159
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public final synthetic lambda$new$1(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V

    .line 120
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->loadOverrideData()V

    return-void
.end method

.method public onDeviceConfigChanged()V
    .locals 2

    .line 197
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDisplayChanged(Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V
    .locals 2

    .line 176
    iget-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;Lcom/android/server/display/brightness/clamper/BrightnessClamperController$DisplayDeviceData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setAmbientLux(F)V
    .locals 0

    .line 0
    return-void
.end method

.method public final setDisplayData(Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;)V
    .locals 2

    .line 222
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getUniqueDisplayId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mUniqueDisplayId:Ljava/lang/String;

    .line 223
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getThermalThrottlingDataId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    .line 224
    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getThermalBrightnessThrottlingData()Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalThrottlingDataFromDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig$ThermalBrightnessThrottlingData;

    if-nez v0, :cond_0

    .line 225
    const-string v0, "default"

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Thermal throttling data is missing for thermalThrottlingDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mDataId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BrightnessThermalClamper"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :cond_0
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-interface {p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalData;->getTempSensor()Lcom/android/server/display/config/SensorData;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->registerSensor(Lcom/android/server/display/config/SensorData;)V

    return-void
.end method

.method public shouldListenToLightSensor()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public stop()V
    .locals 0

    .line 145
    iget-object p0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThermalStatusObserver:Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;

    invoke-virtual {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier$ThermalStatusObserver;->stopObserving()V

    return-void
.end method

.method public final thermalStatusChanged(I)V
    .locals 1

    .line 253
    iget v0, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    if-eq v0, p1, :cond_0

    .line 254
    iput p1, p0, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->mThrottlingStatus:I

    .line 255
    invoke-direct {p0}, Lcom/android/server/display/brightness/clamper/BrightnessThermalModifier;->recalculateBrightnessCap()V

    :cond_0
    return-void
.end method
