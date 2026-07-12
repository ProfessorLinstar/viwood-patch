.class public Lcom/android/server/power/stats/BatteryExternalStatsWorker$3;
.super Ljava/lang/Object;
.source "BatteryExternalStatsWorker.java"

# interfaces
.implements Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryExternalStatsWorker;)V
    .locals 0

    .line 484
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .locals 0

    .line 489
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
