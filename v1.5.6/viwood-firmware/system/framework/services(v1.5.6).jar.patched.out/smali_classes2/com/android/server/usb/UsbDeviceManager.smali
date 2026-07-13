.class public Lcom/android/server/usb/UsbDeviceManager;
.super Ljava/lang/Object;
.source "UsbDeviceManager.java"

# interfaces
.implements Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;


# static fields
.field public static final TAG:Ljava/lang/String; = "UsbDeviceManager"

.field public static mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

.field public static sDenyInterfaces:Ljava/util/Set;

.field public static sEventLogger:Lcom/android/server/utils/EventLogger;

.field public static final sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field public mAccessoryStrings:[Ljava/lang/String;

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mControlFds:Ljava/util/HashMap;

.field public mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

.field public final mEnableUdcSysfsUsbStateUpdate:Z

.field public mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

.field public final mHasUsbAccessory:Z

.field public final mLock:Ljava/lang/Object;

.field public final mUEventObserver:Landroid/os/UEventObserver;

.field public mUdcName:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnableUdcSysfsUsbStateUpdate(Lcom/android/server/usb/UsbDeviceManager;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mEnableUdcSysfsUsbStateUpdate:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/usb/UsbDeviceManager;)Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUdcName(Lcom/android/server/usb/UsbDeviceManager;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mUdcName:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mnativeStartGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->nativeStartGadgetMonitor(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mnativeStopGadgetMonitor(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeStopGadgetMonitor()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mresetAccessoryHandshakeTimeoutHandler(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->resetAccessoryHandshakeTimeoutHandler()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstartAccessoryMode(Lcom/android/server/usb/UsbDeviceManager;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetmUsbGadgetHal()Lcom/android/server/usb/hal/gadget/UsbGadgetHal;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsDenyInterfaces()Ljava/util/Set;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsEventLogger()Lcom/android/server/utils/EventLogger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$sfputmUsbGadgetHal(Lcom/android/server/usb/hal/gadget/UsbGadgetHal;)V
    .locals 0

    .line 0
    sput-object p0, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 248
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 251
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x1

    .line 252
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 253
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 254
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/4 v1, 0x7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 256
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0x8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0x9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 258
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 259
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 261
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 262
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sDenyInterfaces:Ljava/util/Set;

    const/16 v1, 0xe0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 10

    .line 340
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 224
    new-instance p3, Ljava/lang/Object;

    invoke-direct {p3}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    .line 243
    const-string p3, ""

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager;->mUdcName:Ljava/lang/String;

    .line 341
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    .line 342
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager;->mContentResolver:Landroid/content/ContentResolver;

    .line 343
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p3

    .line 344
    const-string v0, "android.hardware.usb.accessory"

    invoke-virtual {p3, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p3

    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    .line 345
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->initRndisAddress()V

    .line 347
    sget-object p3, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p3

    const/4 v0, 0x0

    .line 350
    invoke-static {p0, v0}, Lcom/android/server/usb/hal/gadget/UsbGadgetHalInstance;->getInstance(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/internal/util/IndentingPrintWriter;)Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    move-result-object v1

    sput-object v1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    .line 351
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v2, "getInstance done"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    .line 354
    const-string/jumbo v2, "mtp"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_0

    .line 356
    const-string v3, "Failed to open control for mtp"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_0
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v4, 0x4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string/jumbo v2, "ptp"

    invoke-direct {p0, v2}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;

    move-result-object v2

    if-nez v2, :cond_1

    .line 361
    const-string v3, "Failed to open control for ptp"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    const-wide/16 v3, 0x10

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 365
    sget-object v1, Lcom/android/server/usb/UsbDeviceManager;->mUsbGadgetHal:Lcom/android/server/usb/hal/gadget/UsbGadgetHal;

    if-nez v1, :cond_2

    .line 369
    new-instance v2, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    move-object v5, p0

    move-object v4, p1

    move-object v6, p2

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerLegacy;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v2, v5, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    goto :goto_0

    :cond_2
    move-object v5, p0

    move-object p0, p1

    move-object v6, p2

    move-object v7, p4

    .line 375
    new-instance v4, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;

    invoke-static {}, Lcom/android/server/FgThread;->get()Lcom/android/server/FgThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/FgThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    move-object v8, v6

    move-object v9, v7

    move-object v6, p0

    move-object v7, v5

    move-object v5, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/server/usb/UsbDeviceManager$UsbHandlerHal;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    move-object p0, v4

    move-object v4, v6

    move-object v5, v7

    iput-object p0, v5, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    .line 379
    :goto_0
    iget-object p0, v5, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->handlerInitDone(I)V

    .line 381
    invoke-direct {v5}, Lcom/android/server/usb/UsbDeviceManager;->nativeIsStartRequested()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 383
    invoke-virtual {v5}, Lcom/android/server/usb/UsbDeviceManager;->startAccessoryMode()V

    .line 386
    :cond_3
    new-instance p0, Lcom/android/server/usb/UsbDeviceManager$1;

    invoke-direct {p0, v5}, Lcom/android/server/usb/UsbDeviceManager$1;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 396
    new-instance p1, Lcom/android/server/usb/UsbDeviceManager$2;

    invoke-direct {p1, v5}, Lcom/android/server/usb/UsbDeviceManager$2;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 405
    new-instance p2, Lcom/android/server/usb/UsbDeviceManager$3;

    invoke-direct {p2, v5}, Lcom/android/server/usb/UsbDeviceManager$3;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 418
    new-instance p3, Lcom/android/server/usb/UsbDeviceManager$4;

    invoke-direct {p3, v5}, Lcom/android/server/usb/UsbDeviceManager$4;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 426
    new-instance p4, Lcom/android/server/usb/UsbDeviceManager$5;

    invoke-direct {p4, v5}, Lcom/android/server/usb/UsbDeviceManager$5;-><init>(Lcom/android/server/usb/UsbDeviceManager;)V

    .line 432
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 436
    new-instance p4, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_PORT_CHANGED"

    invoke-direct {p4, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0, p4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 438
    new-instance p0, Landroid/content/IntentFilter;

    const-string p4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {p0, p4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 441
    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 443
    const-string p1, "android.hardware.usb.action.USB_DEVICE_DETACHED"

    invoke-virtual {p0, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 444
    invoke-virtual {v4, p2, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 446
    new-instance p0, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.LOCALE_CHANGED"

    invoke-direct {p0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p3, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 450
    new-instance p0, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;

    invoke-direct {p0, v5, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbUEventObserver;-><init>(Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbDeviceManager-IA;)V

    iput-object p0, v5, Lcom/android/server/usb/UsbDeviceManager;->mUEventObserver:Landroid/os/UEventObserver;

    .line 451
    const-string p1, "DEVPATH=/devices/virtual/misc/usb_accessory"

    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 456
    iput-boolean p1, v5, Lcom/android/server/usb/UsbDeviceManager;->mEnableUdcSysfsUsbStateUpdate:Z

    .line 471
    const-string p1, "DEVPATH=/devices/virtual/android_usb/android0"

    invoke-virtual {p0, p1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    .line 474
    new-instance p0, Lcom/android/server/utils/EventLogger;

    const/16 p1, 0xc8

    const-string p2, "UsbDeviceManager activity"

    invoke-direct {p0, p1, p2}, Lcom/android/server/utils/EventLogger;-><init>(ILjava/lang/String;)V

    sput-object p0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    return-void
.end method

.method public static initRndisAddress()V
    .locals 13

    const/4 v0, 0x6

    .line 562
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 564
    aput v2, v0, v1

    .line 566
    const-string/jumbo v3, "ro.serialno"

    const-string v4, "1234567890ABCDEF"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 567
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    move v5, v1

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v4, :cond_0

    .line 570
    rem-int/lit8 v7, v5, 0x5

    add-int/2addr v7, v6

    aget v6, v0, v7

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    xor-int/2addr v6, v8

    aput v6, v0, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 572
    :cond_0
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    aget v1, v0, v1

    .line 573
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aget v1, v0, v6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aget v1, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v1, 0x3

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v1, 0x4

    aget v1, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/4 v1, 0x5

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    filled-new-array/range {v7 .. v12}, [Ljava/lang/Object;

    move-result-object v0

    .line 572
    const-string v1, "%02X:%02X:%02X:%02X:%02X:%02X"

    invoke-static {v3, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 575
    :try_start_0
    const-string v1, "/sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v1, v0}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 577
    :catch_0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "failed to write to /sys/class/android_usb/android0/f_rndis/ethaddr"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static logAndPrint(ILcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 1

    .line 582
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-static {p0, v0, p2}, Landroid/util/Slog;->println(ILjava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    .line 584
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static logAndPrintException(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    .line 589
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz p0, :cond_0

    .line 591
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private native nativeGetAccessoryStrings()[Ljava/lang/String;
.end method

.method private native nativeIsStartRequested()Z
.end method

.method private native nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;
.end method

.method private native nativeOpenControl(Ljava/lang/String;)Ljava/io/FileDescriptor;
.end method

.method private native nativeStartGadgetMonitor(Ljava/lang/String;)Z
.end method

.method private native nativeStopGadgetMonitor()V
.end method

.method private native nativeWaitAndGetProperty(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private updateGadgetState(Ljava/lang/String;)V
    .locals 3

    .line 2800
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Usb state update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2802
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateState(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public bootCompleted()V
    .locals 1

    .line 500
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 2

    .line 2785
    invoke-virtual {p1, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide p2

    .line 2787
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p0, :cond_0

    .line 2788
    const-string p4, "handler"

    const-wide v0, 0x10b00000001L

    invoke-virtual {p0, p1, p4, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 2789
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->sEventLogger:Lcom/android/server/utils/EventLogger;

    new-instance p4, Lcom/android/server/usb/DualOutputStreamDumpSink;

    const-wide v0, 0x10900000011L

    invoke-direct {p4, p1, v0, v1}, Lcom/android/server/usb/DualOutputStreamDumpSink;-><init>(Lcom/android/internal/util/dump/DualDumpOutputStream;J)V

    invoke-virtual {p0, p4}, Lcom/android/server/utils/EventLogger;->dump(Lcom/android/server/utils/EventLogger$DumpSink;)V

    .line 2792
    :cond_0
    invoke-virtual {p1, p2, p3}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public getAccessoryStrings()[Ljava/lang/String;
    .locals 1

    .line 484
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 485
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 486
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 3

    .line 2708
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mControlFds:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/io/FileDescriptor;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 2713
    :cond_0
    :try_start_0
    invoke-static {p0}, Landroid/os/ParcelFileDescriptor;->dup(Ljava/io/FileDescriptor;)Landroid/os/ParcelFileDescriptor;

    move-result-object p0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 2715
    :catch_0
    sget-object p0, Lcom/android/server/usb/UsbDeviceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not dup fd for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 0

    .line 2648
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentFunctions()J
    .locals 2

    .line 2674
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getEnabledFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;
    .locals 1

    .line 478
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 480
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCurrentUsbFunctionsCb(JI)V
    .locals 0

    .line 2692
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    if-ne p3, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const/16 p3, 0x10

    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;Z)V

    return-void
.end method

.method public getCurrentUsbSpeed()I
    .locals 0

    .line 2678
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeed()I

    move-result p0

    return p0
.end method

.method public getGadgetHalVersion()I
    .locals 0

    .line 2682
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getGadgetHalVersion()I

    move-result p0

    return p0
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    .line 2721
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUsbSpeedCb(I)V
    .locals 0

    .line 2697
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getUsbSpeedCb(I)V

    return-void
.end method

.method public onAwakeStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onKeyguardStateChanged(Z)V
    .locals 3

    .line 318
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 319
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/KeyguardManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    .line 320
    invoke-virtual {v1, v0}, Landroid/app/KeyguardManager;->isDeviceSecure(I)Z

    move-result v0

    .line 326
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    if-eqz p1, :cond_0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/16 v0, 0xd

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(IZ)V

    return-void
.end method

.method public onUnlockUser(I)V
    .locals 0

    const/4 p1, 0x0

    .line 336
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onKeyguardStateChanged(Z)V

    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;
    .locals 2

    .line 2659
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2663
    invoke-virtual {v0, p1}, Landroid/hardware/usb/UsbAccessory;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2669
    invoke-virtual {p2, p1, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->checkPermission(Landroid/hardware/usb/UsbAccessory;II)V

    .line 2670
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeOpenAccessory()Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0

    .line 2664
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/hardware/usb/UsbAccessory;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " does not match current accessory "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 2667
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 2661
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p1, "no accessory attached"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final resetAccessoryHandshakeTimeoutHandler()V
    .locals 4

    .line 522
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    const-wide/16 v2, 0x2

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 525
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v1, 0x14

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 526
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v1, 0x2710

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public resetCb(I)V
    .locals 0

    .line 2701
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->resetCb(I)V

    return-void
.end method

.method public resetUsbGadget()V
    .locals 2

    .line 2773
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v0, 0x13

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public setCurrentFunctions(JI)V
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 2734
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fb

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x4

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 2736
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fc

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x10

    cmp-long v0, p1, v0

    if-nez v0, :cond_2

    .line 2738
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fd

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_2
    const-wide/16 v0, 0x8

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 2740
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4ff

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_3
    const-wide/16 v0, 0x20

    cmp-long v0, p1, v0

    if-nez v0, :cond_4

    .line 2742
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x4fe

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    goto :goto_0

    :cond_4
    const-wide/16 v0, 0x2

    cmp-long v0, p1, v0

    if-nez v0, :cond_5

    .line 2744
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mContext:Landroid/content/Context;

    const/16 v1, 0x500

    invoke-static {v0, v1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;I)V

    .line 2749
    :cond_5
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;I)V

    return-void
.end method

.method public setCurrentUsbFunctionsCb(JIIJZ)V
    .locals 0

    .line 2687
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-virtual/range {p0 .. p7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setCurrentUsbFunctionsCb(JIIJZ)V

    return-void
.end method

.method public setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V
    .locals 2

    .line 504
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 505
    :try_start_0
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager;->mCurrentSettings:Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    .line 506
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 p2, 0x5

    const/4 v1, 0x0

    invoke-virtual {p0, p2, p1, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    .line 507
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 0

    .line 2762
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const/16 p2, 0xc

    invoke-virtual {p0, p2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public final startAccessoryMode()V
    .locals 7

    .line 532
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHasUsbAccessory:Z

    if-nez v0, :cond_0

    goto :goto_1

    .line 534
    :cond_0
    sget-object v0, Lcom/android/server/usb/UsbDeviceManager;->sUsbOperationCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 536
    invoke-direct {p0}, Lcom/android/server/usb/UsbDeviceManager;->nativeGetAccessoryStrings()[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager;->mAccessoryStrings:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 538
    aget-object v3, v1, v2

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_1

    move v2, v3

    :cond_1
    const-wide/16 v3, 0x0

    if-eqz v2, :cond_2

    const-wide/16 v1, 0x2

    goto :goto_0

    :cond_2
    move-wide v1, v3

    :goto_0
    cmp-long v3, v1, v3

    if-eqz v3, :cond_3

    .line 548
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    const-wide/16 v5, 0x2710

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 550
    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/16 v4, 0x14

    invoke-virtual {v3, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 552
    invoke-virtual {p0, v1, v2, v0}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    :cond_3
    :goto_1
    return-void
.end method

.method public systemReady()V
    .locals 1

    .line 492
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerInternal;->registerScreenObserver(Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;)V

    .line 494
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public updateUserRestrictions()V
    .locals 1

    .line 511
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager;->mHandler:Lcom/android/server/usb/UsbDeviceManager$UsbHandler;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
