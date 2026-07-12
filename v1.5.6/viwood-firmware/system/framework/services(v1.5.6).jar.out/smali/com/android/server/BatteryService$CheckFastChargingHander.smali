.class public final Lcom/android/server/BatteryService$CheckFastChargingHander;
.super Landroid/os/Handler;
.source "BatteryService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/BatteryService;

.field public try_check_isfastCharging:I


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0

    .line 1940
    iput-object p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    const/4 p1, 0x0

    .line 1944
    iput p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/BatteryService;Lcom/android/server/BatteryService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/BatteryService$CheckFastChargingHander;-><init>(Lcom/android/server/BatteryService;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1951
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMessage: msg.what: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BatteryService_cfch"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1952
    iget p1, p1, Landroid/os/Message;->what:I

    const-wide/16 v0, 0xc8

    const/4 v2, 0x1

    const/4 v3, 0x2

    if-eq p1, v2, :cond_5

    const-string v4, "fast_charging_on"

    const/4 v5, 0x0

    if-eq p1, v3, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 1978
    :cond_0
    iget-object p0, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p0}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v4, v5}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    .line 1960
    :cond_1
    iput v5, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    .line 1961
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    return-void

    .line 1965
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/BatteryService$CheckFastChargingHander;->isFastCharging()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 1966
    iget-object p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1, v2}, Lcom/android/server/BatteryService;->-$$Nest$fputmIsFastCharging(Lcom/android/server/BatteryService;Z)V

    .line 1967
    iget-object p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmPlugType(Lcom/android/server/BatteryService;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmHealthInfo(Lcom/android/server/BatteryService;)Landroid/hardware/health/HealthInfo;

    move-result-object v1

    iget v1, v1, Landroid/hardware/health/HealthInfo;->batteryLevel:I

    iget-object v3, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {v3}, Lcom/android/server/BatteryService;->-$$Nest$fgetmIsFastCharging(Lcom/android/server/BatteryService;)Z

    move-result v3

    invoke-static {p1, v0, v1, v3}, Lcom/android/server/BatteryService;->-$$Nest$mupdateENotePopWindowBatteryState(Lcom/android/server/BatteryService;IIZ)V

    .line 1968
    iget-object p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->this$0:Lcom/android/server/BatteryService;

    invoke-static {p1}, Lcom/android/server/BatteryService;->-$$Nest$fgetmContext(Lcom/android/server/BatteryService;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v4, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1969
    iput v5, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    return-void

    .line 1972
    :cond_3
    iget p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    sub-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    if-lez p1, :cond_4

    .line 1974
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    const/16 p1, 0x14

    .line 1954
    iput p1, p0, Lcom/android/server/BatteryService$CheckFastChargingHander;->try_check_isfastCharging:I

    .line 1955
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1956
    invoke-virtual {p0, v3, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final isFastCharging()Z
    .locals 3

    .line 1984
    const-string p0, "/sys/devices/platform/charger/Pump_Express"

    invoke-static {p0}, Lcom/android/server/ENoteSettingService;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1985
    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 1986
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isFastCharging flag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", pathValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "BatteryService_cfch"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method
