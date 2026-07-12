.class public final synthetic Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper$$ExternalSyntheticLambda3;->f$0:Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;

    check-cast p1, Landroid/hardware/thermal/V2_0/TemperatureThreshold;

    invoke-static {p0, p1}, Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;->$r8$lambda$X0z6Uh_PovrmcJVW60Nm1Y957Fc(Lcom/android/server/power/ThermalManagerService$ThermalHal20Wrapper;Landroid/hardware/thermal/V2_0/TemperatureThreshold;)Landroid/hardware/thermal/TemperatureThreshold;

    move-result-object p0

    return-object p0
.end method
