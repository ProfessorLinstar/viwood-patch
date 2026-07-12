.class public Lcom/android/server/usb/UsbService$1;
.super Landroid/content/BroadcastReceiver;
.source "UsbService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0

    .line 228
    iput-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 231
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 232
    const-string p2, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    .line 233
    invoke-virtual {p2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 234
    iget-object p1, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p1}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/server/usb/UsbService$1;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {p0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->updateUserRestrictions()V

    :cond_0
    return-void
.end method
