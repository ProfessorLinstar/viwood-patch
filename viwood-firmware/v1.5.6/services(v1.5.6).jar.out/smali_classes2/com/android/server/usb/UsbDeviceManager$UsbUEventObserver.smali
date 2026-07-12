.class public final Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;
.super Landroid/os/UEventObserver;
.source "UsbDeviceManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbDeviceManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 268
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 4

    .line 272
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/utils/EventLogger;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 273
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/utils/EventLogger;

    move-result-object v0

    new-instance v1, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "USB UEVENT: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v0, v1}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    .line 279
    :cond_0
    const-string v0, "ACCESSORY"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 281
    const-string v1, "GETPROTOCOL"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAccessoryUEventTime(J)V

    .line 284
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    .line 285
    :cond_1
    const-string v1, "SENDSTRING"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 287
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 288
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V

    goto :goto_0

    .line 289
    :cond_2
    const-string v1, "START"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 292
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setStartAccessoryTrue()V

    .line 293
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mstartAccessoryMode(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 296
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmEnableUdcSysfsUsbStateUpdate(Lcom/android/server/usb/UsbDeviceManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmUdcName(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "SUBSYSTEM"

    .line 298
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "udc"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "DEVPATH"

    .line 299
    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmUdcName(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 300
    const-string v0, "ACTION"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 301
    const-string v0, "add"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 302
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmUdcName(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeStartGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z

    return-void

    .line 303
    :cond_4
    const-string/jumbo v0, "remove"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 304
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$mnativeStopGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;)V

    return-void

    .line 308
    :cond_5
    const-string v0, "USB_STATE"

    invoke-virtual {p1, v0}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 310
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;->this$0:Lcom/android/server/usb/UsbDeviceManager;

    invoke-static {p0}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    :cond_6
    return-void
.end method
