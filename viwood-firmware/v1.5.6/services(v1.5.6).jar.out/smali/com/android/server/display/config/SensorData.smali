.class public Lcom/android/server/display/config/SensorData;
.super Ljava/lang/Object;
.source "SensorData.java"


# static fields
.field public static final UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;


# instance fields
.field public final maxRefreshRate:F

.field public final minRefreshRate:F

.field public final name:Ljava/lang/String;

.field public final supportedModes:Ljava/util/List;

.field public final type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 37
    new-instance v0, Lcom/android/server/display/config/SensorData;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    const/high16 v4, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 50
    sget-object v5, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    .line 49
    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "FF",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 57
    iput-object p2, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 58
    iput p3, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    .line 59
    iput p4, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    .line 60
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    return-void
.end method

.method public static loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;
    .locals 2

    .line 102
    new-instance v0, Lcom/android/server/display/config/SensorData;

    const v1, 0x104026a

    .line 103
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v1, ""

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static loadAmbientLightSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 90
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getLightSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 92
    invoke-static {p0}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0

    .line 94
    :cond_0
    invoke-static {p1}, Lcom/android/server/display/config/SensorData;->loadAmbientLightSensorConfig(Landroid/content/res/Resources;)Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0
.end method

.method public static loadProxSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 5

    .line 125
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getProxSensor()Ljava/util/List;

    move-result-object p1

    .line 126
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    sget-object p0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object p0

    .line 130
    :cond_0
    sget-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    .line 132
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/config/SensorDetails;

    .line 133
    invoke-virtual {v2}, Lcom/android/server/display/config/SensorDetails;->getFeatureFlag()Ljava/lang/String;

    move-result-object v3

    .line 134
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isUseFusionProxSensorEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->getUseFusionProxSensorFlagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 136
    invoke-static {v2}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    .line 142
    :cond_2
    sget-object p0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    if-ne p0, v0, :cond_4

    .line 143
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/display/config/SensorDetails;

    .line 144
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getFeatureFlag()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 147
    :cond_3
    invoke-static {p1}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object v0

    .line 153
    :cond_4
    sget-object p0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    if-eq p0, v0, :cond_5

    .line 154
    iget-object p0, v0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    const-string p1, ""

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    iget-object p0, v0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return-object p0

    :cond_5
    return-object v0
.end method

.method public static loadScreenOffBrightnessSensorConfig(Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getScreenOffBrightnessSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 113
    invoke-static {p0}, Lcom/android/server/display/config/SensorData;->loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0

    .line 115
    :cond_0
    sget-object p0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object p0
.end method

.method public static loadSensorData(Lcom/android/server/display/config/SensorDetails;)Lcom/android/server/display/config/SensorData;
    .locals 8

    .line 202
    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getRefreshRate()Lcom/android/server/display/config/RefreshRateRange;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMinimum()Ljava/math/BigInteger;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigInteger;->floatValue()F

    move-result v1

    .line 205
    invoke-virtual {v0}, Lcom/android/server/display/config/RefreshRateRange;->getMaximum()Ljava/math/BigInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigInteger;->floatValue()F

    move-result v0

    :goto_0
    move v6, v0

    move v5, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    goto :goto_0

    .line 208
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 207
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v7

    .line 210
    new-instance v2, Lcom/android/server/display/config/SensorData;

    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;FFLjava/util/List;)V

    return-object v2
.end method

.method public static loadSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 196
    sget-object v0, Lcom/android/server/display/config/SensorData;->UNSPECIFIED_SENSOR_DATA:Lcom/android/server/display/config/SensorData;

    return-object v0
.end method

.method public static loadTempSensorConfig(Lcom/android/server/display/feature/DisplayManagerFlags;Lcom/android/server/display/config/DisplayConfiguration;)Lcom/android/server/display/config/SensorData;
    .locals 1

    .line 177
    invoke-virtual {p1}, Lcom/android/server/display/config/DisplayConfiguration;->getTempSensor()Lcom/android/server/display/config/SensorDetails;

    move-result-object p1

    .line 178
    invoke-virtual {p0}, Lcom/android/server/display/feature/DisplayManagerFlags;->isSensorBasedBrightnessThrottlingEnabled()Z

    move-result p0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_0

    .line 181
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getName()Ljava/lang/String;

    move-result-object p0

    .line 182
    invoke-virtual {p1}, Lcom/android/server/display/config/SensorDetails;->getType()Ljava/lang/String;

    move-result-object p1

    .line 183
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    :cond_1
    const-string p1, "SKIN"

    const/4 p0, 0x0

    .line 187
    :cond_2
    new-instance v0, Lcom/android/server/display/config/SensorData;

    invoke-direct {v0, p1, p0}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 179
    :cond_3
    :goto_0
    invoke-static {}, Lcom/android/server/display/config/SensorData;->loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;

    move-result-object p0

    return-object p0
.end method

.method public static loadTempSensorUnspecifiedConfig()Lcom/android/server/display/config/SensorData;
    .locals 3

    .line 168
    new-instance v0, Lcom/android/server/display/config/SensorData;

    const-string v1, "SKIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/display/config/SensorData;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 69
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v0, :cond_0

    if-nez v1, :cond_2

    :cond_0
    if-nez v0, :cond_1

    .line 70
    iget-object v0, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    :cond_1
    if-nez v1, :cond_3

    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    .line 72
    invoke-virtual {p2, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 77
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SensorData{type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->type:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", name= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/SensorData;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", refreshRateRange: ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->minRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/SensorData;->maxRefreshRate:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "], supportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/SensorData;->supportedModes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
