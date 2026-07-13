.class public Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbProfileGroupSettingsManager.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 0

    .line 210
    iput-object p1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;-><init>(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-$$Nest$fgetmUserManager(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-$$Nest$fgetmParentUser(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 214
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 213
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 218
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    new-instance v0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Lcom/android/server/usb/UsbProfileGroupSettingsManager-IA;)V

    invoke-static {p0, v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-$$Nest$mhandlePackageAdded(Lcom/android/server/usb/UsbProfileGroupSettingsManager;Lcom/android/server/usb/UsbProfileGroupSettingsManager$UserPackage;)V

    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3

    .line 223
    iget-object v0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v0}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-$$Nest$fgetmUserManager(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->-$$Nest$fgetmParentUser(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 224
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 223
    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 228
    :cond_0
    iget-object p0, p0, Lcom/android/server/usb/UsbProfileGroupSettingsManager$MyPackageMonitor;->this$0:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V

    return-void
.end method
