.class public Lcom/android/server/display/config/RefreshRateData;
.super Ljava/lang/Object;
.source "RefreshRateData.java"


# static fields
.field public static DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;


# instance fields
.field public final defaultPeakRefreshRate:I

.field public final defaultRefreshRate:I

.field public final defaultRefreshRateInHbmHdr:I

.field public final defaultRefreshRateInHbmSunlight:I

.field public final lowLightBlockingZoneSupportedModes:Ljava/util/List;

.field public final lowPowerSupportedModes:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    .line 32
    invoke-static {v0, v0}, Lcom/android/server/display/config/RefreshRateData;->loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;

    move-result-object v0

    sput-object v0, Lcom/android/server/display/config/RefreshRateData;->DEFAULT_REFRESH_RATE_DATA:Lcom/android/server/display/config/RefreshRateData;

    return-void
.end method

.method public constructor <init>(IIIILjava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/server/display/config/SupportedModeData;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    .line 75
    iput p2, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    .line 76
    iput p3, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    .line 77
    iput p4, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    .line 78
    invoke-static {p5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    .line 80
    invoke-static {p6}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    return-void
.end method

.method public static loadDefaultPeakRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 136
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultPeakRefreshRate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x10e0063

    .line 138
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRate()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x10e0066

    .line 128
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, 0x3c

    return p0
.end method

.method public static loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmHdr()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x10e0067

    .line 149
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static loadDefaultRefreshRateInHbmSunlight(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I
    .locals 1

    if-eqz p0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getDefaultRefreshRateInHbmSunlight()Ljava/math/BigInteger;

    move-result-object p0

    invoke-virtual {p0}, Ljava/math/BigInteger;->intValue()I

    move-result p0

    return p0

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0x10e0068

    .line 160
    invoke-virtual {p1, p0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static loadRefreshRateData(Lcom/android/server/display/config/DisplayConfiguration;Landroid/content/res/Resources;)Lcom/android/server/display/config/RefreshRateData;
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    move-object p0, v0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/display/config/DisplayConfiguration;->getRefreshRate()Lcom/android/server/display/config/RefreshRateConfigs;

    move-result-object p0

    .line 102
    :goto_0
    invoke-static {p0, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v2

    .line 103
    invoke-static {p0, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultPeakRefreshRate(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v3

    .line 104
    invoke-static {p0, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRateInHbm(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v4

    .line 105
    invoke-static {p0, p1}, Lcom/android/server/display/config/RefreshRateData;->loadDefaultRefreshRateInHbmSunlight(Lcom/android/server/display/config/RefreshRateConfigs;Landroid/content/res/Resources;)I

    move-result v5

    if-nez p0, :cond_1

    move-object p1, v0

    goto :goto_1

    .line 109
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowPowerSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object p1

    .line 110
    :goto_1
    invoke-static {p1}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v6

    if-nez p0, :cond_2

    move-object p0, v0

    goto :goto_2

    .line 113
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/display/config/RefreshRateConfigs;->getLowerBlockingZoneConfigs()Lcom/android/server/display/config/BlockingZoneConfig;

    move-result-object p0

    :goto_2
    if-nez p0, :cond_3

    goto :goto_3

    .line 115
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/display/config/BlockingZoneConfig;->getSupportedModes()Lcom/android/server/display/config/NonNegativeFloatToFloatMap;

    move-result-object v0

    .line 116
    :goto_3
    invoke-static {v0}, Lcom/android/server/display/config/SupportedModeData;->load(Lcom/android/server/display/config/NonNegativeFloatToFloatMap;)Ljava/util/List;

    move-result-object v7

    .line 118
    new-instance v1, Lcom/android/server/display/config/RefreshRateData;

    invoke-direct/range {v1 .. v7}, Lcom/android/server/display/config/RefreshRateData;-><init>(IIIILjava/util/List;Ljava/util/List;)V

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefreshRateData {defaultRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultPeakRefreshRate: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultPeakRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmHdr: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmHdr:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", defaultRefreshRateInHbmSunlight: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/config/RefreshRateData;->defaultRefreshRateInHbmSunlight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lowPowerSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/config/RefreshRateData;->lowPowerSupportedModes:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", lowLightBlockingZoneSupportedModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/display/config/RefreshRateData;->lowLightBlockingZoneSupportedModes:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "} "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
