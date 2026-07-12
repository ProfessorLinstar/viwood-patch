.class public final Lcom/android/server/BatteryService$Led;
.super Ljava/lang/Object;
.source "BatteryService.java"


# instance fields
.field public final mBatteryFullARGB:I

.field public final mBatteryLedOff:I

.field public final mBatteryLedOn:I

.field public final mBatteryLight:Lcom/android/server/lights/LogicalLight;

.field public final mBatteryLowARGB:I

.field public final mBatteryLowBehavior:I

.field public final mBatteryMediumARGB:I

.field public final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;Landroid/content/Context;Lcom/android/server/lights/LightsManager;)V
    .locals 1

    .line 1873
    iput-object p1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    .line 1874
    invoke-virtual {p3, v0}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    .line 1876
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00f2

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    .line 1878
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00f4

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    .line 1880
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00ef

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    .line 1882
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00f1

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    .line 1884
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00f0

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    iput p3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    .line 1886
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x10e00f5

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p3

    invoke-static {p1, p3}, Lcom/android/server/BatteryService;->-$$Nest$fputmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;I)V

    .line 1888
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x10e00f3

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowBehavior:I

    return-void
.end method


# virtual methods
.method public updateLightsLocked()V
    .locals 4

    .line 1896
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    if-nez v0, :cond_0

    return-void

    .line 1899
    :cond_0
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v0

    iget v0, v0, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    .line 1900
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryStatus:I

    .line 1901
    iget-object v2, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v2}, Lcom/android/server/BatteryService;->-$$Nest$fgetmLowBatteryWarningLevel(Lcom/android/server/BatteryService;)I

    move-result v2

    const/4 v3, 0x2

    if-ge v0, v2, :cond_4

    .line 1902
    iget v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowBehavior:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    if-eq v0, v3, :cond_2

    if-ne v1, v3, :cond_1

    .line 1915
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    .line 1918
    :cond_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    return-void

    .line 1909
    :cond_2
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget v1, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    iget v3, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOn:I

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLedOff:I

    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/android/server/lights/LogicalLight;->setFlashing(IIII)V

    return-void

    .line 1905
    :cond_3
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLowARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    :cond_4
    const/4 v2, 0x5

    if-eq v1, v3, :cond_6

    if-ne v1, v2, :cond_5

    goto :goto_0

    .line 1935
    :cond_5
    iget-object p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {p0}, Lcom/android/server/lights/LogicalLight;->turnOff()V

    return-void

    :cond_6
    :goto_0
    if-eq v1, v2, :cond_8

    .line 1925
    iget-object v1, p0, Lcom/android/server/BatteryService$Led;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmBatteryNearlyFullLevel(Lcom/android/server/BatteryService;)I

    move-result v1

    if-lt v0, v1, :cond_7

    goto :goto_1

    .line 1931
    :cond_7
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryMediumARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void

    .line 1928
    :cond_8
    :goto_1
    iget-object v0, p0, Lcom/android/server/BatteryService$Led;->mBatteryLight:Lcom/android/server/lights/LogicalLight;

    iget p0, p0, Lcom/android/server/BatteryService$Led;->mBatteryFullARGB:I

    invoke-virtual {v0, p0}, Lcom/android/server/lights/LogicalLight;->setColor(I)V

    return-void
.end method
