.class public final Lcom/android/server/powerstats/PowerStatsLogger;
.super Landroid/os/Handler;
.source "PowerStatsLogger.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "PowerStatsLogger"


# instance fields
.field public mDataStoragePath:Ljava/io/File;

.field public mDeleteMeterDataOnBoot:Z

.field public mDeleteModelDataOnBoot:Z

.field public mDeleteResidencyDataOnBoot:Z

.field public final mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

.field public final mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

.field public final mStartWallTime:J


# direct methods
.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;)V
    .locals 4

    .line 327
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    .line 330
    iput-object p10, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    .line 331
    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    .line 333
    new-instance p2, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p2, p1, p3, p4}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 335
    new-instance p3, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p4, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p3, p1, p4, p6}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p3, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 337
    new-instance p4, Lcom/android/server/powerstats/PowerStatsDataStorage;

    iget-object p6, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {p4, p1, p6, p8}, Lcom/android/server/powerstats/PowerStatsDataStorage;-><init>(Landroid/content/Context;Ljava/io/File;Ljava/lang/String;)V

    iput-object p4, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 340
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    .line 341
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->getProtoBytes([Landroid/hardware/power/stats/Channel;)[B

    move-result-object p1

    .line 342
    invoke-virtual {p0, p5, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p6

    iput-boolean p6, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    if-eqz p6, :cond_0

    .line 344
    invoke-virtual {p2}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 345
    invoke-virtual {p0, p5, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 348
    :cond_0
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    .line 349
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumer;)[B

    move-result-object p1

    .line 350
    invoke-virtual {p0, p7, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    if-eqz p2, :cond_1

    .line 352
    invoke-virtual {p3}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 353
    invoke-virtual {p0, p7, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    .line 356
    :cond_1
    invoke-interface {p10}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    .line 357
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->getProtoBytes([Landroid/hardware/power/stats/PowerEntity;)[B

    move-result-object p1

    .line 358
    invoke-virtual {p0, p9, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dataChanged(Ljava/lang/String;[B)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    if-eqz p2, :cond_2

    .line 360
    invoke-virtual {p4}, Lcom/android/server/powerstats/PowerStatsDataStorage;->deleteLogs()V

    .line 361
    invoke-virtual {p0, p9, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->updateCacheFile(Ljava/lang/String;[B)V

    :cond_2
    return-void
.end method


# virtual methods
.method public final dataChanged(Ljava/lang/String;[B)Z
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    .line 260
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 p1, 0x1

    if-eqz p0, :cond_2

    .line 264
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    long-to-int p0, v1

    new-array p0, p0, [B

    .line 268
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 269
    invoke-virtual {v1, p0}, Ljava/io/FileInputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 271
    sget-object v1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v2, "Failed to read cached data from file"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 275
    :goto_1
    invoke-static {p0, p2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_2
    return p1
.end method

.method public dump(Landroid/util/IndentingPrintWriter;)V
    .locals 1

    .line 369
    const-string v0, "PowerStats Meter Data:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 371
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 372
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 373
    const-string v0, "PowerStats Model Data:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 374
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 375
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {v0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 376
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 377
    const-string v0, "PowerStats State Residency Data:"

    invoke-virtual {p1, v0}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 379
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 380
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getDeleteMeterDataOnBoot()Z
    .locals 0

    .line 306
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteMeterDataOnBoot:Z

    return p0
.end method

.method public getDeleteModelDataOnBoot()Z
    .locals 0

    .line 310
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteModelDataOnBoot:Z

    return p0
.end method

.method public getDeleteResidencyDataOnBoot()Z
    .locals 0

    .line 314
    iget-boolean p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDeleteResidencyDataOnBoot:Z

    return p0
.end method

.method public getStartWallTime()J
    .locals 2

    .line 319
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    return-wide v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 82
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    return-void

    .line 87
    :cond_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v0, [I

    .line 88
    invoke-interface {p1, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->readEnergyMeter([I)[Landroid/hardware/power/stats/EnergyMeasurement;

    move-result-object p1

    .line 89
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyMeasurement;J)V

    .line 91
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 92
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyMeasurementUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyMeasurement;)[B

    move-result-object p1

    .line 91
    invoke-virtual {v1, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    .line 96
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v1, v0, [I

    .line 97
    invoke-interface {p1, v1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p1

    .line 98
    iget-wide v1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v1, v2}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 100
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 101
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v0, v0, [I

    .line 110
    invoke-interface {p1, v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumed([I)[Landroid/hardware/power/stats/EnergyConsumerResult;

    move-result-object p1

    .line 111
    iget-wide v2, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v2, v3}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/EnergyConsumerResult;J)V

    .line 113
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 114
    invoke-static {p1, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerResultUtils;->getProtoBytes([Landroid/hardware/power/stats/EnergyConsumerResult;Z)[B

    move-result-object p1

    .line 113
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void

    .line 122
    :cond_2
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    new-array v0, v0, [I

    .line 123
    invoke-interface {p1, v0}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getStateResidency([I)[Landroid/hardware/power/stats/StateResidencyResult;

    move-result-object p1

    .line 124
    iget-wide v0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mStartWallTime:J

    invoke-static {p1, v0, v1}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->adjustTimeSinceBootToEpoch([Landroid/hardware/power/stats/StateResidencyResult;J)V

    .line 126
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    .line 127
    invoke-static {p1}, Lcom/android/server/powerstats/ProtoStreamUtils$StateResidencyResultUtils;->getProtoBytes([Landroid/hardware/power/stats/StateResidencyResult;)[B

    move-result-object p1

    .line 126
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->write([B)V

    return-void
.end method

.method public final updateCacheFile(Ljava/lang/String;[B)V
    .locals 3

    const/4 v0, 0x0

    .line 291
    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mDataStoragePath:Ljava/io/File;

    invoke-direct {v2, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 293
    :try_start_1
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v0

    .line 294
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 295
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    return-void

    :catch_0
    move-exception p0

    goto :goto_0

    :catch_1
    move-exception p0

    move-object v1, v0

    .line 297
    :goto_0
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string p2, "Failed to write current data to cached file"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v0, :cond_0

    .line 299
    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    :cond_0
    return-void
.end method

.method public writeMeterDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 142
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 145
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p1

    .line 146
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->packProtoMessage([Landroid/hardware/power/stats/Channel;Landroid/util/proto/ProtoOutputStream;)V

    .line 149
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsMeterStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$1;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 168
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write energy meter info to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 171
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeModelDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 183
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 186
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p1

    .line 187
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->packProtoMessage([Landroid/hardware/power/stats/EnergyConsumer;Landroid/util/proto/ProtoOutputStream;)V

    .line 190
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsModelStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$2;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$2;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 209
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write energy model info to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method

.method public writeResidencyDataToFile(Ljava/io/FileDescriptor;)V
    .locals 2

    .line 224
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 227
    :try_start_0
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsHALWrapper:Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    invoke-interface {p1}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p1

    .line 228
    invoke-static {p1, v0}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->packProtoMessage([Landroid/hardware/power/stats/PowerEntity;Landroid/util/proto/ProtoOutputStream;)V

    .line 231
    iget-object p1, p0, Lcom/android/server/powerstats/PowerStatsLogger;->mPowerStatsResidencyStorage:Lcom/android/server/powerstats/PowerStatsDataStorage;

    new-instance v1, Lcom/android/server/powerstats/PowerStatsLogger$3;

    invoke-direct {v1, p0, v0}, Lcom/android/server/powerstats/PowerStatsLogger$3;-><init>(Lcom/android/server/powerstats/PowerStatsLogger;Landroid/util/proto/ProtoOutputStream;)V

    invoke-virtual {p1, v1}, Lcom/android/server/powerstats/PowerStatsDataStorage;->read(Lcom/android/server/powerstats/PowerStatsDataStorage$DataElementReadCallback;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 250
    sget-object p1, Lcom/android/server/powerstats/PowerStatsLogger;->TAG:Ljava/lang/String;

    const-string v1, "Failed to write residency data to incident report."

    invoke-static {p1, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 253
    :goto_0
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    return-void
.end method
