.class public Lcom/android/server/power/stats/PowerStatsCollector$1;
.super Ljava/lang/Object;
.source "PowerStatsCollector.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/PowerStatsCollector;


# direct methods
.method public static synthetic $r8$lambda$VHeUHnX1F0pyi88eqk7Lt8RRwPY(Lcom/android/server/power/stats/PowerStatsCollector$1;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$1;->lambda$onAfterIsolatedUidRemoved$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/power/stats/PowerStatsCollector;)V
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onAfterIsolatedUidRemoved$0(I)V
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-virtual {p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector;->onUidRemoved(I)V

    return-void
.end method

.method public onAfterIsolatedUidRemoved(II)V
    .locals 1

    .line 90
    iget-object p2, p0, Lcom/android/server/power/stats/PowerStatsCollector$1;->this$0:Lcom/android/server/power/stats/PowerStatsCollector;

    invoke-static {p2}, Lcom/android/server/power/stats/PowerStatsCollector;->-$$Nest$fgetmHandler(Lcom/android/server/power/stats/PowerStatsCollector;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/power/stats/PowerStatsCollector$1$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/power/stats/PowerStatsCollector$1;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBeforeIsolatedUidRemoved(II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onIsolatedUidAdded(II)V
    .locals 0

    .line 0
    return-void
.end method
