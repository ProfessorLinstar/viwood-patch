.class public abstract Lcom/android/server/profcollect/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field public static lastTraceTime:Ljava/time/Instant;


# direct methods
.method public static synthetic $r8$lambda$4AnkZ4N7v4pVtjALMTgogVI3G5o(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 1

    .line 53
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->trace_system(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 55
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to initiate trace: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfcollectForwardingService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$CkNXgWI7XkRgi2n7sB3S2tP_TnQ(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    int-to-float p3, p3

    .line 90
    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/android/server/profcollect/IProfCollectd;->trace_process(Ljava/lang/String;Ljava/lang/String;F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 94
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to initiate trace: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfcollectForwardingService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static synthetic $r8$lambda$EqRtQPpuJSNDaHKUtkHeBHTn2C0(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V
    .locals 1

    .line 71
    :try_start_0
    invoke-interface {p0, p1}, Lcom/android/server/profcollect/IProfCollectd;->trace_system(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/ServiceSpecificException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 73
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to initiate trace: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ProfcollectForwardingService"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 33
    sget-object v0, Ljava/time/Instant;->EPOCH:Ljava/time/Instant;

    sput-object v0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    return-void
.end method

.method public static checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z
    .locals 1

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 116
    :cond_0
    invoke-static {}, Lcom/android/server/profcollect/Utils;->isInCooldownOrReset()Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 119
    :cond_1
    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sVerityEnforced:Z

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sAdbActive:Z

    if-nez p0, :cond_2

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsInteractive:Z

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/profcollect/ProfcollectForwardingService;->sIsBatteryLow:Z

    if-nez p0, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0
.end method

.method public static isInCooldownOrReset()Z
    .locals 4

    .line 105
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sget-object v1, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    const-wide/16 v2, 0x1e

    invoke-virtual {v1, v2, v3}, Ljava/time/Instant;->plusSeconds(J)Ljava/time/Instant;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/time/Instant;->isBefore(Ljava/time/Instant;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    invoke-static {}, Ljava/time/Instant;->now()Ljava/time/Instant;

    move-result-object v0

    sput-object v0, Lcom/android/server/profcollect/Utils;->lastTraceTime:Ljava/time/Instant;

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public static traceProcess(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2

    .line 85
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 88
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)Z
    .locals 2

    .line 48
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 51
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static traceSystem(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;I)Z
    .locals 2

    .line 66
    invoke-static {p0}, Lcom/android/server/profcollect/Utils;->checkPrerequisites(Lcom/android/server/profcollect/IProfCollectd;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 69
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->get()Lcom/android/internal/os/BackgroundThread;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/os/BackgroundThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/profcollect/Utils$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/profcollect/IProfCollectd;Ljava/lang/String;)V

    int-to-long p0, p2

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    const/4 p0, 0x1

    return p0
.end method

.method public static withFrequency(Ljava/lang/String;I)Z
    .locals 1

    .line 37
    const-string/jumbo v0, "profcollect_native_boot"

    invoke-static {v0, p0, p1}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    .line 39
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(I)I

    move-result p1

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
