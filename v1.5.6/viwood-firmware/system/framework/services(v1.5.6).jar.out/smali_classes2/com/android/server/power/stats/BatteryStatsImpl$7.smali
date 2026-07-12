.class public Lcom/android/server/power/stats/BatteryStatsImpl$7;
.super Ljava/lang/Object;
.source "BatteryStatsImpl.java"

# interfaces
.implements Lcom/android/server/power/stats/PowerStatsUidResolver$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/server/power/stats/BatteryStatsImpl;


# direct methods
.method public constructor <init>(Lcom/android/server/power/stats/BatteryStatsImpl;)V
    .locals 0

    .line 11381
    iput-object p1, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAfterIsolatedUidRemoved(II)V
    .locals 0

    .line 11394
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$monAfterIsolatedUidRemoved(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method

.method public onBeforeIsolatedUidRemoved(II)V
    .locals 0

    .line 11389
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$monBeforeIsolatedUidRemoved(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method

.method public onIsolatedUidAdded(II)V
    .locals 0

    .line 11384
    iget-object p0, p0, Lcom/android/server/power/stats/BatteryStatsImpl$7;->this$0:Lcom/android/server/power/stats/BatteryStatsImpl;

    invoke-static {p0, p1, p2}, Lcom/android/server/power/stats/BatteryStatsImpl;->-$$Nest$monIsolatedUidAdded(Lcom/android/server/power/stats/BatteryStatsImpl;II)V

    return-void
.end method
