.class public final Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;
.super Ljava/lang/Object;
.source "UsbGadgetHidl.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# instance fields
.field public final mPw:Lcom/android/internal/util/IndentingPrintWriter;

.field public final synthetic this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p2, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3

    const-wide/16 v0, 0x7d0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->mPw:Lcom/android/internal/util/IndentingPrintWriter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb Gadget hal service died cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x6

    invoke-static {p2, v0, p1}, Lcom/android/server/usb/UsbDeviceManager;->logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 92
    iget-object p1, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    invoke-static {p1}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->-$$Nest$fgetmGadgetProxyLock(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;)Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1

    .line 93
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl$DeathRecipient;->this$0:Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;

    const/4 p2, 0x0

    invoke-static {p0, p2}, Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;->-$$Nest$fputmGadgetProxy(Lcom/android/server/usb/hal/gadget/UsbGadgetHidl;Landroid/hardware/usb/gadget/V1_0/IUsbGadget;)V

    .line 94
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    return-void
.end method
