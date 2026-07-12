.class public Lcom/android/server/powerstats/PowerStatsService$1;
.super Landroid/os/IPowerStatsService$Stub;
.source "PowerStatsService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/powerstats/PowerStatsService;


# direct methods
.method public static synthetic $r8$lambda$fMDPgpm7l5sfkeriE4yKZRK8reM(Lcom/android/server/powerstats/PowerStatsService$1;[ILandroid/os/ResultReceiver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/powerstats/PowerStatsService$1;->lambda$getPowerMonitorReadings$1([ILandroid/os/ResultReceiver;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wTg4t_wXyeO0yCJjTtZ_Tg5MF4s(Lcom/android/server/powerstats/PowerStatsService$1;Landroid/os/ResultReceiver;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsService$1;->lambda$getSupportedPowerMonitors$0(Landroid/os/ResultReceiver;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/powerstats/PowerStatsService;)V
    .locals 0

    .line 216
    iput-object p1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-direct {p0}, Landroid/os/IPowerStatsService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmContext(Lcom/android/server/powerstats/PowerStatsService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object v0

    if-nez v0, :cond_1

    .line 244
    invoke-static {}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PowerStats HAL is not initialized.  No data available."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 246
    :cond_1
    array-length v0, p3

    if-lez v0, :cond_5

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string v1, "--proto"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 247
    const-string/jumbo p2, "model"

    const/4 v0, 0x1

    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 248
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeModelDataToFile(Ljava/io/FileDescriptor;)V

    return-void

    .line 249
    :cond_2
    const-string/jumbo p2, "meter"

    aget-object v1, p3, v0

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 250
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeMeterDataToFile(Ljava/io/FileDescriptor;)V

    return-void

    .line 251
    :cond_3
    const-string/jumbo p2, "residency"

    aget-object p3, p3, v0

    invoke-virtual {p2, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 252
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->writeResidencyDataToFile(Ljava/io/FileDescriptor;)V

    :cond_4
    :goto_0
    return-void

    .line 255
    :cond_5
    new-instance p1, Landroid/util/IndentingPrintWriter;

    invoke-direct {p1, p2}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;)V

    .line 256
    const-string p2, "PowerStatsService dumpsys: available PowerEntities"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 257
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getPowerEntityInfo()[Landroid/hardware/power/stats/PowerEntity;

    move-result-object p2

    .line 258
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 259
    invoke-static {p2, p1}, Lcom/android/server/powerstats/ProtoStreamUtils$PowerEntityUtils;->dumpsys([Landroid/hardware/power/stats/PowerEntity;Ljava/io/PrintWriter;)V

    .line 260
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 262
    const-string p2, "PowerStatsService dumpsys: available Channels"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 263
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyMeterInfo()[Landroid/hardware/power/stats/Channel;

    move-result-object p2

    .line 264
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 265
    invoke-static {p2, p1}, Lcom/android/server/powerstats/ProtoStreamUtils$ChannelUtils;->dumpsys([Landroid/hardware/power/stats/Channel;Ljava/io/PrintWriter;)V

    .line 266
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 268
    const-string p2, "PowerStatsService dumpsys: available EnergyConsumers"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 269
    iget-object p2, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p2}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetPowerStatsHal(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/server/powerstats/PowerStatsHALWrapper$IPowerStatsHALWrapper;->getEnergyConsumerInfo()[Landroid/hardware/power/stats/EnergyConsumer;

    move-result-object p2

    .line 270
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 271
    invoke-static {p2, p1}, Lcom/android/server/powerstats/ProtoStreamUtils$EnergyConsumerUtils;->dumpsys([Landroid/hardware/power/stats/EnergyConsumer;Ljava/io/PrintWriter;)V

    .line 272
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    .line 274
    const-string p2, "PowerStatsService dumpsys: PowerStatsLogger stats"

    invoke-virtual {p1, p2}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->increaseIndent()Landroid/util/IndentingPrintWriter;

    .line 276
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {p0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$fgetmPowerStatsLogger(Lcom/android/server/powerstats/PowerStatsService;)Lcom/android/server/powerstats/PowerStatsLogger;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsLogger;->dump(Landroid/util/IndentingPrintWriter;)V

    .line 277
    invoke-virtual {p1}, Landroid/util/IndentingPrintWriter;->decreaseIndent()Landroid/util/IndentingPrintWriter;

    return-void
.end method

.method public getPowerMonitorReadings([ILandroid/os/ResultReceiver;)V
    .locals 3

    .line 230
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 231
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 233
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 234
    iget-object v1, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v1}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;[ILandroid/os/ResultReceiver;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public getSupportedPowerMonitors(Landroid/os/ResultReceiver;)V
    .locals 2

    .line 221
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 223
    iget-object v0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-static {v0}, Lcom/android/server/powerstats/PowerStatsService;->-$$Nest$mgetHandler(Lcom/android/server/powerstats/PowerStatsService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/android/server/powerstats/PowerStatsService$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/powerstats/PowerStatsService$1;Landroid/os/ResultReceiver;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$getPowerMonitorReadings$1([ILandroid/os/ResultReceiver;I)V
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/powerstats/PowerStatsService;->getPowerMonitorReadingsImpl([ILandroid/os/ResultReceiver;I)V

    return-void
.end method

.method public final synthetic lambda$getSupportedPowerMonitors$0(Landroid/os/ResultReceiver;)V
    .locals 0

    .line 223
    iget-object p0, p0, Lcom/android/server/powerstats/PowerStatsService$1;->this$0:Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {p0, p1}, Lcom/android/server/powerstats/PowerStatsService;->getSupportedPowerMonitorsImpl(Landroid/os/ResultReceiver;)V

    return-void
.end method
