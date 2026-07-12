.class public Lcom/android/server/audio/BtHelper$MyLeAudioCallback;
.super Ljava/lang/Object;
.source "BtHelper.java"

# interfaces
.implements Landroid/bluetooth/BluetoothLeAudio$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/audio/BtHelper;


# direct methods
.method public constructor <init>(Lcom/android/server/audio/BtHelper;)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCodecConfigChanged(ILandroid/bluetooth/BluetoothLeAudioCodecStatus;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onGroupNodeAdded(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 751
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateLeAudioGroupAddresses(I)V

    return-void
.end method

.method public onGroupNodeRemoved(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 0

    .line 756
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateLeAudioGroupAddresses(I)V

    return-void
.end method

.method public onGroupStatusChanged(II)V
    .locals 0

    .line 760
    iget-object p0, p0, Lcom/android/server/audio/BtHelper$MyLeAudioCallback;->this$0:Lcom/android/server/audio/BtHelper;

    invoke-static {p0}, Lcom/android/server/audio/BtHelper;->-$$Nest$fgetmDeviceBroker(Lcom/android/server/audio/BtHelper;)Lcom/android/server/audio/AudioDeviceBroker;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/audio/AudioDeviceBroker;->postUpdateLeAudioGroupAddresses(I)V

    return-void
.end method
