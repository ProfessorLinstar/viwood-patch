.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V
    .locals 0

    .line 313
    iput-object p1, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Lcom/android/server/power/stats/WakelockStatsFrameworkEvents-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;-><init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;)V

    return-void
.end method


# virtual methods
.method public onPullAtom(ILjava/util/List;)I
    .locals 0

    .line 317
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->pullEvents(I)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    .line 322
    :cond_0
    invoke-interface {p2, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 p0, 0x0

    return p0
.end method

.method public final pullEvents(I)Ljava/util/List;
    .locals 1

    const/16 v0, 0x27f6

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 329
    :cond_0
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$StatsPullCallbackHandler;->this$0:Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;

    invoke-virtual {p0}, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;->pullFrameworkWakelockInfoAtoms()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method
