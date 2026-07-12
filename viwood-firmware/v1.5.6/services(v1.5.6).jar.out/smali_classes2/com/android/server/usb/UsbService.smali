.class public Lcom/android/server/usb/UsbService;
.super Landroid/hardware/usb/IUsbManager$Stub;
.source "UsbService.java"


# instance fields
.field public final mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mHostManager:Lcom/android/server/usb/UsbHostManager;

.field public final mLock:Ljava/lang/Object;

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mPortManager:Lcom/android/server/usb/UsbPortManager;

.field public final mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

.field public final mUsbDisableRequesters:Landroid/util/ArrayMap;

.field public final mUserManager:Landroid/os/UserManager;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmDeviceManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbDeviceManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPortManager(Lcom/android/server/usb/UsbService;)Lcom/android/server/usb/UsbPortManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmUsbDisableRequesters(Lcom/android/server/usb/UsbService;)Landroid/util/ArrayMap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$monStopUser(Lcom/android/server/usb/UsbService;Landroid/os/UserHandle;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbService;->onStopUser(Landroid/os/UserHandle;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$monSwitchUser(Lcom/android/server/usb/UsbService;I)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 7

    .line 206
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 207
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 209
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 210
    new-instance v0, Lcom/android/server/usb/UsbSettingsManager;

    invoke-direct {v0, p1, p0}, Lcom/android/server/usb/UsbSettingsManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 211
    new-instance v1, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {v1, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 212
    new-instance v2, Lcom/android/server/usb/UsbAlsaManager;

    invoke-direct {v2, p1}, Lcom/android/server/usb/UsbAlsaManager;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 214
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    .line 215
    const-string v4, "android.hardware.usb.host"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    new-instance v3, Lcom/android/server/usb/UsbHostManager;

    invoke-direct {v3, p1, v2, v1}, Lcom/android/server/usb/UsbHostManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    .line 218
    :cond_0
    new-instance v3, Ljava/io/File;

    const-string v4, "/sys/class/android_usb"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 219
    new-instance v3, Lcom/android/server/usb/UsbDeviceManager;

    invoke-direct {v3, p1, v2, v0, v1}, Lcom/android/server/usb/UsbDeviceManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbSettingsManager;Lcom/android/server/usb/UsbPermissionManager;)V

    iput-object v3, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_3

    .line 223
    :cond_2
    new-instance v0, Lcom/android/server/usb/UsbPortManager;

    invoke-direct {v0, p1}, Lcom/android/server/usb/UsbPortManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    :cond_3
    const/4 v0, 0x0

    .line 226
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->onSwitchUser(I)V

    .line 228
    new-instance v2, Lcom/android/server/usb/UsbService$1;

    invoke-direct {v2, p0}, Lcom/android/server/usb/UsbService$1;-><init>(Lcom/android/server/usb/UsbService;)V

    .line 241
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    const/16 p0, 0x3e8

    .line 242
    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->setPriority(I)V

    .line 243
    const-string p0, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v4, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 244
    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/usb/UsbPortManager;Lcom/android/server/usb/UsbAlsaManager;Landroid/os/UserManager;Lcom/android/server/usb/UsbSettingsManager;)V
    .locals 1

    .line 256
    invoke-direct {p0}, Landroid/hardware/usb/IUsbManager$Stub;-><init>()V

    .line 184
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    .line 189
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 257
    iput-object p1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 258
    iput-object p2, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    .line 259
    iput-object p3, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 260
    iput-object p4, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    .line 261
    iput-object p5, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 262
    new-instance p2, Lcom/android/server/usb/UsbPermissionManager;

    invoke-direct {p2, p1, p0}, Lcom/android/server/usb/UsbPermissionManager;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbService;)V

    iput-object p2, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    return-void
.end method

.method public static removeLastChar(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1503
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addAccessoryPackagesToPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 474
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 475
    const-string/jumbo v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 476
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 478
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 482
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 483
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addAccessoryPackagesToDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 485
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 486
    throw p0
.end method

.method public addDevicePackagesToPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 456
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 457
    const-string/jumbo v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 458
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 460
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 464
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 465
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->addDevicePackagesToDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 467
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 468
    throw p0
.end method

.method public bootCompleted()V
    .locals 4

    .line 316
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->bootCompleted()V

    .line 320
    :cond_0
    new-instance v0, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/usb/UsbService$PackageUninstallMonitor;-><init>(Lcom/android/server/usb/UsbService;Lcom/android/server/usb/UsbService-IA;)V

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 321
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/UserHandle;Landroid/os/Handler;)V

    .line 323
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/server/usb/UsbService$StrongAuthTracker;

    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    .line 325
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, p0, v2, v3}, Lcom/android/server/usb/UsbService$StrongAuthTracker;-><init>(Lcom/android/server/usb/UsbService;Landroid/content/Context;Landroid/os/Looper;)V

    .line 324
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->registerStrongAuthTracker(Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;)V

    return-void
.end method

