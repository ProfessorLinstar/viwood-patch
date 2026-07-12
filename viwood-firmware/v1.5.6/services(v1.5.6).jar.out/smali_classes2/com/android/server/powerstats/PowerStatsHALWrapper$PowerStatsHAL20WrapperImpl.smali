.class public final Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;
.super Ljava/lang/Object;
.source "PowerStatsHALWrapper.java"

# interfaces
.implements Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;


# static fields
.field public static sVintfPowerStats:Ljava/util/function/Supplier;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    new-instance p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$VintfHalCache;-><init>(Lcom/android/server/powerstats/PowerStatsHALWrapper-IA;)V

    .line 151
    sput-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    .line 153
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 155
    sput-object v0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    return-void

    .line 157
    :cond_0
    sput-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;
    .locals 1

    .line 213
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 216
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 218
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get energy consumer results: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;
    .locals 2

    .line 197
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 199
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 201
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get energy consumer info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;
    .locals 2

    .line 229
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 231
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 233
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get energy meter info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;
    .locals 2

    .line 165
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 167
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0}, Landroid/hardware/power/stats/IPowerStats;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 169
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to get power entity info: "

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;
    .locals 1

    .line 181
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 184
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 186
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get state residency: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public isInitialized()Z
    .locals 0

    .line 258
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;
    .locals 1

    .line 244
    sget-object p0, Lcom/android/server/powerstats/PowerStatsHALWrapper$PowerStatsHAL20WrapperImpl;->sVintfPowerStats:Ljava/util/function/Supplier;

    if-eqz p0, :cond_0

    .line 247
    :try_start_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/power/stats/IPowerStats;

    invoke-interface {p0, p1}, Landroid/hardware/power/stats/IPowerStats;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 249
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsHALWrapper;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Failed to get energy measurements: "

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method
