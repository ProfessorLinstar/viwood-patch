.class public abstract Lcom/android/server/health/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# direct methods
.method public static copyV1Battery(Landroid/hardware/health/HealthInfo;Landroid/hardware/health/HealthInfo;)V
    .locals 2

    .line 64
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerAcOnline:Z

    .line 65
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerUsbOnline:Z

    .line 66
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->chargerWirelessOnline:Z

    .line 67
    iget v0, p1, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingCurrentMicroamps:I

    .line 68
    iget v0, p1, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->maxChargingVoltageMicrovolts:I

    .line 69
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 70
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryHealth:I

    .line 71
    iget-boolean v0, p1, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    iput-boolean v0, p0, Landroid/hardware/health/HealthInfo;->batteryPresent:Z

    .line 72
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 73
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryVoltageMillivolts:I

    .line 74
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryTemperatureTenthsCelsius:I

    .line 75
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentMicroamps:I

    .line 76
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCycleCount:I

    .line 77
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeUah:I

    .line 78
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeCounterUah:I

    .line 79
    iget-object v0, p1, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    iput-object v0, p0, Landroid/hardware/health/HealthInfo;->batteryTechnology:Ljava/lang/String;

    .line 80
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCurrentAverageMicroamps:I

    .line 81
    iget v0, p1, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    iput v0, p0, Landroid/hardware/health/HealthInfo;->batteryCapacityLevel:I

    .line 82
    iget-wide v0, p1, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    iput-wide v0, p0, Landroid/hardware/health/HealthInfo;->batteryChargeTimeToFullNowSeconds:J

    .line 83
    iget p1, p1, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    iput p1, p0, Landroid/hardware/health/HealthInfo;->batteryFullChargeDesignCapacityUah:I

    return-void
.end method
