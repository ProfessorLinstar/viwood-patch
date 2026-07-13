.class public Lcom/android/server/midi/MidiService$2;
.super Landroid/content/BroadcastReceiver;
.source "MidiService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/midi/MidiService;


# direct methods
.method public constructor <init>(Lcom/android/server/midi/MidiService;)V
    .locals 0

    .line 864
    iput-object p1, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 867
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 868
    const-string v0, "MidiService"

    if-nez p1, :cond_0

    .line 869
    const-string p0, "MidiService, action is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 873
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    const/4 v2, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v3, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    goto :goto_0

    :sswitch_1
    const-string v3, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    goto :goto_0

    :sswitch_2
    const-string v3, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v2, 0x1

    goto :goto_0

    :sswitch_3
    const-string v3, "android.bluetooth.device.action.UUID"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    packed-switch v2, :pswitch_data_0

    goto/16 :goto_1

    .line 904
    :pswitch_0
    const-string p1, "ACTION_ACL_DISCONNECTED"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 905
    const-class p1, Landroid/bluetooth/BluetoothDevice;

    .line 906
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 909
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 910
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mcloseBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 876
    :pswitch_1
    const-string p1, "ACTION_ACL_CONNECTED"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 877
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smdumpIntentExtras(Landroid/content/Intent;)V

    .line 880
    invoke-static {p2}, Lcom/android/server/midi/MidiService;->-$$Nest$smisBleTransport(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 881
    const-string p0, "No BLE transport - NOT MIDI"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 885
    :cond_5
    const-string p1, "BLE Device"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    const-class p1, Landroid/bluetooth/BluetoothDevice;

    .line 887
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 888
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 892
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mhasNonMidiUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 893
    const-string p0, "Non-MIDI service UUIDs found. NOT MIDI"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 897
    :cond_6
    const-string p2, "Potential MIDI Device."

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    return-void

    .line 933
    :pswitch_2
    const-string p1, "ACTION_UUID"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    const-class p1, Landroid/bluetooth/BluetoothDevice;

    .line 935
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothDevice;

    .line 936
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mdumpUuids(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    .line 937
    iget-object p2, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p2, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$misBLEMIDIDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 938
    const-string p2, "BT MIDI DEVICE"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 939
    iget-object p0, p0, Lcom/android/server/midi/MidiService$2;->this$0:Lcom/android/server/midi/MidiService;

    invoke-static {p0, p1}, Lcom/android/server/midi/MidiService;->-$$Nest$mopenBluetoothDevice(Lcom/android/server/midi/MidiService;Landroid/bluetooth/BluetoothDevice;)V

    :cond_7
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x16809cc6 -> :sswitch_3
        -0x11f77b4b -> :sswitch_2
        0x6c9330ef -> :sswitch_1
        0x7e2cc189 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
