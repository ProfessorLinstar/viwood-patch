.class public Lcom/android/server/usb/UsbAlsaMidiDevice$1;
.super Ljava/lang/Object;
.source "UsbAlsaMidiDevice.java"

# interfaces
.implements Landroid/media/midi/MidiDeviceServer$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbAlsaMidiDevice;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClose()V
    .locals 0

    .line 0
    return-void
.end method

.method public onDeviceStatusChanged(Landroid/media/midi/MidiDeviceServer;Landroid/media/midi/MidiDeviceStatus;)V
    .locals 5

    .line 89
    invoke-virtual {p2}, Landroid/media/midi/MidiDeviceStatus;->getDeviceInfo()Landroid/media/midi/MidiDeviceInfo;

    move-result-object p1

    .line 90
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getInputPortCount()I

    move-result v0

    .line 91
    invoke-virtual {p1}, Landroid/media/midi/MidiDeviceInfo;->getOutputPortCount()I

    move-result p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    .line 95
    invoke-virtual {p2, v2}, Landroid/media/midi/MidiDeviceStatus;->isInputPortOpen(I)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v1, p1, :cond_3

    .line 101
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    if-lez v0, :cond_2

    .line 102
    invoke-virtual {p2, v1}, Landroid/media/midi/MidiDeviceStatus;->getOutputPortOpenCount(I)I

    move-result v0

    add-int/2addr v3, v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    iget-object p1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmLock(Lcom/android/server/usb/UsbAlsaMidiDevice;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 107
    :try_start_0
    const-string p2, "UsbAlsaMidiDevice"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "numOpenPorts: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mServerAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {v1}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_4

    .line 109
    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmServerAvailable(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 110
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$mopenLocked(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_4
    if-nez v3, :cond_5

    .line 111
    iget-object p2, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p2}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$fgetmIsOpen(Lcom/android/server/usb/UsbAlsaMidiDevice;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 112
    iget-object p0, p0, Lcom/android/server/usb/UsbAlsaMidiDevice$1;->this$0:Lcom/android/server/usb/UsbAlsaMidiDevice;

    invoke-static {p0}, Lcom/android/server/usb/UsbAlsaMidiDevice;->-$$Nest$mcloseLocked(Lcom/android/server/usb/UsbAlsaMidiDevice;)V

    .line 114
    :cond_5
    :goto_2
    monitor-exit p1

    return-void

    :goto_3
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
