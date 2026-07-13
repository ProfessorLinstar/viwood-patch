.class public Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;
.super Ljava/lang/Object;
.source "WakelockStatsFrameworkEvents.java"

# interfaces
.implements Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$EventLogger;


# instance fields
.field public final synthetic val$result:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/WakelockStatsFrameworkEvents;Ljava/util/List;)V
    .locals 0

    .line 208
    iput-object p2, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;->val$result:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public logResult(ILjava/lang/String;IJJ)V
    .locals 2

    .line 216
    invoke-static {}, Landroid/util/StatsEvent;->newBuilder()Landroid/util/StatsEvent$Builder;

    move-result-object v0

    const/16 v1, 0x27f6

    .line 217
    invoke-virtual {v0, v1}, Landroid/util/StatsEvent$Builder;->setAtomId(I)Landroid/util/StatsEvent$Builder;

    move-result-object v0

    .line 218
    invoke-virtual {v0, p1}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 219
    invoke-virtual {p1, p2}, Landroid/util/StatsEvent$Builder;->writeString(Ljava/lang/String;)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 220
    invoke-virtual {p1, p3}, Landroid/util/StatsEvent$Builder;->writeInt(I)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 221
    invoke-virtual {p1, p4, p5}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 222
    invoke-virtual {p1, p6, p7}, Landroid/util/StatsEvent$Builder;->writeLong(J)Landroid/util/StatsEvent$Builder;

    move-result-object p1

    .line 223
    invoke-virtual {p1}, Landroid/util/StatsEvent$Builder;->build()Landroid/util/StatsEvent;

    move-result-object p1

    .line 224
    iget-object p0, p0, Lcom/android/server/power/stats/WakelockStatsFrameworkEvents$1;->val$result:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
