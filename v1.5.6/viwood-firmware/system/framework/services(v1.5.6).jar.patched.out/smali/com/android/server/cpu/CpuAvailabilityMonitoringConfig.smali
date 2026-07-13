.class public abstract Lcom/android/server/cpu/CpuAvailabilityMonitoringConfig;
.super Ljava/lang/Object;
.source "CpuAvailabilityMonitoringConfig.java"


# direct methods
.method public static toCpusetString(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid cpuset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 103
    :cond_0
    const-string p0, "CPUSET_BACKGROUND"

    return-object p0

    .line 101
    :cond_1
    const-string p0, "CPUSET_ALL"

    return-object p0
.end method
