.class Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;
.super Ljava/lang/Object;
.source "ThermalManagerService.java"


# instance fields
.field public temperature:F

.field public time:J


# direct methods
.method public constructor <init>(JF)V
    .locals 0

    .line 2228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2229
    iput-wide p1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    .line 2230
    iput p3, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    .line 2235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Sample[temperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->temperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/ThermalManagerService$TemperatureWatcher$Sample;->time:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
