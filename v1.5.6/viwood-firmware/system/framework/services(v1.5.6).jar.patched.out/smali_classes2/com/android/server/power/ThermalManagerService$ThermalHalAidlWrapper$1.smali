.class public Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;
.super Landroid/hardware/thermal/IThermalChangedCallback$Stub;
.source "ThermalManagerService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;


# direct methods
.method public constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;)V
    .locals 0

    .line 1160
    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    invoke-direct {p0}, Landroid/hardware/thermal/IThermalChangedCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 0

    .line 1190
    const-string p0, "4c4fc474c40b64963eb8d78b713b1095fecd72f0"

    return-object p0
.end method

.method public getInterfaceVersion()I
    .locals 0

    .line 0
    const/4 p0, 0x3

    return p0
.end method

.method public notifyThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V
    .locals 2

    .line 1177
    iget v0, p1, Landroid/hardware/thermal/TemperatureThreshold;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1178
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onThresholdChanged(Landroid/hardware/thermal/TemperatureThreshold;)V

    :cond_0
    return-void
.end method

.method public notifyThrottling(Landroid/hardware/thermal/Temperature;)V
    .locals 4

    .line 1164
    new-instance v0, Landroid/os/Temperature;

    iget v1, p1, Landroid/hardware/thermal/Temperature;->value:F

    iget v2, p1, Landroid/hardware/thermal/Temperature;->type:I

    iget-object v3, p1, Landroid/hardware/thermal/Temperature;->name:Ljava/lang/String;

    iget p1, p1, Landroid/hardware/thermal/Temperature;->throttlingStatus:I

    invoke-direct {v0, v1, v2, v3, p1}, Landroid/os/Temperature;-><init>(FILjava/lang/String;I)V

    .line 1166
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1168
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper$1;->this$0:Lcom/android/server/power/ThermalManagerService$ThermalHalAidlWrapper;

    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper;->mCallback:Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;

    invoke-interface {p0, v0}, Lcom/android/server/power/ThermalManagerService$ThermalHalWrapper$WrapperThermalChangedCallback;->onTemperatureChanged(Landroid/os/Temperature;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1170
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1171
    throw p0
.end method
