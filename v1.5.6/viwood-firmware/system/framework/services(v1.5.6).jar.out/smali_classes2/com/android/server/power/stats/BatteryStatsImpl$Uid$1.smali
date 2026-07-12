.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;
.super Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .locals 0

    .line 8408
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;
    .locals 2

    .line 8410
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {v0, v1, p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;)V

    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .locals 0

    .line 8408
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$1;->instantiateObject()Lcom/android/server/power/stats/BatteryStatsImpl$Uid$Wakelock;

    move-result-object p0

    return-object p0
.end method
