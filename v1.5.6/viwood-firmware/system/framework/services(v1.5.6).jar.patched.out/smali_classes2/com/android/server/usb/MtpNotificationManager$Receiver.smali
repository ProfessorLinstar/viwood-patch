.class public Lcom/android/server/usb/MtpNotificationManager$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpNotificationManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/MtpNotificationManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/MtpNotificationManager;)V
    .locals 0

    .line 116
    iput-object p1, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/MtpNotificationManager;Lcom/android/server/usb/MtpNotificationManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/MtpNotificationManager$Receiver;-><init>(Lcom/android/server/usb/MtpNotificationManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 120
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "device"

    const-class v1, Landroid/hardware/usb/UsbDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    if-nez p1, :cond_0

    goto :goto_0

    .line 124
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->hashCode()I

    const-string v0, "com.android.server.usb.ACTION_OPEN_IN_APPS"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    :goto_0
    return-void

    .line 126
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/MtpNotificationManager$Receiver;->this$0:Lcom/android/server/usb/MtpNotificationManager;

    invoke-static {p0}, Lcom/android/server/usb/MtpNotificationManager;->-$$Nest$fgetmListener(Lcom/android/server/usb/MtpNotificationManager;)Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/server/usb/MtpNotificationManager$OnOpenInAppListener;->onOpenInApp(Landroid/hardware/usb/UsbDevice;)V

    return-void
.end method