.method public clearDefaults(Ljava/lang/String;I)V
    .locals 3

    .line 681
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 683
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 685
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 687
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 689
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->clearDefaults(Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 691
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 692
    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 28
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    .line 1137
    const-string v3, "?"

    const-string v4, "  dumpsys usb reset"

    iget-object v5, v0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v6, "UsbService"

    invoke-static {v5, v6, v1}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v5

    if-nez v5, :cond_0

    return-void

    .line 1139
    :cond_0
    new-instance v14, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v5, "  "

    invoke-direct {v14, v1, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1140
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 1142
    :try_start_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1143
    invoke-static {v1, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1146
    const-string v7, "--proto"

    invoke-virtual {v1, v7}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v2, :cond_3c

    .line 1150
    array-length v7, v2

    if-eqz v7, :cond_3c

    const/4 v7, 0x0

    aget-object v8, v2, v7

    const-string v9, "-a"

    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3c

    if-eqz v1, :cond_1

    goto/16 :goto_1c

    .line 1176
    :cond_1
    const-string/jumbo v1, "set-port-roles"

    aget-object v8, v2, v7

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v8, "Invalid power role: "

    const-string v9, "Invalid data role: "

    const-string v10, "device"

    const-string v11, "host"

    const-string/jumbo v15, "source"

    move/from16 p2, v7

    const-string/jumbo v7, "sink"

    const/4 v12, 0x4

    const/16 v18, -0x1

    move-object/from16 v19, v14

    const-string v13, ""

    const/16 v22, 0x3

    const/16 v23, 0x2

    const/4 v14, 0x1

    if-eqz v1, :cond_10

    :try_start_1
    array-length v1, v2

    if-ne v1, v12, :cond_10

    .line 1177
    aget-object v1, v2, v14

    .line 1179
    aget-object v3, v2, v23

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v6, -0x356f97e5    # -4731917.5f

    if-eq v4, v6, :cond_4

    const v6, -0x1a426a07

    if-eq v4, v6, :cond_3

    const v6, 0x35de93

    if-eq v4, v6, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v3, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v3, v14

    goto :goto_1

    :catchall_0
    move-exception v0

    goto/16 :goto_1f

    :cond_3
    const-string/jumbo v4, "no-power"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, v23

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move/from16 v3, p2

    goto :goto_1

    :cond_5
    :goto_0
    move/from16 v3, v18

    :goto_1
    if-eqz v3, :cond_8

    if-eq v3, v14, :cond_7

    move/from16 v4, v23

    if-eq v3, v4, :cond_6

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, v19

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_6
    move-object/from16 v3, v19

    move/from16 v4, p2

    goto :goto_2

    :cond_7
    move-object/from16 v3, v19

    const/4 v4, 0x2

    goto :goto_2

    :cond_8
    move-object/from16 v3, v19

    move v4, v14

    .line 1194
    :goto_2
    :try_start_2
    aget-object v6, v2, v22

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v7

    const v8, -0x4f94e1aa

    if-eq v7, v8, :cond_b

    const v8, 0x30f5a8

    if-eq v7, v8, :cond_a

    const v8, 0x7b007436

    if-eq v7, v8, :cond_9

    goto :goto_3

    :cond_9
    const-string/jumbo v7, "no-data"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    const/4 v6, 0x2

    goto :goto_4

    :cond_a
    invoke-virtual {v6, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move/from16 v6, p2

    goto :goto_4

    :cond_b
    invoke-virtual {v6, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    move v6, v14

    goto :goto_4

    :cond_c
    :goto_3
    move/from16 v6, v18

    :goto_4
    if-eqz v6, :cond_f

    if-eq v6, v14, :cond_e

    const/4 v7, 0x2

    if-eq v6, v7, :cond_d

    .line 1205
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_d
    move/from16 v7, p2

    goto :goto_5

    :cond_e
    const/4 v7, 0x2

    goto :goto_5

    :cond_f
    move v7, v14

    .line 1208
    :goto_5
    :try_start_3
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_41

    .line 1209
    invoke-virtual {v2, v1, v4, v7, v3}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1215
    invoke-virtual {v3}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1216
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v3, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    :cond_10
    move-object/from16 v1, v19

    move/from16 v19, v12

    .line 1219
    const-string v12, "add-port"

    move/from16 v24, v14

    aget-object v14, v2, p2

    invoke-virtual {v12, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_1c

    array-length v12, v2

    move/from16 v14, v22

    if-lt v12, v14, :cond_1c

    .line 1220
    aget-object v8, v2, v24

    const/16 v23, 0x2

    .line 1226
    aget-object v3, v2, v23

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    goto :goto_6

    :sswitch_0
    const-string/jumbo v4, "none"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x3

    goto :goto_7

    :sswitch_1
    const-string v4, "dual"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const/4 v3, 0x2

    goto :goto_7

    :sswitch_2
    const-string/jumbo v4, "ufp"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, p2

    goto :goto_7

    :sswitch_3
    const-string v4, "dfp"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move/from16 v3, v24

    goto :goto_7

    :cond_11
    :goto_6
    move/from16 v3, v18

    :goto_7
    if-eqz v3, :cond_15

    move/from16 v4, v24

    if-eq v3, v4, :cond_14

    const/4 v4, 0x2

    if-eq v3, v4, :cond_13

    const/4 v14, 0x3

    if-eq v3, v14, :cond_12

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mode: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v2, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_12
    move/from16 v9, p2

    goto :goto_8

    :cond_13
    const/4 v9, 0x3

    goto :goto_8

    :cond_14
    const/4 v9, 0x2

    goto :goto_8

    :cond_15
    const/4 v9, 0x1

    :goto_8
    move/from16 v10, p2

    move v11, v10

    const/4 v14, 0x3

    .line 1243
    :goto_9
    :try_start_4
    array-length v3, v2

    if-ge v14, v3, :cond_1b

    .line 1244
    aget-object v3, v2, v14

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v6, -0x5282495d

    if-eq v4, v6, :cond_17

    const v6, 0x1844dc29

    if-eq v4, v6, :cond_16

    goto :goto_a

    :cond_16
    const-string v4, "--compliance-warnings"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    move/from16 v3, p2

    goto :goto_b

    :cond_17
    const-string v4, "--displayport"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    const/4 v3, 0x1

    goto :goto_b

    :cond_18
    :goto_a
    move/from16 v3, v18

    :goto_b
    if-eqz v3, :cond_1a

    const/4 v4, 0x1

    if-eq v3, v4, :cond_19

    .line 1252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Identifier: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, v2, v14

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_19
    const/4 v11, 0x1

    goto :goto_c

    :cond_1a
    const/4 v10, 0x1

    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_9

    .line 1255
    :cond_1b
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_41

    move-object v12, v1

    .line 1256
    invoke-virtual/range {v7 .. v12}, Lcom/android/server/usb/UsbPortManager;->addSimulatedPort(Ljava/lang/String;IZZLcom/android/internal/util/IndentingPrintWriter;)V

    move-object v14, v12

    .line 1259
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1260
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v13, v2, v3}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    :cond_1c
    move-object v14, v1

    const-wide/16 v20, 0x0

    .line 1263
    const-string v1, "connect-port"

    aget-object v12, v2, p2

    invoke-virtual {v1, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2f

    array-length v1, v2

    const/4 v12, 0x5

    if-ne v1, v12, :cond_2f

    const/16 v24, 0x1

    .line 1264
    aget-object v1, v2, v24

    const/16 v23, 0x2

    .line 1266
    aget-object v4, v2, v23

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 1267
    aget-object v6, v2, v23

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_d

    :cond_1d
    aget-object v6, v2, v23

    :goto_d
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v12

    move-object/from16 v25, v1

    const v1, 0x1842e

    if-eq v12, v1, :cond_1f

    const v1, 0x1c3ff

    if-eq v12, v1, :cond_1e

    goto :goto_e

    :cond_1e
    const-string/jumbo v1, "ufp"

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    move/from16 v1, p2

    goto :goto_f

    :cond_1f
    const-string v1, "dfp"

    invoke-virtual {v6, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x1

    goto :goto_f

    :cond_20
    :goto_e
    move/from16 v1, v18

    :goto_f
    if-eqz v1, :cond_22

    const/4 v6, 0x1

    if-eq v1, v6, :cond_21

    .line 1275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v23, 0x2

    aget-object v1, v2, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_21
    const/4 v1, 0x2

    :goto_10
    const/16 v22, 0x3

    goto :goto_11

    :cond_22
    const/4 v1, 0x1

    goto :goto_10

    .line 1279
    :goto_11
    :try_start_5
    aget-object v6, v2, v22

    invoke-virtual {v6, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_23

    .line 1280
    aget-object v6, v2, v22

    invoke-static {v6}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :goto_12
    move/from16 v26, v1

    goto :goto_13

    :cond_23
    aget-object v6, v2, v22

    goto :goto_12

    :goto_13
    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move/from16 v27, v4

    const v4, -0x356f97e5    # -4731917.5f

    if-eq v1, v4, :cond_25

    const v4, 0x35de93

    if-eq v1, v4, :cond_24

    goto :goto_14

    :cond_24
    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    const/4 v1, 0x1

    goto :goto_15

    :cond_25
    invoke-virtual {v6, v15}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    move/from16 v1, p2

    goto :goto_15

    :cond_26
    :goto_14
    move/from16 v1, v18

    :goto_15
    if-eqz v1, :cond_28

    const/4 v4, 0x1

    if-eq v1, v4, :cond_27

    .line 1288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v22, 0x3

    aget-object v1, v2, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_27
    const/4 v1, 0x2

    goto :goto_16

    :cond_28
    const/4 v1, 0x1

    .line 1292
    :goto_16
    :try_start_6
    aget-object v4, v2, v19

    invoke-virtual {v4, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 1293
    aget-object v4, v2, v19

    invoke-static {v4}, Lcom/android/server/usb/UsbService;->removeLastChar(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_17

    :cond_29
    aget-object v4, v2, v19

    :goto_17
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v6

    const v8, -0x4f94e1aa

    if-eq v6, v8, :cond_2b

    const v8, 0x30f5a8

    if-eq v6, v8, :cond_2a

    goto :goto_18

    :cond_2a
    invoke-virtual {v4, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move/from16 v7, p2

    goto :goto_19

    :cond_2b
    invoke-virtual {v4, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2c

    const/4 v7, 0x1

    goto :goto_19

    :cond_2c
    :goto_18
    move/from16 v7, v18

    :goto_19
    if-eqz v7, :cond_2e

    const/4 v4, 0x1

    if-eq v7, v4, :cond_2d

    .line 1301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, v2, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 1498
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_2d
    move-object v2, v13

    const/4 v13, 0x2

    goto :goto_1a

    :cond_2e
    move-object v2, v13

    const/4 v13, 0x1

    .line 1304
    :goto_1a
    :try_start_7
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_41

    move v11, v1

    move-object v15, v14

    move-object/from16 v8, v25

    move/from16 v9, v26

    move/from16 v10, v27

    move v14, v3

    move-object v3, v2

    move-wide/from16 v1, v20

    .line 1305
    invoke-virtual/range {v7 .. v15}, Lcom/android/server/usb/UsbPortManager;->connectSimulatedPort(Ljava/lang/String;IZIZIZLcom/android/internal/util/IndentingPrintWriter;)V

    move-object v14, v15

    .line 1307
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1308
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v6, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    :cond_2f
    move-object v3, v13

    move-wide/from16 v7, v20

    .line 1311
    const-string v1, "disconnect-port"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_30

    array-length v1, v2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_30

    const/16 v24, 0x1

    .line 1312
    aget-object v1, v2, v24

    .line 1313
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_41

    .line 1314
    invoke-virtual {v2, v1, v14}, Lcom/android/server/usb/UsbPortManager;->disconnectSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1315
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1316
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1319
    :cond_30
    const-string/jumbo v1, "remove-port"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    array-length v1, v2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_31

    const/16 v24, 0x1

    .line 1320
    aget-object v1, v2, v24

    .line 1321
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_41

    .line 1322
    invoke-virtual {v2, v1, v14}, Lcom/android/server/usb/UsbPortManager;->removeSimulatedPort(Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1323
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1324
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1327
    :cond_31
    const-string/jumbo v1, "reset"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    array-length v1, v2

    const/4 v9, 0x1

    if-ne v1, v9, :cond_32

    .line 1328
    iget-object v1, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v1, :cond_41

    .line 1329
    invoke-virtual {v1, v14}, Lcom/android/server/usb/UsbPortManager;->resetSimulation(Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1330
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1331
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1334
    :cond_32
    const-string/jumbo v1, "set-contaminant-status"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_33

    array-length v1, v2

    const/4 v9, 0x3

    if-ne v1, v9, :cond_33

    const/16 v24, 0x1

    .line 1335
    aget-object v1, v2, v24

    const/16 v23, 0x2

    .line 1336
    aget-object v2, v2, v23

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1337
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_41

    .line 1338
    invoke-virtual {v4, v1, v2, v14}, Lcom/android/server/usb/UsbPortManager;->simulateContaminantStatus(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V

    .line 1339
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1340
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1343
    :cond_33
    const-string/jumbo v1, "set-compliance-reasons"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    array-length v1, v2

    const/4 v9, 0x3

    if-ne v1, v9, :cond_34

    const/16 v24, 0x1

    .line 1344
    aget-object v1, v2, v24

    const/16 v23, 0x2

    .line 1345
    aget-object v2, v2, v23

    .line 1346
    iget-object v4, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v4, :cond_41

    .line 1347
    invoke-virtual {v4, v1, v2, v14}, Lcom/android/server/usb/UsbPortManager;->simulateComplianceWarnings(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1348
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1349
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1352
    :cond_34
    const-string v1, "clear-compliance-reasons"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_35

    array-length v1, v2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_35

    const/16 v24, 0x1

    .line 1353
    aget-object v1, v2, v24

    .line 1354
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_41

    .line 1355
    invoke-virtual {v2, v1, v3, v14}, Lcom/android/server/usb/UsbPortManager;->simulateComplianceWarnings(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/util/IndentingPrintWriter;)V

    .line 1356
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1357
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1360
    :cond_35
    const-string/jumbo v1, "set-displayport-status"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    array-length v1, v2

    const/4 v9, 0x7

    if-ne v1, v9, :cond_36

    const/16 v24, 0x1

    .line 1361
    aget-object v1, v2, v24

    const/16 v23, 0x2

    .line 1362
    aget-object v4, v2, v23

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    const/16 v22, 0x3

    .line 1363
    aget-object v4, v2, v22

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    .line 1364
    aget-object v4, v2, v19

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/4 v4, 0x5

    .line 1365
    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v12

    const/4 v4, 0x6

    .line 1366
    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    move-wide/from16 v20, v7

    .line 1367
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_41

    move-object v8, v1

    move-wide/from16 v1, v20

    .line 1368
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/usb/UsbPortManager;->simulateDisplayPortAltModeInfo(Ljava/lang/String;IIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1371
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1372
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v6, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    :cond_36
    move-wide/from16 v20, v7

    .line 1375
    const-string/jumbo v1, "reset-displayport-status"

    aget-object v7, v2, p2

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_37

    array-length v1, v2

    const/4 v9, 0x2

    if-ne v1, v9, :cond_37

    const/16 v24, 0x1

    .line 1376
    aget-object v8, v2, v24

    .line 1377
    iget-object v7, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v7, :cond_41

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-wide/from16 v1, v20

    .line 1378
    invoke-virtual/range {v7 .. v14}, Lcom/android/server/usb/UsbPortManager;->simulateDisplayPortAltModeInfo(Ljava/lang/String;IIIZILcom/android/internal/util/IndentingPrintWriter;)V

    .line 1385
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1386
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    new-instance v4, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v6, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v6, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v4, v6}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v4, v3, v1, v2}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    :cond_37
    move-wide/from16 v7, v20

    .line 1389
    const-string v1, "enable-usb-data"

    aget-object v9, v2, p2

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_39

    array-length v1, v2

    const/4 v9, 0x3

    if-ne v1, v9, :cond_39

    const/16 v24, 0x1

    .line 1390
    aget-object v1, v2, v24

    const/16 v23, 0x2

    .line 1391
    aget-object v2, v2, v23

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 1393
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_41

    .line 1394
    invoke-virtual {v0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object v0

    array-length v3, v0

    move/from16 v7, p2

    :goto_1b
    if-ge v7, v3, :cond_41

    aget-object v4, v0, v7

    .line 1395
    invoke-virtual {v4}, Landroid/hardware/usb/UsbPort;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_38

    .line 1396
    invoke-virtual {v4, v2}, Landroid/hardware/usb/UsbPort;->enableUsbData(Z)I

    move-result v0

    .line 1397
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableUsbData "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " status "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1e

    :cond_38
    add-int/lit8 v7, v7, 0x1

    goto :goto_1b

    .line 1403
    :cond_39
    const-string/jumbo v1, "ports"

    aget-object v6, v2, p2

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    array-length v1, v2

    const/4 v6, 0x1

    if-ne v1, v6, :cond_3a

    .line 1404
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v0, :cond_41

    .line 1405
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    invoke-virtual {v0, v1, v3, v7, v8}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    goto/16 :goto_1e

    .line 1408
    :cond_3a
    const-string v1, "dump-descriptors"

    aget-object v3, v2, p2

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3b

    .line 1409
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {v0, v14, v2}, Lcom/android/server/usb/UsbHostManager;->dumpDescriptors(Lcom/android/internal/util/IndentingPrintWriter;[Ljava/lang/String;)V

    goto/16 :goto_1e

    .line 1411
    :cond_3b
    const-string v0, "Dump current USB state or issue command:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1412
    const-string v0, "  ports"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1413
    const-string v0, "  set-port-roles <id> <source|sink|no-power> <host|device|no-data>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1414
    const-string v0, "  add-port <id> <ufp|dfp|dual|none> <optional args>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1415
    const-string v0, "    <optional args> include:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1416
    const-string v0, "      --compliance-warnings: enables compliance warnings on port"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1417
    const-string v0, "      --displayport: enables DisplayPort Alt Mode on port"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1418
    const-string v0, "  connect-port <id> <ufp|dfp><?> <source|sink><?> <host|device><?>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1419
    const-string v0, "    (add ? suffix if mode, power role, or data role can be changed)"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1420
    const-string v0, "  disconnect-port <id>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1421
    const-string v0, "  remove-port <id>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1422
    const-string v0, "  reset"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1423
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1424
    const-string v0, "Example USB type C port role switch:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1425
    const-string v0, "  dumpsys usb set-port-roles \"default\" source device"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1426
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1427
    const-string v0, "Example USB type C port simulation with full capabilities:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1428
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --compliance-warnings --displayport"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1430
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp? sink? device?"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1431
    const-string v0, "  dumpsys usb ports"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1432
    const-string v0, "  dumpsys usb disconnect-port \"matrix\""

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1433
    const-string v0, "  dumpsys usb remove-port \"matrix\""

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1434
    invoke-virtual {v14, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1436
    const-string v0, "Example USB type C port where only power role can be changed:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1437
    const-string v0, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1438
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source? host"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1439
    invoke-virtual {v14, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1440
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1441
    const-string v0, "Example USB OTG port where id pin determines function:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1442
    const-string v0, "  dumpsys usb add-port \"matrix\" dual"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1443
    const-string v0, "  dumpsys usb connect-port \"matrix\" dfp source host"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1444
    invoke-virtual {v14, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1445
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1446
    const-string v0, "Example USB device-only port:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1447
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1448
    const-string v0, "  dumpsys usb connect-port \"matrix\" ufp sink device"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1449
    invoke-virtual {v14, v4}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1450
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1451
    const-string v0, "Example simulate contaminant status:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1452
    const-string v0, "  dumpsys usb add-port \"matrix\" ufp"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1453
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" true"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1454
    const-string v0, "  dumpsys usb set-contaminant-status \"matrix\" false"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1455
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1456
    const-string v0, "Example simulate compliance warnings:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1457
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --compliance-warnings"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1458
    const-string v0, "  dumpsys usb set-compliance-reasons \"matrix\" <reason-list>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1459
    const-string v0, "  dumpsys usb clear-compliance-reasons \"matrix\""

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1460
    const-string v0, "<reason-list> is expected to be formatted as \"1, ..., N\""

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1461
    const-string/jumbo v0, "with reasons that need to be simulated."

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1462
    const-string v0, "  1: other"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1463
    const-string v0, "  2: debug accessory"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1464
    const-string v0, "  3: bc12"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1465
    const-string v0, "  4: missing rp"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1466
    const-string v0, "  5: input power limited"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1467
    const-string v0, "  6: missing data lines"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1468
    const-string v0, "  7: enumeration fail"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1469
    const-string v0, "  8: flaky connection"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1470
    const-string v0, "  9: unreliable io"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1472
    const-string v0, "Example simulate DisplayPort Alt Mode Changes:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1473
    const-string v0, "  dumpsys usb add-port \"matrix\" dual --displayport"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1474
    const-string v0, "  dumpsys usb set-displayport-status \"matrix\" <partner-sink> <cable> <num-lanes> <hpd> <link-training-status>"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1476
    const-string v0, "The required fields are as followed:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1477
    const-string v0, "    <partner-sink>: type DisplayPortAltModeStatus"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1478
    const-string v0, "    <cable>: type DisplayPortAltModeStatus"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    const-string v0, "    <num-lanes>: type int, expected 0, 2, or 4"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    const-string v0, "    <hpd>: type boolean, expected true or false"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    const-string v0, "    <link-training-status>: type LinkTrainingStatus"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    const-string v0, "  dumpsys usb reset-displayport-status \"matrix\""

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    const-string/jumbo v0, "reset-displayport-status can also be used in order to set"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    const-string/jumbo v0, "the DisplayPortInfo to default values."

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1486
    const-string v0, "Example enableUsbData"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    const-string v0, "This dumpsys command functions for both simulated and real ports."

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    const-string v0, "  dumpsys usb enable-usb-data \"matrix\" true"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1489
    const-string v0, "  dumpsys usb enable-usb-data \"matrix\" false"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v14}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 1491
    const-string v0, "Example USB device descriptors:"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1492
    const-string v0, "  dumpsys usb dump-descriptors -dump-short"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1493
    const-string v0, "  dumpsys usb dump-descriptors -dump-tree"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1494
    const-string v0, "  dumpsys usb dump-descriptors -dump-list"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1495
    const-string v0, "  dumpsys usb dump-descriptors -dump-raw"

    invoke-virtual {v14, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1e

    :cond_3c
    :goto_1c
    if-eqz v1, :cond_3d

    .line 1153
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Landroid/util/proto/ProtoOutputStream;

    move-object/from16 v3, p1

    invoke-direct {v2, v3}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    goto :goto_1d

    .line 1155
    :cond_3d
    const-string v1, "USB MANAGER STATE (dumpsys usb):"

    invoke-virtual {v14, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1157
    new-instance v1, Lcom/android/internal/util/dump/DualDumpOutputStream;

    new-instance v2, Lcom/android/internal/util/IndentingPrintWriter;

    invoke-direct {v2, v14, v5}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 1160
    :goto_1d
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v2, :cond_3e

    .line 1161
    const-string v3, "device_manager"

    const-wide v4, 0x10b00000001L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbDeviceManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1163
    :cond_3e
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_3f

    .line 1164
    const-string v3, "host_manager"

    const-wide v4, 0x10b00000002L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbHostManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1166
    :cond_3f
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v2, :cond_40

    .line 1167
    const-string/jumbo v3, "port_manager"

    const-wide v4, 0x10b00000003L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbPortManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1169
    :cond_40
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    const-string v3, "alsa_manager"

    const-wide v4, 0x10b00000004L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbAlsaManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1171
    iget-object v2, v0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    const-string/jumbo v3, "settings_manager"

    const-wide v4, 0x10b00000005L

    invoke-virtual {v2, v1, v3, v4, v5}, Lcom/android/server/usb/UsbSettingsManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1173
    iget-object v0, v0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const-string/jumbo v2, "permissions_manager"

    const-wide v3, 0x10b00000006L

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/usb/UsbPermissionManager;->dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V

    .line 1175
    invoke-virtual {v1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1498
    :cond_41
    :goto_1e
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1499
    throw v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1842e -> :sswitch_3
        0x1c3ff -> :sswitch_2
        0x2f387c -> :sswitch_1
        0x33af38 -> :sswitch_0
    .end sparse-switch
.end method

.method public enableContaminantDetection(Ljava/lang/String;Z)V
    .locals 3

    .line 906
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 907
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 911
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 912
    invoke-virtual {p0, p1, p2, v2}, Lcom/android/server/usb/UsbPortManager;->enableContaminantDetection(Ljava/lang/String;ZLcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 915
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 916
    throw p0
.end method

.method public enableLimitPowerTransfer(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 10

    .line 885
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 886
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 888
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 890
    :try_start_0
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_0

    int-to-long v6, p3

    const/4 v9, 0x0

    move-object v4, p1

    move v5, p2

    move-object v8, p4

    .line 891
    invoke-virtual/range {v3 .. v9}, Lcom/android/server/usb/UsbPortManager;->enableLimitPowerTransfer(Ljava/lang/String;ZJLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v8, p4

    const/4 p0, 0x1

    .line 894
    :try_start_1
    invoke-interface {v8, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 896
    :try_start_2
    const-string p1, "UsbService"

    const-string p2, "enableLimitPowerTransfer: Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 900
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 901
    throw p0
.end method

.method public enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;)Z
    .locals 7

    .line 940
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 939
    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbService;->enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z

    move-result p0

    return p0
.end method

.method public enableUsbDataInternal(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;IZ)Z
    .locals 5

    .line 954
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 956
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 958
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/android/server/usb/UsbService;->shouldUpdateUsbSignaling(Ljava/lang/String;ZIZ)Z

    move-result p5

    const/4 p6, 0x0

    const-string v1, "enableUsbData: Failed to call onOperationComplete"

    const-string v2, "UsbService"

    const/4 v0, 0x1

    if-nez p5, :cond_0

    .line 963
    :try_start_0
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 965
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return p6

    .line 971
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 974
    :try_start_1
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_1

    const/4 p5, 0x0

    .line 975
    invoke-virtual/range {p0 .. p5}, Lcom/android/server/usb/UsbPortManager;->enableUsbData(Ljava/lang/String;ZILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)Z

    move-result p6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 979
    :cond_1
    :try_start_2
    invoke-interface {p4, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 981
    :try_start_3
    invoke-static {v2, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 985
    :goto_1
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p6

    :goto_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 986
    throw p0
.end method

.method public enableUsbDataWhileDocked(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 6

    .line 1036
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 1035
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbService;->enableUsbDataWhileDockedInternal(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;IZ)V

    return-void
.end method

.method public enableUsbDataWhileDockedInternal(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;IZ)V
    .locals 9

    .line 1045
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1047
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1050
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1053
    invoke-virtual {p0, p1, v0, p4, p5}, Lcom/android/server/usb/UsbService;->shouldUpdateUsbSignaling(Ljava/lang/String;ZIZ)Z

    move-result p4

    const-string p5, "UsbService"

    if-nez p4, :cond_0

    .line 1055
    :try_start_0
    invoke-interface {p3, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    move-object p0, v0

    .line 1057
    const-string p1, "enableUsbDataWhileDocked: Failed to call onOperationComplete"

    invoke-static {p5, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1063
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1065
    :try_start_1
    iget-object v3, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz v3, :cond_1

    int-to-long v5, p2

    const/4 v8, 0x0

    move-object v4, p1

    move-object v7, p3

    .line 1066
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/usb/UsbPortManager;->enableUsbDataWhileDocked(Ljava/lang/String;JLandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    :cond_1
    move-object v7, p3

    .line 1069
    :try_start_2
    invoke-interface {v7, v0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p0, v0

    .line 1071
    :try_start_3
    const-string p1, "enableUsbData: Failed to call onOperationComplete"

    invoke-static {p5, p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1075
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    :goto_1
    return-void

    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1076
    throw p0
.end method

.method public getControlFd(J)Landroid/os/ParcelFileDescriptor;
    .locals 0

    .line 416
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getControlFd_enforcePermission()V

    .line 417
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->getControlFd(J)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    return-object p0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_0

    .line 379
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getCurrentFunctions()J
    .locals 2

    .line 722
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentFunctions_enforcePermission()V

    .line 723
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 724
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentUsbSpeed()I
    .locals 2

    .line 748
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getCurrentUsbSpeed_enforcePermission()V

    .line 749
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 751
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 753
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentUsbSpeed()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 755
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 756
    throw p0
.end method

.method public getDeviceList(Landroid/os/Bundle;)V
    .locals 0

    .line 339
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz p0, :cond_0

    .line 340
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->getDeviceList(Landroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method public getGadgetHalVersion()I
    .locals 2

    .line 762
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getGadgetHalVersion_enforcePermission()V

    .line 763
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 767
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getGadgetHalVersion()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 769
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 770
    throw p0
.end method

.method public getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;
    .locals 0

    .line 203
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    return-object p0
.end method

.method public getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;
    .locals 3

    .line 841
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 842
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 846
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->getPortStatus(Ljava/lang/String;)Landroid/hardware/usb/UsbPortStatus;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 848
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v2

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 849
    throw p0
.end method

.method public getPorts()Ljava/util/List;
    .locals 6

    .line 816
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getPorts_enforcePermission()V

    .line 818
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 820
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p0, :cond_0

    .line 835
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0

    .line 823
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getPorts()[Landroid/hardware/usb/UsbPort;

    move-result-object p0

    .line 825
    array-length v2, p0

    .line 826
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 828
    aget-object v5, p0, v4

    invoke-static {v5}, Landroid/hardware/usb/ParcelableUsbPort;->of(Landroid/hardware/usb/UsbPort;)Landroid/hardware/usb/ParcelableUsbPort;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 835
    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v3

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 836
    throw p0
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    .line 740
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getScreenUnlockedFunctions_enforcePermission()V

    .line 741
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 742
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->getScreenUnlockedFunctions()J

    move-result-wide v0

    return-wide v0
.end method

.method public getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;
    .locals 0

    .line 196
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForUser(I)Lcom/android/server/usb/UsbUserSettingsManager;

    move-result-object p0

    return-object p0
.end method

.method public getUsbHalVersion()I
    .locals 2

    .line 922
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->getUsbHalVersion_enforcePermission()V

    .line 924
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 926
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 927
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->getUsbHalVersion()I

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 932
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, -0x1

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 933
    throw p0
.end method

.method public grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    .locals 3

    .line 652
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->grantAccessoryPermission_enforcePermission()V

    .line 653
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 657
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 659
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 660
    throw p0
.end method

.method public grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    .locals 3

    .line 638
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->grantDevicePermission_enforcePermission()V

    .line 639
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 641
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 643
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbUserPermissionManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 645
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 646
    throw p0
.end method

.method public hasAccessoryPermission(Landroid/hardware/usb/UsbAccessory;)Z
    .locals 5

    .line 585
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 586
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 587
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 589
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 591
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 593
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    throw p0
.end method

.method public hasAccessoryPermissionWithIdentity(Landroid/hardware/usb/UsbAccessory;II)Z
    .locals 1

    .line 600
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->hasAccessoryPermissionWithIdentity_enforcePermission()V

    .line 602
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 603
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbAccessory;II)Z

    move-result p0

    return p0
.end method

.method public hasDefaults(Ljava/lang/String;I)Z
    .locals 3

    .line 665
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    invoke-static {p2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p2

    .line 671
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 673
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->hasDefaults(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 675
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 676
    throw p0
.end method

.method public hasDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;)Z
    .locals 5

    .line 561
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 562
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 563
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 565
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 567
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 569
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 570
    throw p0
.end method

.method public hasDevicePermissionWithIdentity(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z
    .locals 1

    .line 577
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->hasDevicePermissionWithIdentity_enforcePermission()V

    .line 579
    invoke-static {p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->hasPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;II)Z

    move-result p0

    return p0
.end method

.method public isFunctionEnabled(Ljava/lang/String;)Z
    .locals 2

    .line 711
    invoke-virtual {p0}, Lcom/android/server/usb/UsbService;->getCurrentFunctions()J

    move-result-wide v0

    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p0

    and-long/2addr p0, v0

    const-wide/16 v0, 0x0

    cmp-long p0, p0, v0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isModeChangeSupported(Ljava/lang/String;)Z
    .locals 2

    .line 855
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->isModeChangeSupported_enforcePermission()V

    .line 856
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 858
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 860
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->isModeChangeSupported(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    .line 862
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 863
    throw p0
.end method

.method public isUvcGadgetSupportEnabled()Z
    .locals 1

    .line 716
    const-string/jumbo p0, "ro.usb.uvc.enabled"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final onStopUser(Landroid/os/UserHandle;)V
    .locals 0

    .line 298
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbSettingsManager;->remove(Landroid/os/UserHandle;)V

    return-void
.end method

.method public final onSwitchUser(I)V
    .locals 3

    .line 275
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 276
    :try_start_0
    iput p1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    .line 281
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    .line 282
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v1

    .line 283
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v2, :cond_0

    .line 284
    invoke-virtual {v2, v1}, Lcom/android/server/usb/UsbHostManager;->setCurrentUserSettings(Lcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 286
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_1

    .line 287
    invoke-virtual {p0, p1, v1}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentUser(ILcom/android/server/usb/UsbProfileGroupSettingsManager;)V

    .line 289
    :cond_1
    monitor-exit v0

    return-void

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public onUnlockUser(I)V
    .locals 0

    .line 331
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz p0, :cond_0

    .line 332
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager;->onUnlockUser(I)V

    :cond_0
    return-void
.end method

.method public openAccessory(Landroid/hardware/usb/UsbAccessory;)Landroid/os/ParcelFileDescriptor;
    .locals 8

    .line 388
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_1

    .line 389
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 390
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 391
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 393
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    move-result-wide v3

    .line 395
    :try_start_0
    iget-object v5, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 396
    :try_start_1
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v7, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v6, v2, v7}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 397
    iget-object v6, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {v6, p1, p0, v1, v0}, Lcom/android/server/usb/UsbDeviceManager;->openAccessory(Landroid/hardware/usb/UsbAccessory;Lcom/android/server/usb/UsbUserPermissionManager;II)Landroid/os/ParcelFileDescriptor;

    move-result-object p0

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 405
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    goto :goto_0

    .line 400
    :cond_0
    :try_start_2
    const-string p0, "UsbService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot open "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " for user "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " as user is not active."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 405
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    goto :goto_1

    .line 403
    :goto_0
    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    .line 405
    invoke-static {v3, v4}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 406
    throw p0

    :cond_1
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public openDevice(Ljava/lang/String;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 11

    .line 349
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 351
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    .line 352
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 353
    invoke-static {v7}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 355
    invoke-static {}, Landroid/hardware/usb/IUsbManager$Stub;->clearCallingIdentity()J

    move-result-wide v8

    .line 357
    :try_start_0
    iget-object v10, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 358
    :try_start_1
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mUserManager:Landroid/os/UserManager;

    iget v3, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-virtual {v2, v0, v3}, Landroid/os/UserManager;->isSameProfileGroup(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v4

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/usb/UsbHostManager;->openDevice(Ljava/lang/String;Lcom/android/server/usb/UsbUserPermissionManager;Ljava/lang/String;II)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object p0, v0

    goto :goto_1

    :cond_0
    move-object v3, p1

    .line 362
    const-string p0, "UsbService"

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Cannot open "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " for user "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " as user is not active."

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    :goto_0
    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 367
    invoke-static {v8, v9}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    return-object v1

    .line 365
    :goto_1
    :try_start_2
    monitor-exit v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    move-object p0, v0

    .line 367
    invoke-static {v8, v9}, Landroid/hardware/usb/IUsbManager$Stub;->restoreCallingIdentity(J)V

    .line 368
    throw p0

    :cond_1
    return-object v1
.end method

.method public registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z
    .locals 3

    .line 1098
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1101
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1105
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 1106
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->registerForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1109
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    goto :goto_0

    :cond_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return p0

    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1110
    throw p0
.end method

.method public removeAccessoryPackagesFromPreferenceDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 510
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 511
    const-string/jumbo v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 512
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 514
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 516
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 518
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 519
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeAccessoryPackagesFromDenied(Landroid/hardware/usb/UsbAccessory;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 521
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 522
    throw p0
.end method

.method public removeDevicePackagesFromPreferenceDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    .locals 3

    .line 492
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 493
    const-string/jumbo v0, "packageNames"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkArrayElementsNotNull([Ljava/lang/Object;Ljava/lang/String;)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ljava/lang/String;

    .line 494
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 496
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 500
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    .line 501
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->removeDevicePackagesFromDenied(Landroid/hardware/usb/UsbDevice;[Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 504
    throw p0
.end method

.method public requestAccessoryPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 623
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 624
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 625
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 627
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 629
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 631
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 632
    throw p0
.end method

.method public requestDevicePermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 8

    .line 608
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 609
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    .line 610
    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 612
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6

    .line 614
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbService;->getPermissionsForUser(I)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/usb/UsbUserPermissionManager;->requestPermission(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/app/PendingIntent;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 616
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 617
    throw p0
.end method

.method public resetUsbGadget()V
    .locals 2

    .line 776
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->resetUsbGadget_enforcePermission()V

    .line 777
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    const-string v1, "DeviceManager must not be null"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 779
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 781
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager;->resetUsbGadget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 783
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 784
    throw p0
.end method

.method public resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;)V
    .locals 3

    .line 790
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 792
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 794
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 796
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 799
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 800
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->resetUsbPort(Ljava/lang/String;ILandroid/hardware/usb/IUsbOperationInternal;Lcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    const/4 p0, 0x1

    .line 803
    :try_start_1
    invoke-interface {p3, p0}, Landroid/hardware/usb/IUsbOperationInternal;->onOperationComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 805
    :try_start_2
    const-string p1, "UsbService"

    const-string/jumbo p2, "resetUsbPort: Failed to call onOperationComplete"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 809
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 810
    throw p0
.end method

.method public setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    .locals 3

    .line 438
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 440
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 444
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 446
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 449
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 450
    throw p0
.end method

.method public setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;ILandroid/os/UserHandle;Z)V
    .locals 3

    .line 545
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 546
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 548
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 552
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setAccessoryPersistentPermission(Landroid/hardware/usb/UsbAccessory;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 555
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 556
    throw p0
.end method

.method public setCurrentFunction(Ljava/lang/String;ZI)V
    .locals 0

    .line 706
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbService;->setCurrentFunctions(JI)V

    return-void
.end method

.method public setCurrentFunctions(JI)V
    .locals 1

    .line 698
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setCurrentFunctions_enforcePermission()V

    .line 699
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 700
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 701
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbDeviceManager;->setCurrentFunctions(JI)V

    return-void
.end method

.method public setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V
    .locals 3

    .line 422
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 424
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p3

    .line 427
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 429
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mSettingsManager:Lcom/android/server/usb/UsbSettingsManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbSettingsManager;->getSettingsForProfileGroup(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 432
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 433
    throw p0
.end method

.method public setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;ILandroid/os/UserHandle;Z)V
    .locals 3

    .line 528
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 531
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 535
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {p0, p3}, Lcom/android/server/usb/UsbPermissionManager;->getPermissionsForUser(Landroid/os/UserHandle;)Lcom/android/server/usb/UsbUserPermissionManager;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p4}, Lcom/android/server/usb/UsbUserPermissionManager;->setDevicePersistentPermission(Landroid/hardware/usb/UsbDevice;IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 538
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 539
    throw p0
.end method

.method public setPortRoles(Ljava/lang/String;II)V
    .locals 3

    .line 868
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 869
    invoke-static {p2, p3}, Landroid/hardware/usb/UsbPort;->checkRoles(II)V

    .line 870
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 874
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 875
    invoke-virtual {p0, p1, p2, p3, v2}, Lcom/android/server/usb/UsbPortManager;->setPortRoles(Ljava/lang/String;IILcom/android/internal/util/IndentingPrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 878
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 879
    throw p0
.end method

.method public setScreenUnlockedFunctions(J)V
    .locals 1

    .line 730
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setScreenUnlockedFunctions_enforcePermission()V

    .line 731
    invoke-static {p1, p2}, Landroid/hardware/usb/UsbManager;->areSettableFunctions(J)Z

    move-result v0

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 732
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 734
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/usb/UsbDeviceManager;->setScreenUnlockedFunctions(J)V

    return-void
.end method

.method public setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V
    .locals 3

    .line 1082
    invoke-virtual {p0}, Landroid/hardware/usb/IUsbManager$Stub;->setUsbDeviceConnectionHandler_enforcePermission()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1084
    :try_start_0
    iget v1, p0, Lcom/android/server/usb/UsbService;->mCurrentUserId:I

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 1085
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz p0, :cond_0

    .line 1086
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbHostManager;->setUsbDeviceConnectionHandler(Landroid/content/ComponentName;)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1092
    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    .line 1089
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Only the current user can register a usb connection handler"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1092
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public final shouldUpdateUsbSignaling(Ljava/lang/String;ZIZ)Z
    .locals 3

    if-eqz p4, :cond_0

    const/4 p0, 0x0

    return p0

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    monitor-enter v0

    .line 1006
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1007
    iget-object v1, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/usb/UsbDataSignalDisableRequesters;

    invoke-direct {v2}, Lcom/android/server/usb/UsbDataSignalDisableRequesters;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 1009
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mUsbDisableRequesters:Landroid/util/ArrayMap;

    .line 1010
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;

    if-eqz p2, :cond_3

    if-eqz p4, :cond_2

    .line 1014
    iget-object p1, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mInternalReasons:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1016
    :cond_2
    iget-object p1, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 1020
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->isEmpty()Z

    move-result p0

    monitor-exit v0

    return p0

    :cond_3
    if-eqz p4, :cond_4

    .line 1023
    iget-object p0, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mInternalReasons:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1025
    :cond_4
    iget-object p0, p0, Lcom/android/server/usb/UsbDataSignalDisableRequesters;->mExternalUids:Landroid/util/ArraySet;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1028
    :goto_2
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public systemReady()V
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbAlsaManager;->systemReady()V

    .line 304
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    if-eqz v0, :cond_0

    .line 305
    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->systemReady()V

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mHostManager:Lcom/android/server/usb/UsbHostManager;

    if-eqz v0, :cond_1

    .line 308
    invoke-virtual {v0}, Lcom/android/server/usb/UsbHostManager;->systemReady()V

    .line 310
    :cond_1
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_2

    .line 311
    invoke-virtual {p0}, Lcom/android/server/usb/UsbPortManager;->systemReady()V

    :cond_2
    return-void
.end method

.method public unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V
    .locals 3

    .line 1118
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1121
    iget-object v0, p0, Lcom/android/server/usb/UsbService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.MANAGE_USB"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1123
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1125
    :try_start_0
    iget-object p0, p0, Lcom/android/server/usb/UsbService;->mPortManager:Lcom/android/server/usb/UsbPortManager;

    if-eqz p0, :cond_0

    .line 1126
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbPortManager;->unregisterForDisplayPortEvents(Landroid/hardware/usb/IDisplayPortAltModeInfoListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 1129
    :cond_0
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1130
    throw p0
.end method
