.class public Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
.super Ljava/lang/Object;
.source "AggregatedPowerStatsConfig.java"


# instance fields
.field public final mPowerComponentId:I

.field public mProcessorSupplier:Ljava/util/function/Supplier;

.field public mTrackedDeviceStates:[I

.field public mTrackedUidStates:[I


# direct methods
.method public static bridge synthetic -$$Nest$fgetmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;)[I
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmTrackedDeviceStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-void
.end method

.method public static bridge synthetic -$$Nest$fputmTrackedUidStates(Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;[I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    return-void
.end method


# virtual methods
.method public createProcessor()Lcom/android/server/power/stats/processor/PowerStatsProcessor;
    .locals 0

    .line 147
    iget-object p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    if-nez p0, :cond_0

    .line 148
    invoke-static {}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->-$$Nest$sfgetNO_OP_PROCESSOR()Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    move-result-object p0

    return-object p0

    .line 150
    :cond_0
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/power/stats/processor/PowerStatsProcessor;

    return-object p0
.end method

.method public getDeviceStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 4

    .line 121
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    const/4 v2, 0x0

    .line 123
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    const/4 v3, 0x1

    .line 126
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result p0

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v3, "scr"

    invoke-direct {v1, v3, p0, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p0

    return-object p0
.end method

.method public getPowerComponentId()I
    .locals 0

    .line 117
    iget p0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mPowerComponentId:I

    return p0
.end method

.method public getUidStateConfig()[Lcom/android/server/power/stats/processor/MultiStateStats$States;
    .locals 5

    .line 132
    new-instance v0, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v2, 0x0

    .line 134
    invoke-virtual {p0, v1, v2}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v1

    sget-object v2, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_POWER:[Ljava/lang/String;

    const-string/jumbo v3, "pwr"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v1, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v2, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v3, 0x1

    .line 137
    invoke-virtual {p0, v2, v3}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result v2

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_SCREEN:[Ljava/lang/String;

    const-string/jumbo v4, "scr"

    invoke-direct {v1, v4, v2, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    new-instance v2, Lcom/android/server/power/stats/processor/MultiStateStats$States;

    iget-object v3, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    const/4 v4, 0x2

    .line 140
    invoke-virtual {p0, v3, v4}, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->isTracked([II)Z

    move-result p0

    sget-object v3, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig;->STATE_LABELS_PROCESS_STATE:[Ljava/lang/String;

    const-string/jumbo v4, "ps"

    invoke-direct {v2, v4, p0, v3}, Lcom/android/server/power/stats/processor/MultiStateStats$States;-><init>(Ljava/lang/String;Z[Ljava/lang/String;)V

    filled-new-array {v0, v1, v2}, [Lcom/android/server/power/stats/processor/MultiStateStats$States;

    move-result-object p0

    return-object p0
.end method

.method public final isTracked([II)Z
    .locals 3

    const/4 p0, 0x0

    if-nez p1, :cond_0

    return p0

    .line 158
    :cond_0
    array-length v0, p1

    move v1, p0

    :goto_0
    if-ge v1, v0, :cond_2

    aget v2, p1, v1

    if-ne v2, p2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return p0
.end method

.method public setProcessorSupplier(Ljava/util/function/Supplier;)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mProcessorSupplier:Ljava/util/function/Supplier;

    return-object p0
.end method

.method public varargs trackDeviceStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 87
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    if-nez v0, :cond_0

    .line 90
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedDeviceStates:[I

    return-object p0

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component is already configured"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public varargs trackUidStates([I)Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    if-nez v0, :cond_0

    .line 101
    iput-object p1, p0, Lcom/android/server/power/stats/processor/AggregatedPowerStatsConfig$PowerComponent;->mTrackedUidStates:[I

    return-object p0

    .line 99
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Component is already configured"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
