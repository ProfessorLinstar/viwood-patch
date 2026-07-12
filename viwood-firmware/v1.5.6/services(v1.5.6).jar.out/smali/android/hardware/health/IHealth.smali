.class public interface abstract Landroid/hardware/health/IHealth;
.super Ljava/lang/Object;
.source "IHealth.java"

# interfaces
.implements Landroid/os/IInterface;


# static fields
.field public static final DESCRIPTOR:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0x24

    const/16 v1, 0x2e

    .line 654
    const-string v2, "android$hardware$health$IHealth"

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/hardware/health/IHealth;->DESCRIPTOR:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract getBatteryHealthData()Landroid/hardware/health/BatteryHealthData;
.end method

.method public abstract getCapacity()I
.end method

.method public abstract getChargeCounterUah()I
.end method

.method public abstract getChargeStatus()I
.end method

.method public abstract getChargingPolicy()I
.end method

.method public abstract getCurrentAverageMicroamps()I
.end method

.method public abstract getCurrentNowMicroamps()I
.end method

.method public abstract getEnergyCounterNwh()J
.end method

.method public abstract getHealthInfo()Landroid/hardware/health/HealthInfo;
.end method

.method public abstract registerCallback(Landroid/hardware/health/IHealthInfoCallback;)V
.end method

.method public abstract unregisterCallback(Landroid/hardware/health/IHealthInfoCallback;)V
.end method

.method public abstract update()V
.end method
