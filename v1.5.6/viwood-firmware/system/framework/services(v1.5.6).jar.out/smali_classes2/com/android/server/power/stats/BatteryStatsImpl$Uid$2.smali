.class public Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;
.super Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;
.source "BatteryStatsImpl.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl$Uid;Lcom/android/server/power/stats/BatteryStatsImpl;I)V
    .locals 0

    .line 8413
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p2, p3}, Lcom/android/server/power/stats/BatteryStatsImpl$OverflowArrayMap;-><init>(Lcom/android/server/power/stats/BatteryStatsImpl;I)V

    return-void
.end method


# virtual methods
.method public instantiateObject()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;
    .locals 7

    .line 8415
    new-instance v0, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    iget-object v2, p0, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl$Uid;

    iget-object p0, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mBsi:Lcom/android/server/power/stats/BatteryStatsImpl;

    iget-object v1, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mClock:Lcom/android/internal/os/Clock;

    iget-object v5, p0, Lcom/android/server/power/stats/BatteryStatsImpl;->mOnBatteryTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    iget-object v6, v2, Lcom/android/server/power/stats/BatteryStatsImpl$Uid;->mOnBatteryBackgroundTimeBase:Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;-><init>(Lcom/android/internal/os/Clock;Lcom/android/server/power/stats/BatteryStatsImpl$Uid;ILjava/util/ArrayList;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;Lcom/android/server/power/stats/BatteryStatsImpl$TimeBase;)V

    return-object v0
.end method

.method public bridge synthetic instantiateObject()Ljava/lang/Object;
    .locals 0

    .line 8413
    invoke-virtual {p0}, Lcom/android/server/power/stats/BatteryStatsImpl$Uid$2;->instantiateObject()Lcom/android/server/power/stats/BatteryStatsImpl$DualTimer;

    move-result-object p0

    return-object p0
.end method
