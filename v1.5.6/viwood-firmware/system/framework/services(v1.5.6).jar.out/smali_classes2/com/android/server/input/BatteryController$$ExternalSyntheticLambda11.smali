.class public final synthetic Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Landroid/bluetooth/BluetoothDevice;


# direct methods
.method public synthetic constructor <init>(Landroid/bluetooth/BluetoothDevice;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda11;->f$0:Landroid/bluetooth/BluetoothDevice;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/input/BatteryController$$ExternalSyntheticLambda11;->f$0:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/server/input/BatteryController$DeviceMonitor;

    invoke-static {p0, p1}, Lcom/android/server/input/BatteryController;->$r8$lambda$OH_whUZINAnrsAjHUF7NrVOQfsg(Landroid/bluetooth/BluetoothDevice;Lcom/android/server/input/BatteryController$DeviceMonitor;)Z

    move-result p0

    return p0
.end method
