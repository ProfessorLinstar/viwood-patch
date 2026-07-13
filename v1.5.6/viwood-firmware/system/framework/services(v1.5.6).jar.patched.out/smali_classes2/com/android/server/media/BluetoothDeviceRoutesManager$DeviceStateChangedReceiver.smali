.class public Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothDeviceRoutesManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;


# direct methods
.method public static synthetic $r8$lambda$YnNdjO8jUafYW9nGc-fEBOr8Jm4(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->lambda$onReceive$0()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;Lcom/android/server/media/BluetoothDeviceRoutesManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method


# virtual methods
.method public final synthetic lambda$onReceive$0()V
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {v0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mupdateBluetoothRoutes(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    .line 366
    iget-object p0, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$mnotifyBluetoothRoutesUpdated(Lcom/android/server/media/BluetoothDeviceRoutesManager;)V

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 357
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const/4 p2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v0, "android.bluetooth.device.action.ALIAS_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v0, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v0, "android.bluetooth.action.LE_AUDIO_CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 p2, 0x0

    :goto_0
    packed-switch p2, :pswitch_data_0

    return-void

    .line 363
    :pswitch_0
    iget-object p1, p0, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;->this$0:Lcom/android/server/media/BluetoothDeviceRoutesManager;

    invoke-static {p1}, Lcom/android/server/media/BluetoothDeviceRoutesManager;->-$$Nest$fgetmHandler(Lcom/android/server/media/BluetoothDeviceRoutesManager;)Landroid/os/Handler;

    move-result-object p1

    new-instance p2, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/media/BluetoothDeviceRoutesManager$DeviceStateChangedReceiver;)V

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x693eab85 -> :sswitch_3
        -0x2486726f -> :sswitch_2
        0x46028ae6 -> :sswitch_1
        0x4a286686 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
