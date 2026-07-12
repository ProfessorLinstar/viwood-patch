.class public Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceRoutesManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;


# direct methods
.method public static synthetic $r8$lambda$Y-94Ecaq9Hg_LeQVGeIkV-Bn8iw(Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;->lambda$onReceive$0(I)V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0(I)V
    .locals 0

    .line 347
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mhandleBluetoothAdapterStateChange(Lcom/android/server/media/BluetoothDeviceRoutesManager;I)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 345
    const-string p1, "android.bluetooth.adapter.extra.STATE"

    const/4 v0, -0x1

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 347
    iget-object p2, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p2}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothDeviceRoutesManager;)Landroid/os/Handler;

    move-result-object p2

    new-instance v0, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$AdapterStateChangedReceiver;I)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
