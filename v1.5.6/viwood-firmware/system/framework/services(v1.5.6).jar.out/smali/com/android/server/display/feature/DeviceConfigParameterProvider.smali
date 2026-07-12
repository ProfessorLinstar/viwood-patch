.class public Lcom/android/server/display/feature/DeviceConfigParameterProvider;
.super Ljava/lang/Object;
.source "DeviceConfigParameterProvider.java"


# instance fields
.field public final mDeviceConfig:Landroid/provider/DeviceConfigInterface;


# direct methods
.method public constructor <init>(Landroid/provider/DeviceConfigInterface;)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    return-void
.end method


# virtual methods
.method public addOnPropertiesChangedListener(Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 1

    .line 169
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v0, "display_manager"

    invoke-interface {p0, v0, p1, p2}, Landroid/provider/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method

.method public getBrightnessThrottlingData()Ljava/lang/String;
    .locals 3

    .line 81
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v0, "brightness_throttling_data"

    const/4 v1, 0x0

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getHighAmbientBrightnessThresholds()[F
    .locals 1

    .line 116
    const-string v0, "fixed_refresh_rate_high_ambient_brightness_thresholds"

    .line 117
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    .line 116
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p0

    return-object p0
.end method

.method public getHighDisplayBrightnessThresholds()[F
    .locals 1

    .line 131
    const-string v0, "fixed_refresh_rate_high_display_brightness_thresholds"

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    .line 131
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p0

    return-object p0
.end method

.method public final getIntArrayProperty(Ljava/lang/String;)[I
    .locals 3

    .line 181
    iget-object v0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v1, "display_manager"

    const/4 v2, 0x0

    invoke-interface {v0, v1, p1, v2}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0, p1}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->parseIntArray(Ljava/lang/String;)[I

    move-result-object p0

    return-object p0

    :cond_0
    return-object v2
.end method

.method public getLowAmbientBrightnessThresholds()[F
    .locals 1

    .line 161
    const-string/jumbo v0, "peak_refresh_rate_ambient_thresholds"

    .line 162
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    .line 161
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->ambientBrightnessThresholdsIntToFloat([I)[F

    move-result-object p0

    return-object p0
.end method

.method public getLowDisplayBrightnessThresholds()[F
    .locals 1

    .line 146
    const-string/jumbo v0, "peak_refresh_rate_brightness_thresholds"

    .line 147
    invoke-virtual {p0, v0}, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->getIntArrayProperty(Ljava/lang/String;)[I

    move-result-object p0

    .line 146
    invoke-static {p0}, Lcom/android/server/display/utils/DeviceConfigParsingUtils;->displayBrightnessThresholdsIntToFloat([I)[F

    move-result-object p0

    return-object p0
.end method

.method public getPeakRefreshRateDefault()F
    .locals 3

    .line 66
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "peak_refresh_rate_default"

    const/high16 v1, -0x40800000    # -1.0f

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method public getPowerThrottlingData()Ljava/lang/String;
    .locals 3

    .line 75
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "power_throttling_data"

    const/4 v1, 0x0

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getRefreshRateInHbmHdr()I
    .locals 3

    .line 91
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "refresh_rate_in_hbm_hdr"

    const/4 v1, -0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInHbmSunlight()I
    .locals 3

    .line 86
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "refresh_rate_in_hbm_sunlight"

    const/4 v1, -0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInHighZone()I
    .locals 3

    .line 97
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "refresh_rate_in_high_zone"

    const/4 v1, -0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getRefreshRateInLowZone()I
    .locals 3

    .line 102
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string/jumbo v0, "refresh_rate_in_zone"

    const/4 v1, -0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public isDisableScreenWakeLocksWhileCachedFeatureEnabled()Z
    .locals 3

    .line 59
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    const-string v0, "disable_screen_wake_locks_while_cached"

    const/4 v1, 0x1

    const-string v2, "display_manager"

    invoke-interface {p0, v2, v0, v1}, Landroid/provider/DeviceConfigInterface;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public isHdrOutputControlFeatureEnabled()Z
    .locals 2

    .line 47
    const-string p0, "enable_hdr_output_control"

    const/4 v0, 0x1

    const-string v1, "display_manager"

    invoke-static {v1, p0, v0}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final parseIntArray(Ljava/lang/String;)[I
    .locals 4

    .line 192
    const-string p0, ","

    invoke-virtual {p1, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 193
    array-length v0, p0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 197
    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incorrect format for array: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\'"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "DisplayFeatureProvider"

    invoke-static {v0, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    return-object v1
.end method

.method public removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V
    .locals 0

    .line 176
    iget-object p0, p0, Lcom/android/server/display/feature/DeviceConfigParameterProvider;->mDeviceConfig:Landroid/provider/DeviceConfigInterface;

    invoke-interface {p0, p1}, Landroid/provider/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    return-void
.end method
