.class public Lcom/android/server/usb/UsbService$PackageUninstallMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "UsbService.java"


# instance fields
.field public final synthetic this$0:Lcom/android/server/usb/UsbService;


# direct methods
.method public constructor <init>(Lcom/android/server/usb/UsbService;)V
    .locals 0

    .line 1510
    iput-object p1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/usb/UsbService;Lcom/android/server/usb/UsbService-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;-><init>(Lcom/android/server/usb/UsbService;)V

    return-void
.end method


# virtual methods
.method public onUidRemoved(I)V
    .locals 6

    .line 1513
    iget-object v0, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v0}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v0

    monitor-enter v0

    .line 1514
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v1}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1515
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    invoke-static {v3}, Lcom/android/server/usb/UsbService;->-$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;

    move-result-object v3

    .line 1516
    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;

    if-eqz v3, :cond_0

    .line 1518
    iget-object v4, v3, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1519
    invoke-virtual {v3}, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1520
    iget-object v3, p0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;->this$0:Lcom/android/server/usb/UsbService;

    new-instance v4, Landroid/hardware/usb/IUsbOperationInternal$Default;

    invoke-direct {v4}, Landroid/hardware/usb/IUsbOperationInternal$Default;-><init>()V

    const/4 v5, 0x1

    invoke-virtual {v3, v2, v5, v5, v4}, Lcom/android/server/usb/UsbService;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1525
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
