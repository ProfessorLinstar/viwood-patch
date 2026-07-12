.class public Lcom/android/server/input/BatteryController$DeviceMonitor$1;
.super Lcom/android/server/input/BatteryController$UEventBatteryListener;
.source "BatteryController.java"


# instance fields
.field public final synthetic this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

.field public final synthetic val$deviceId:I


# direct methods
.method public constructor <init>(Lcom/android/server/input/BatteryController$DeviceMonitor;I)V
    .locals 0

    .line 634
    iput-object p1, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iput p2, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

    invoke-direct {p0}, Lcom/android/server/input/BatteryController$UEventBatteryListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBatteryUEvent(J)V
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->this$1:Lcom/android/server/input/BatteryController$DeviceMonitor;

    iget-object v0, v0, Lcom/android/server/input/BatteryController$DeviceMonitor;->this$0:Lcom/android/server/input/BatteryController;

    iget p0, p0, Lcom/android/server/input/BatteryController$DeviceMonitor$1;->val$deviceId:I

    invoke-static {v0, p0, p1, p2}, Lcom/android/server/input/BatteryController;->-$$Nest$mhandleUEventNotification(Lcom/android/server/input/BatteryController;IJ)V

    return-void
.end method
