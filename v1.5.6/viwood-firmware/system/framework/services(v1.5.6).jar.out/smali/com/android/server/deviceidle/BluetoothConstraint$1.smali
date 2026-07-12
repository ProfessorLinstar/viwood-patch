.class public Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConstraint.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method public constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 128
    const-string p1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 129
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->-$$Nest$fgetmLocalService(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleInternal;

    move-result-object p0

    const-string p1, "bluetooth"

    invoke-interface {p0, p1}, Lcom/android/server/DeviceIdleInternal;->exitIdle(Ljava/lang/String;)V

    return-void

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {p0}, Lcom/android/server/deviceidle/BluetoothConstraint;->-$$Nest$mupdateAndReportActiveLocked(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    return-void
.end method
