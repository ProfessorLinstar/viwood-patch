.class public final Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;
.super Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;
.source "StatsPullAtomService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/stats/pull/StatsPullAtomService;


# direct methods
.method public constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V
    .locals 0

    .line 534
    iput-object p1, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-direct {p0}, Lcom/android/server/stats/pull/StatsPullAtomServiceInternal;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/stats/pull/StatsPullAtomService;Lcom/android/server/stats/pull/StatsPullAtomService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;-><init>(Lcom/android/server/stats/pull/StatsPullAtomService;)V

    return-void
.end method


# virtual methods
.method public noteUidProcessState(II)V
    .locals 8

    .line 538
    sget-boolean v0, Lcom/android/server/stats/pull/StatsPullAtomService;->ENABLE_MOBILE_DATA_STATS_AGGREGATED_PULLER:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {v0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 540
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 541
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 542
    iget-object p0, p0, Lcom/android/server/stats/pull/StatsPullAtomService$StatsPullAtomServiceInternalImpl;->this$0:Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-static {p0}, Lcom/android/server/stats/pull/StatsPullAtomService;->-$$Nest$fgetmAggregatedMobileDataStatsPuller(Lcom/android/server/stats/pull/StatsPullAtomService;)Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;

    move-result-object v1

    move v2, p1

    move v3, p2

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/stats/pull/AggregatedMobileDataStatsPuller;->noteUidProcessState(IIJJ)V

    :cond_0
    return-void
.end method
