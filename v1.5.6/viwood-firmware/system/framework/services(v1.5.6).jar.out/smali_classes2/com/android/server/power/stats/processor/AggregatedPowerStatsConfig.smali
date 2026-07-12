.class public Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsConfig.java"


# static fields
.field public static final NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

.field public static final STATE_LABELS_POWER:[Ljava/lang/String;

.field public static final STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

.field public static final STATE_LABELS_SCREEN:[Ljava/lang/String;


# instance fields
.field public mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

.field public mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

.field public final mPowerComponents:Ljava/util/List;


# direct methods
.method public static bridge synthetic -$$Nest$sfgetNO_OP_PROCESSOR()Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 52
    const-string/jumbo v0, "pwr-battery"

    const-string/jumbo v1, "pwr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    .line 57
    const-string/jumbo v0, "scr-on"

    const-string/jumbo v1, "scr-other"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const/4 v0, 0x5

    .line 63
    new-array v1, v0, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 65
    invoke-static {v2}, Landroid/os/BatteryConsumer;->processStateToString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 67
    :cond_0
    sput-object v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    .line 249
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;

    invoke-direct {v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$1;-><init>()V

    sput-object v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->NO_OP_PROCESSOR:Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public createPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 238
    :cond_0
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 239
    iget-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-static {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 240
    iget-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-static {p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 242
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    if-eqz p0, :cond_1

    .line 243
    invoke-virtual {v0, p0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    :cond_1
    return-object v0
.end method

.method public getPowerComponentsAggregatedStatsConfigs()Ljava/util/List;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    return-object p0
.end method

.method public trackCustomPowerComponents(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 216
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerStatsProcessorFactory:Ljava/util/function/Supplier;

    .line 217
    new-instance p1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    const/4 v0, -0x1

    invoke-direct {p1, v0}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mCustomPowerComponent:Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    return-object p1
.end method

.method public trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 178
    new-instance v0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    invoke-direct {v0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;-><init>(I)V

    .line 179
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public trackPowerComponent(II)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 3

    const/4 v0, 0x0

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 192
    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->mPowerComponents:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    .line 193
    invoke-virtual {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->getPowerComponentId()I

    move-result v2

    if-ne v2, p2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 204
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->trackPowerComponent(I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;

    move-result-object p0

    .line 205
    invoke-static {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fputmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V

    .line 206
    invoke-static {v1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->-$$Nest$fputmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V

    return-object p0

    .line 200
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Required component "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " is not configured"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
