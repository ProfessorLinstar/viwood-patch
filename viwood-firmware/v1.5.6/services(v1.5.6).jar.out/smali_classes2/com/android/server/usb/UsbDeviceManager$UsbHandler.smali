.class public abstract Lcom/android/server/usb/UsbDeviceManager$UsbHandler;
.super Landroid/os/Handler;
.source "UsbDeviceManager.java"


# instance fields
.field public mAccessoryConnectionStartTime:J

.field public mAdbNotificationShown:Z

.field public mAudioAccessoryConnected:Z

.field public mAudioAccessorySupported:Z

.field public mBootCompleted:Z

.field public mBroadcastedIntent:Landroid/content/Intent;

.field public mConfigured:Z

.field public mConnected:Z

.field public mConnectedToDataDisabledPort:Z

.field public final mContentResolver:Landroid/content/ContentResolver;

.field public final mContext:Landroid/content/Context;

.field public mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

.field public mCurrentFunctions:J

.field public mCurrentFunctionsApplied:Z

.field public mCurrentGadgetHalVersion:I

.field public mCurrentUsbFunctionsReceived:Z

.field public mCurrentUser:I

.field public mHideUsbNotification:Z

.field public mHostConnected:Z

.field public mInHostModeWithNoAccessoryConnected:Z

.field public mIsMtpServiceBound:Z

.field public mMidiCard:I

.field public mMidiDevice:I

.field public mMidiEnabled:Z

.field public mMtpServiceConnection:Landroid/content/ServiceConnection;

.field public mNotificationManager:Landroid/app/NotificationManager;

.field public mPendingBootAccessoryHandshakeBroadcast:Z

.field public mPendingBootBroadcast:Z

.field public final mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

.field public mPowerBrickConnectionStatus:I

.field public mResetUsbGadgetDisableDebounce:Z

.field public mScreenLocked:Z

.field public mScreenUnlockedFunctions:J

.field public mSendStringCount:I

.field public mSettings:Landroid/content/SharedPreferences;

.field public mSinkPower:Z

.field public mSourcePower:Z

.field public mStartAccessory:Z

.field public mSupportsAllCombinations:Z

.field public mSystemReady:Z

.field public mUsbAccessoryConnected:Z

.field public final mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

.field public mUsbCharging:Z

.field public final mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

.field public mUsbNotificationId:I

.field public mUsbSpeed:I

.field public mUseUsbNotification:Z

.field public mUserUnlockedAfterBoot:Z


# direct methods
.method public static synthetic $r8$lambda$2nuEzuM7OlyuHKynOlppQlNwQYk(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1038
    const-string/jumbo p0, "midi"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$fHW3c8yL_XLWe8lUhAR7PSja3_s(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1031
    const-string p0, "card"

    invoke-virtual {p1, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/usb/UsbDeviceManager;Lcom/android/server/usb/UsbAlsaManager;Lcom/android/server/usb/UsbPermissionManager;)V
    .locals 2

    .line 681
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    const-wide/16 v0, 0x0

    .line 628
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 p1, 0x0

    .line 629
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 630
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 666
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    .line 671
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;

    invoke-direct {v0, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$1;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    .line 682
    iput-object p2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 683
    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    .line 684
    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    .line 685
    iput-object p5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    .line 686
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContentResolver:Landroid/content/ContentResolver;

    .line 688
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result p3

    iput p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    const/4 p3, 0x1

    .line 689
    iput-boolean p3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 691
    invoke-virtual {p0, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p4

    iput-object p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-nez p4, :cond_0

    .line 693
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p4

    const-string p5, "Couldn\'t load shared preferences"

    invoke-static {p4, p5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 695
    :cond_0
    sget-object p5, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 697
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    invoke-static {p5, v1, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    const-string v0, ""

    .line 696
    invoke-interface {p4, p5, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 695
    invoke-static {p4}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide p4

    iput-wide p4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 703
    :goto_0
    invoke-static {p2}, Landroid/os/storage/StorageManager;->from(Landroid/content/Context;)Landroid/os/storage/StorageManager;

    move-result-object p4

    if-eqz p4, :cond_1

    .line 705
    invoke-virtual {p4}, Landroid/os/storage/StorageManager;->getPrimaryVolume()Landroid/os/storage/StorageVolume;

    move-result-object p4

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    :goto_1
    if-eqz p4, :cond_2

    .line 707
    invoke-virtual {p4}, Landroid/os/storage/StorageVolume;->allowMassStorage()Z

    move-result p4

    if-eqz p4, :cond_2

    goto :goto_2

    .line 708
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p4, 0x1110286

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    if-eqz p2, :cond_3

    move p1, p3

    :cond_3
    :goto_2
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    return-void
.end method


# virtual methods
.method public final attachAccessory()V
    .locals 2

    .line 862
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    const/16 v0, 0x14

    .line 863
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 864
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    return-void
.end method

.method public final attachAccessoryAfterBoot()V
    .locals 2

    .line 1537
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v0, :cond_0

    .line 1538
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AccessoryAttached"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1539
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getCurrentSettings()Lcom/android/server/usb/UsbProfileGroupSettingsManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v0, v1}, Lcom/android/server/usb/UsbProfileGroupSettingsManager;->accessoryAttached(Landroid/hardware/usb/UsbAccessory;)V

    .line 1540
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    goto :goto_0

    .line 1541
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    if-eqz v0, :cond_1

    .line 1542
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 1544
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void
.end method

.method public final bindToMtpService()V
    .locals 5

    .line 1128
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1129
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.mtp"

    const-string v3, "com.android.mtp.MtpService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1134
    :try_start_0
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v2, v4, v3}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1141
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to bind to MtpService due to SecurityException"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1146
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-nez v0, :cond_0

    .line 1147
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->unbindMtpService()V

    .line 1148
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Binding to MtpService failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public final broadcastUsbAccessoryHandshake()V
    .locals 4

    .line 961
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_ACCESSORY_HANDSHAKE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x11000000

    .line 962
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.hardware.usb.extra.ACCESSORY_UEVENT_TIME"

    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    .line 964
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.hardware.usb.extra.ACCESSORY_STRING_COUNT"

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 966
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.hardware.usb.extra.ACCESSORY_START"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    .line 968
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.hardware.usb.extra.ACCESSORY_HANDSHAKE_END"

    .line 971
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 970
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    .line 977
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 978
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->resetUsbAccessoryHandshakeDebuggingInfo()V

    return-void
.end method

.method public dump(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;J)V
    .locals 9

    .line 1862
    invoke-virtual/range {p1 .. p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v7

    const-wide v3, 0x20e00000001L

    .line 1864
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-string v2, "current_functions"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    const-wide v2, 0x10800000002L

    .line 1866
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctionsApplied:Z

    const-string v5, "current_functions_applied"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v3, 0x20e00000003L

    .line 1868
    iget-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const-string/jumbo v2, "screen_unlocked_functions"

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V

    const-wide v2, 0x10800000004L

    .line 1870
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-string/jumbo v5, "screen_locked"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x10800000005L

    .line 1871
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const-string v5, "connected"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x10800000006L

    .line 1872
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    const-string v5, "configured"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    .line 1873
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz v2, :cond_0

    .line 1874
    const-string v3, "current_accessory"

    const-wide v4, 0x10b00000007L

    invoke-static {p1, v3, v4, v5, v2}, Lcom/android/internal/usb/DumpUtils;->writeAccessory(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/hardware/usb/UsbAccessory;)V

    :cond_0
    const-wide v2, 0x10800000008L

    .line 1877
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    const-string v5, "host_connected"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x10800000009L

    .line 1878
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    const-string/jumbo v5, "source_power"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x1080000000aL

    .line 1879
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    const-string/jumbo v5, "sink_power"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x1080000000bL

    .line 1880
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    const-string/jumbo v5, "usb_charging"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x1080000000cL

    .line 1881
    iget-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v5, "hide_usb_notification"

    invoke-virtual {p1, v5, v2, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const-wide v2, 0x1080000000dL

    .line 1883
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const-string v4, "audio_accessory_connected"

    invoke-virtual {p1, v4, v2, v3, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JZ)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 1887
    :try_start_0
    const-string v0, "kernel_state"

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/state"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1888
    invoke-static {v4, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-wide v5, 0x1090000000fL

    .line 1887
    invoke-static {p1, v0, v5, v6, v4}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1893
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Could not read kernel state"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 1890
    :catch_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v4, "Ignore missing legacy kernel path in bugreport dump: kernel state:/sys/class/android_usb/android0/state"

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    :goto_0
    :try_start_1
    const-string v0, "kernel_function_list"

    new-instance v4, Ljava/io/File;

    const-string v5, "/sys/class/android_usb/android0/functions"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1899
    invoke-static {v4, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-wide v3, 0x10900000010L

    .line 1897
    invoke-static {p1, v0, v3, v4, v2}, Lcom/android/internal/util/dump/DumpUtils;->writeStringIfNotNull(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLjava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    .line 1904
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Could not read kernel function list"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 1901
    :catch_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Ignore missing legacy kernel path in bugreport dump: kernel function list:/sys/class/android_usb/android0/functions"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1907
    :goto_1
    invoke-virtual {p1, v7, v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    return-void
.end method

.method public final dumpFunctions(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JJ)V
    .locals 8

    const/4 p0, 0x0

    :goto_0
    const/16 v0, 0x3f

    if-ge p0, v0, :cond_2

    const-wide/16 v0, 0x1

    shl-long v6, v0, p0

    and-long v0, p5, v6

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1852
    invoke-virtual {p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->isProto()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1853
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JJ)V

    goto :goto_1

    :cond_0
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    .line 1855
    invoke-static {v6, v7}, Landroid/hardware/usb/gadget/V1_0/GadgetFunction;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, v3, v4, v5, p1}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    goto :goto_1

    :cond_1
    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    :goto_1
    add-int/lit8 p0, p0, 0x1

    move-object p1, v2

    move-object p2, v3

    move-wide p3, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method public finishBoot(I)V
    .locals 6

    .line 1550
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    if-eqz v0, :cond_4

    .line 1552
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 1553
    iget-wide v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1554
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1556
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    const-wide/16 v2, 0x0

    if-nez v0, :cond_1

    iget-wide v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 1558
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    goto :goto_0

    .line 1566
    :cond_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "finishBoot boot completed to setEnabledFunctions mScreenLocked:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_2

    const-wide/16 v2, 0x4

    .line 1568
    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    goto :goto_0

    .line 1570
    :cond_2
    invoke-virtual {p0, v2, v3, v1, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    .line 1577
    :goto_0
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz p1, :cond_3

    .line 1578
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    .line 1580
    :cond_3
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1581
    invoke-virtual {p0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1582
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    :cond_4
    return-void
.end method

.method public getAppliedFunctions(J)J
    .locals 2

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getChargingFunctions()J

    move-result-wide p0

    return-wide p0

    .line 1189
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_1

    const-wide/16 v0, 0x1

    or-long p0, p1, v0

    return-wide p0

    :cond_1
    return-wide p1
.end method

.method public getChargingFunctions()J
    .locals 2

    .line 1808
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const-wide/16 v0, 0x1

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public getCurrentAccessory()Landroid/hardware/usb/UsbAccessory;
    .locals 0

    .line 1592
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    return-object p0
.end method

.method public getEnabledFunctions()J
    .locals 2

    .line 1828
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    return-wide v0
.end method

.method public getGadgetHalVersion()I
    .locals 0

    .line 1840
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    return p0
.end method

.method public final getMidiCardDevice()V
    .locals 4

    .line 1019
    const-string/jumbo v0, "sys.usb.controller"

    const-string v1, ""

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1020
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1024
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/sys/class/udc/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/gadget/sound"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1025
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1030
    new-instance v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1, v0}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1032
    array-length v1, v0

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x0

    .line 1037
    aget-object v0, v0, v1

    new-instance v3, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, v3}, Landroid/os/FileUtils;->listFilesOrEmpty(Ljava/io/File;Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v0

    .line 1039
    array-length v3, v0

    if-ne v3, v2, :cond_1

    .line 1043
    const-string/jumbo v3, "midiC(\\d+)D(\\d+)"

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v3

    .line 1044
    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 1045
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1046
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    const/4 v1, 0x2

    .line 1047
    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    .line 1048
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found MIDI card "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1050
    :cond_0
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "MIDI name not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1040
    :cond_1
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "MIDI device not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1033
    :cond_2
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound card not match"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1026
    :cond_3
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string/jumbo v0, "sound device not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 1021
    :cond_4
    new-instance p0, Ljava/io/FileNotFoundException;

    const-string v0, "controller name not found"

    invoke-direct {p0, v0}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getPinnedSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3

    .line 931
    new-instance p0, Ljava/io/File;

    const/4 v0, 0x0

    .line 932
    invoke-static {v0}, Landroid/os/Environment;->getDataSystemDeDirectory(I)Ljava/io/File;

    move-result-object v1

    const-string v2, "UsbDeviceManagerPrefs.xml"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 933
    invoke-virtual {p1}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p1

    .line 934
    invoke-virtual {p1, p0, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/io/File;I)Landroid/content/SharedPreferences;

    move-result-object p0

    return-object p0
.end method

.method public getScreenUnlockedFunctions()J
    .locals 2

    .line 1832
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    return-wide v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1820
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUsbSpeed()I
    .locals 0

    .line 1836
    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return p0
.end method

.method public abstract getUsbSpeedCb(I)V
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    .line 1197
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x14

    const/4 v2, 0x1

    if-eq v0, v1, :cond_30

    const/16 v1, 0x15

    if-eq v0, v1, :cond_2f

    const/16 v1, 0x18

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    if-eq v0, v1, :cond_2a

    const-wide/16 v8, 0x2

    const-string/jumbo v1, "usb-screen-unlocked-config-%d"

    const/4 v10, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_15

    .line 1401
    :pswitch_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1402
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-ne v1, v8, :cond_1

    goto/16 :goto_15

    :cond_1
    if-ne p1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v2, v7

    .line 1405
    :goto_1
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1406
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-nez p1, :cond_3

    goto/16 :goto_15

    :cond_3
    if-eqz v2, :cond_4

    .line 1410
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_2b

    .line 1411
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1414
    :cond_4
    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_5

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    cmp-long p1, v1, v5

    if-nez p1, :cond_5

    .line 1417
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    .line 1425
    :cond_5
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz p1, :cond_2b

    .line 1426
    invoke-virtual {p0, v3, v4, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1372
    :pswitch_1
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1373
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1374
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz p1, :cond_6

    .line 1375
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 1376
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    iget v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1377
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v8

    .line 1376
    invoke-static {v2, v1, v8}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-wide v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1378
    invoke-static {v8, v9}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v2

    .line 1376
    invoke-interface {p1, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1379
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1381
    :cond_6
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_7

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_7

    .line 1383
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    return-void

    .line 1391
    :cond_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage MSG_SET_SCREEN_UNLOCKED_FUNCTIONS to setEnabledFunctions mScreenLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_8

    .line 1393
    invoke-virtual {p0, v3, v4, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1395
    :cond_8
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1460
    :pswitch_2
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1461
    invoke-virtual {p0, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    .line 1326
    :pswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/Iterator;

    .line 1327
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_9

    move p1, v2

    goto :goto_2

    :cond_9
    move p1, v7

    :goto_2
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    .line 1333
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_a

    .line 1334
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_3

    .line 1336
    :cond_a
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 1339
    :goto_3
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    .line 1340
    :cond_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_e

    .line 1341
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    .line 1345
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbDevice;

    .line 1346
    invoke-virtual {p1}, Landroid/hardware/usb/UsbDevice;->getConfigurationCount()I

    move-result v1

    sub-int/2addr v1, v2

    :cond_c
    :goto_4
    if-ltz v1, :cond_b

    .line 1348
    invoke-virtual {p1, v1}, Landroid/hardware/usb/UsbDevice;->getConfiguration(I)Landroid/hardware/usb/UsbConfiguration;

    move-result-object v3

    add-int/lit8 v1, v1, -0x1

    .line 1350
    invoke-virtual {v3}, Landroid/hardware/usb/UsbConfiguration;->getInterfaceCount()I

    move-result v4

    sub-int/2addr v4, v2

    :cond_d
    if-ltz v4, :cond_c

    .line 1352
    invoke-virtual {v3, v4}, Landroid/hardware/usb/UsbConfiguration;->getInterface(I)Landroid/hardware/usb/UsbInterface;

    move-result-object v5

    add-int/lit8 v4, v4, -0x1

    .line 1354
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsDenyInterfaces()Ljava/util/Set;

    move-result-object v6

    invoke-virtual {v5}, Landroid/hardware/usb/UsbInterface;->getInterfaceClass()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 1355
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    goto :goto_4

    .line 1361
    :cond_e
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    .line 1309
    :pswitch_4
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_10

    .line 1310
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-nez v0, :cond_10

    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_10

    .line 1311
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1312
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MSG_UPDATE_CHARGING_STATE try to FUNCTION_MTP, mScreenLocked: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v8, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_f

    .line 1314
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0, v3, v4, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    goto :goto_5

    .line 1316
    :cond_f
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    invoke-virtual {p0, v5, v6, v2, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    .line 1321
    :cond_10
    :goto_5
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-ne p1, v2, :cond_11

    goto :goto_6

    :cond_11
    move v2, v7

    :goto_6
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    .line 1323
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    return-void

    .line 1488
    :pswitch_5
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1493
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_12

    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v0, v8

    cmp-long v0, v0, v5

    if-nez v0, :cond_2b

    .line 1494
    :cond_12
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    return-void

    .line 1244
    :pswitch_6
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/internal/os/SomeArgs;

    .line 1245
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1246
    iget-object v1, p1, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/usb/UsbPort;

    .line 1247
    iget-object v3, p1, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v3, Landroid/hardware/usb/UsbPortStatus;

    if-eqz v3, :cond_1a

    .line 1250
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentDataRole()I

    move-result v4

    if-ne v4, v2, :cond_13

    move v4, v2

    goto :goto_7

    :cond_13
    move v4, v7

    :goto_7
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1251
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    if-ne v4, v2, :cond_14

    move v4, v2

    goto :goto_8

    :cond_14
    move v4, v7

    :goto_8
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 1252
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentPowerRole()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    move v4, v2

    goto :goto_9

    :cond_15
    move v4, v7

    :goto_9
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 1253
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getCurrentMode()I

    move-result v4

    if-ne v4, v10, :cond_16

    move v4, v2

    goto :goto_a

    :cond_16
    move v4, v7

    :goto_a
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 1258
    invoke-virtual {v3, v2, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1260
    invoke-virtual {v3, v5, v2}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1261
    invoke-virtual {v3, v2, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 1263
    invoke-virtual {v3, v5, v5}, Landroid/hardware/usb/UsbPortStatus;->isRoleCombinationSupported(II)Z

    move-result v4

    if-eqz v4, :cond_17

    move v4, v2

    goto :goto_b

    :cond_17
    move v4, v7

    :goto_b
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 1266
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getUsbDataStatus()I

    move-result v4

    if-eq v4, v2, :cond_18

    move v4, v2

    goto :goto_c

    :cond_18
    move v4, v7

    .line 1267
    :goto_c
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_19

    if-eqz v4, :cond_19

    move v4, v2

    goto :goto_d

    :cond_19
    move v4, v7

    :goto_d
    iput-boolean v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnectedToDataDisabledPort:Z

    .line 1268
    invoke-virtual {v3}, Landroid/hardware/usb/UsbPortStatus;->getPowerBrickConnectionStatus()I

    move-result v3

    iput v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerBrickConnectionStatus:I

    goto :goto_e

    .line 1270
    :cond_1a
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    .line 1271
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    .line 1272
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    .line 1273
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    .line 1274
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    .line 1275
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnectedToDataDisabledPort:Z

    .line 1276
    iput v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerBrickConnectionStatus:I

    .line 1279
    :goto_e
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v3, :cond_1c

    .line 1280
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-nez v3, :cond_1b

    .line 1281
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_f

    .line 1283
    :cond_1b
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    goto :goto_f

    .line 1287
    :cond_1c
    iput-boolean v7, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    .line 1290
    :goto_f
    invoke-virtual {v1, v10}, Landroid/hardware/usb/UsbPort;->isModeSupported(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    .line 1292
    invoke-virtual {p1}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 1293
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1294
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_1e

    .line 1295
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-nez p1, :cond_1d

    if-eqz v0, :cond_2b

    .line 1296
    :cond_1d
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    return-void

    .line 1299
    :cond_1e
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    return-void

    .line 1432
    :pswitch_7
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1434
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v0

    if-nez v0, :cond_2b

    .line 1435
    invoke-virtual {p0, v5, v6, v2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1470
    :pswitch_8
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1471
    iget v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eq v3, p1, :cond_2b

    .line 1475
    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUser:I

    .line 1476
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    .line 1477
    iput-wide v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1478
    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSettings:Landroid/content/SharedPreferences;

    if-eqz v2, :cond_1f

    .line 1479
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 1481
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 1480
    invoke-static {v3, v1, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, ""

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1479
    invoke-static {p1}, Landroid/hardware/usb/UsbManager;->usbFunctionsFromString(Ljava/lang/String;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    .line 1483
    :cond_1f
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1464
    :pswitch_9
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1465
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    .line 1467
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    .line 1439
    :pswitch_a
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1440
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    .line 1441
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    .line 1443
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    new-instance v1, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;

    invoke-direct {v1, p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler$AdbTransport;-><init>(Lcom/android/server/usb/UsbDeviceManager$UsbHandler;)V

    .line 1444
    invoke-virtual {v0, v1}, Landroid/debug/AdbManagerInternal;->registerTransport(Landroid/debug/IAdbTransport;)V

    .line 1447
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isTv()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 1449
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v1, Landroid/app/NotificationChannel;

    iget-object v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v4, 0x1040134

    .line 1451
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "usbdevicemanager.adb.tv"

    invoke-direct {v1, v4, v3, v10}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 1449
    invoke-virtual {v0, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 1456
    :cond_20
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSystemReady:Z

    .line 1457
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->finishBoot(I)V

    return-void

    .line 1367
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 1368
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 1369
    invoke-virtual {p0, v0, v1, v7, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1364
    :pswitch_c
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-ne v0, v2, :cond_21

    goto :goto_10

    :cond_21
    move v2, v7

    :goto_10
    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {p0, v2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setAdbEnabled(ZI)V

    return-void

    .line 1199
    :pswitch_d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 1200
    iget v1, p1, Landroid/os/Message;->arg1:I

    if-ne v1, v2, :cond_22

    move v1, v2

    goto :goto_11

    :cond_22
    move v1, v7

    :goto_11
    iput-boolean v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    .line 1201
    iget p1, p1, Landroid/os/Message;->arg2:I

    if-ne p1, v2, :cond_23

    move p1, v2

    goto :goto_12

    :cond_23
    move p1, v7

    :goto_12
    iput-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    .line 1206
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbNotification(Z)V

    .line 1207
    invoke-virtual {p0, v7}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    .line 1208
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_24

    .line 1209
    iget-wide v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v10, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getAppliedFunctions(J)J

    move-result-wide v10

    invoke-virtual {p0, v10, v11}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbStateBroadcastIfNeeded(J)V

    .line 1211
    :cond_24
    iget-wide v10, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    and-long/2addr v8, v10

    cmp-long p1, v8, v5

    if-eqz p1, :cond_25

    .line 1212
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateCurrentAccessory()V

    .line 1214
    :cond_25
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_29

    .line 1215
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-nez p1, :cond_28

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_28

    const/16 p1, 0x11

    .line 1216
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_28

    .line 1218
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_26

    iget-wide v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    cmp-long p1, v1, v5

    if-eqz p1, :cond_26

    .line 1220
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setScreenUnlockedFunctions(I)V

    goto :goto_13

    .line 1228
    :cond_26
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage MSG_UPDATE_STATE to setEnabledFunctions mScreenLocked:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez p1, :cond_27

    .line 1230
    invoke-virtual {p0, v3, v4, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    goto :goto_13

    .line 1232
    :cond_27
    invoke-virtual {p0, v5, v6, v7, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    .line 1237
    :cond_28
    :goto_13
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbFunctions()V

    goto :goto_14

    .line 1239
    :cond_29
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootBroadcast:Z

    .line 1241
    :goto_14
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateUsbSpeed()V

    return-void

    .line 1517
    :cond_2a
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz p1, :cond_2c

    :cond_2b
    :goto_15
    return-void

    .line 1520
    :cond_2c
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    .line 1521
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentUsbFunctionsReceived:Z

    if-eqz p1, :cond_2d

    .line 1522
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessoryAfterBoot()V

    .line 1525
    :cond_2d
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result p1

    .line 1526
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-nez v0, :cond_2e

    .line 1527
    invoke-virtual {p0, v3, v4, v7, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1529
    :cond_2e
    invoke-virtual {p0, v5, v6, v7, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void

    .line 1512
    :cond_2f
    iget p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    add-int/2addr p1, v2

    iput p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    return-void

    .line 1502
    :cond_30
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBootCompleted:Z

    if-eqz p1, :cond_31

    .line 1503
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->broadcastUsbAccessoryHandshake()V

    return-void

    .line 1507
    :cond_31
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPendingBootAccessoryHandshakeBroadcast:Z

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public abstract handlerInitDone(I)V
.end method

.method public isAdbEnabled()Z
    .locals 1

    .line 1773
    const-class p0, Landroid/debug/AdbManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/debug/AdbManagerInternal;

    const/4 v0, 0x0

    .line 1774
    invoke-virtual {p0, v0}, Landroid/debug/AdbManagerInternal;->isAdbEnabled(B)Z

    move-result p0

    return p0
.end method

.method public final isTv()Z
    .locals 1

    .line 1802
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.software.leanback"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isUsbDataTransferActive(J)Z
    .locals 4

    .line 0
    const-wide/16 v0, 0x4

    and-long/2addr v0, p1

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_1

    const-wide/16 v0, 0x10

    and-long p0, p1, v0

    cmp-long p0, p0, v2

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final isUsbStateChanged(Landroid/content/Intent;)Z
    .locals 6

    .line 938
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 939
    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 940
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 941
    invoke-virtual {p1, v0, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    return v2

    .line 946
    :cond_1
    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 949
    :cond_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 950
    invoke-virtual {p1, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v4

    iget-object v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    .line 951
    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eq v4, v1, :cond_3

    return v2

    :cond_4
    return v3
.end method

.method public isUsbTransferAllowed()Z
    .locals 1

    .line 857
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 858
    const-string/jumbo v0, "no_usb_file_transfer"

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public notifyAccessoryModeExit(I)V
    .locals 3

    .line 916
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "exited USB accessory mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 917
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    .line 919
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    if-eqz p1, :cond_1

    .line 923
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    invoke-virtual {v0, p1}, Lcom/android/server/usb/UsbPermissionManager;->usbAccessoryRemoved(Landroid/hardware/usb/UsbAccessory;)V

    :cond_0
    const/4 p1, 0x0

    .line 926
    iput-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    :cond_1
    return-void
.end method

.method public abstract resetCb(I)V
.end method

.method public resetUsbAccessoryHandshakeDebuggingInfo()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1925
    iput-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    const/4 v0, 0x0

    .line 1926
    iput v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSendStringCount:I

    .line 1927
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;)V
    .locals 0

    .line 733
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 734
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 735
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 736
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;I)V
    .locals 0

    .line 740
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 741
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 742
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 743
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 744
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(ILjava/lang/Object;Z)V
    .locals 0

    .line 756
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 757
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 758
    iput-object p2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 759
    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 760
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZ)V
    .locals 0

    .line 713
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 714
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 715
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 716
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessage(IZI)V
    .locals 0

    .line 748
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 749
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 750
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 751
    iput p3, p1, Landroid/os/Message;->arg2:I

    .line 752
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public sendMessageDelayed(IZJ)V
    .locals 0

    .line 781
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 782
    invoke-static {p0, p1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object p1

    .line 783
    iput p2, p1, Landroid/os/Message;->arg1:I

    .line 784
    invoke-virtual {p0, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public sendStickyBroadcast(Landroid/content/Intent;)V
    .locals 3

    .line 1014
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 1015
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsEventLogger()Lcom/android/server/utils/EventLogger;

    move-result-object p0

    new-instance v0, Lcom/android/server/utils/EventLogger$StringEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "USB intent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/server/utils/EventLogger$StringEvent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/utils/EventLogger;->enqueue(Lcom/android/server/utils/EventLogger$Event;)V

    return-void
.end method

.method public setAccessoryUEventTime(J)V
    .locals 0

    .line 1917
    iput-wide p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAccessoryConnectionStartTime:J

    return-void
.end method

.method public final setAdbEnabled(ZI)V
    .locals 2

    .line 846
    const-string/jumbo v0, "persist.sys.usb.config"

    if-eqz p1, :cond_0

    .line 847
    const-string p1, "adb"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 849
    :cond_0
    const-string p1, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :goto_0
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const/4 p1, 0x1

    invoke-virtual {p0, v0, v1, p1, p2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    const/4 p1, 0x0

    .line 853
    invoke-virtual {p0, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateAdbNotification(Z)V

    return-void
.end method

.method public abstract setCurrentUsbFunctionsCb(JIIJZ)V
.end method

.method public abstract setEnabledFunctions(JZI)V
.end method

.method public final setScreenUnlockedFunctions(I)V
    .locals 3

    .line 1162
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenUnlockedFunctions:J

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->setEnabledFunctions(JZI)V

    return-void
.end method

.method public setStartAccessoryTrue()V
    .locals 1

    const/4 v0, 0x1

    .line 1921
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mStartAccessory:Z

    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1816
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final unbindMtpService()V
    .locals 2

    .line 1157
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMtpServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    .line 1158
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    return-void
.end method

.method public updateAdbNotification(Z)V
    .locals 5

    .line 1778
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1781
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isAdbEnabled()Z

    move-result v0

    const/16 v1, 0x1a

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_3

    .line 1782
    const-string/jumbo v0, "persist.adb.notify"

    const-string v4, ""

    invoke-virtual {p0, v0, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v4, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p1, :cond_2

    .line 1784
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz p1, :cond_2

    .line 1785
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1786
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p1, v2, v1, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1789
    :cond_2
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-nez p1, :cond_4

    .line 1790
    iget-object p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-static {p1, v3}, Landroid/debug/AdbNotifications;->createNotification(Landroid/content/Context;B)Landroid/app/Notification;

    move-result-object p1

    const/4 v0, 0x1

    .line 1792
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1793
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1, v0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    .line 1795
    :cond_3
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    if-eqz p1, :cond_4

    .line 1796
    iput-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAdbNotificationShown:Z

    .line 1797
    iget-object p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v2, v1, p1}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final updateCurrentAccessory()V
    .locals 8

    .line 870
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetsUsbOperationCount()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    const/16 v1, 0x8

    .line 872
    invoke-virtual {p0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    .line 874
    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 876
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbDeviceManager:Lcom/android/server/usb/UsbDeviceManager;

    invoke-virtual {v0}, Lcom/android/server/usb/UsbDeviceManager;->getAccessoryStrings()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 878
    new-instance v7, Lcom/android/server/usb/UsbSerialReader;

    iget-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPermissionManager:Lcom/android/server/usb/UsbPermissionManager;

    const/4 v3, 0x5

    aget-object v3, v0, v3

    invoke-direct {v7, v1, v2, v3}, Lcom/android/server/usb/UsbSerialReader;-><init>(Landroid/content/Context;Lcom/android/server/usb/UsbPermissionManager;Ljava/lang/String;)V

    .line 881
    new-instance v1, Landroid/hardware/usb/UsbAccessory;

    const/4 v2, 0x0

    aget-object v2, v0, v2

    const/4 v3, 0x1

    aget-object v3, v0, v3

    const/4 v4, 0x2

    aget-object v4, v0, v4

    const/4 v5, 0x3

    aget-object v5, v0, v5

    const/4 v6, 0x4

    aget-object v6, v0, v6

    invoke-direct/range {v1 .. v7}, Landroid/hardware/usb/UsbAccessory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/hardware/usb/IUsbSerialReader;)V

    iput-object v1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 889
    invoke-virtual {v7, v1}, Lcom/android/server/usb/UsbSerialReader;->setDevice(Ljava/lang/Object;)V

    .line 891
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "entering USB accessory mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentAccessory:Landroid/hardware/usb/UsbAccessory;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 898
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUserUnlockedAfterBoot:Z

    if-eqz v0, :cond_2

    .line 899
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->attachAccessory()V

    return-void

    .line 902
    :cond_0
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "nativeGetAccessoryStrings failed"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    if-nez v1, :cond_2

    .line 906
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->notifyAccessoryModeExit(I)V

    :cond_2
    return-void
.end method

.method public updateHostState(Landroid/hardware/usb/UsbPort;Landroid/hardware/usb/UsbPortStatus;)V
    .locals 2

    .line 833
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 834
    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    .line 835
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    const/4 p1, 0x7

    .line 837
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 838
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0x3e8

    .line 840
    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public final updateMidiFunction()V
    .locals 9

    .line 1060
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x8

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 1061
    :goto_0
    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eq v0, v3, :cond_4

    if-eqz v0, :cond_3

    .line 1066
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getMidiCardDevice()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v2

    goto :goto_1

    :catch_0
    move-exception v3

    .line 1069
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v4

    const-string v5, "could not identify MIDI device"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v3, v1

    :goto_1
    if-nez v3, :cond_2

    const/4 v4, 0x0

    .line 1077
    :try_start_1
    new-instance v5, Ljava/util/Scanner;

    new-instance v6, Ljava/io/File;

    const-string v7, "/sys/class/android_usb/android0/f_midi/alsa"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1078
    :try_start_2
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    .line 1079
    invoke-virtual {v5}, Ljava/util/Scanner;->nextInt()I

    move-result v4

    iput v4, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1085
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    move v3, v2

    goto :goto_4

    :catchall_0
    move-exception p0

    move-object v4, v5

    goto :goto_3

    :catch_1
    move-exception v4

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception v5

    move-object v8, v5

    move-object v5, v4

    move-object v4, v8

    .line 1082
    :goto_2
    :try_start_3
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v6

    const-string v7, "could not open MIDI file"

    invoke-static {v6, v7, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v5, :cond_2

    .line 1085
    invoke-virtual {v5}, Ljava/util/Scanner;->close()V

    goto :goto_4

    :goto_3
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/util/Scanner;->close()V

    .line 1087
    :cond_1
    throw p0

    :cond_2
    :goto_4
    if-nez v3, :cond_3

    .line 1090
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Failed to enable MIDI function"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v1

    .line 1094
    :cond_3
    iput-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    .line 1096
    :cond_4
    iget-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAlsaManager:Lcom/android/server/usb/UsbAlsaManager;

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiEnabled:Z

    if-eqz v3, :cond_5

    iget-boolean v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    iget v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiCard:I

    iget p0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mMidiDevice:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/server/usb/UsbAlsaManager;->setPeripheralMidiState(ZII)V

    return-void
.end method

.method public final updateMtpFunction()V
    .locals 9

    .line 1109
    iget-wide v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v2, 0x4

    and-long/2addr v2, v0

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v7, 0x10

    and-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    move v3, v6

    .line 1120
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_2

    if-eqz v3, :cond_3

    .line 1121
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->bindToMtpService()V

    return-void

    .line 1122
    :cond_3
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mIsMtpServiceBound:Z

    if-eqz v0, :cond_4

    .line 1123
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->unbindMtpService()V

    :cond_4
    return-void
.end method

.method public updateState(Ljava/lang/String;)V
    .locals 6

    .line 790
    const-string v0, "DISCONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move p1, v2

    :goto_0
    move v0, p1

    goto :goto_1

    .line 793
    :cond_0
    const-string v0, "CONNECTED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    move p1, v1

    move v0, v2

    goto :goto_1

    .line 796
    :cond_1
    const-string v0, "CONFIGURED"

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    move p1, v1

    goto :goto_0

    :goto_1
    const/16 v3, 0x11

    if-ne p1, v1, :cond_2

    .line 803
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 804
    :cond_2
    invoke-static {p0, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v4

    .line 805
    iput p1, v4, Landroid/os/Message;->arg1:I

    .line 806
    iput v0, v4, Landroid/os/Message;->arg2:I

    .line 811
    iget-boolean v5, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    if-eqz v5, :cond_4

    .line 813
    invoke-virtual {p0, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    if-ne p1, v1, :cond_3

    .line 814
    iput-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mResetUsbGadgetDisableDebounce:Z

    :cond_3
    return-void

    :cond_4
    if-nez v0, :cond_5

    .line 817
    invoke-virtual {p0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    if-ne p1, v1, :cond_6

    .line 820
    invoke-virtual {p0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    if-nez p1, :cond_8

    .line 823
    iget-boolean p1, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mScreenLocked:Z

    if-eqz p1, :cond_7

    const/16 p1, 0x3e8

    goto :goto_2

    :cond_7
    const/16 p1, 0xbb8

    :goto_2
    int-to-long v0, p1

    goto :goto_3

    :cond_8
    const-wide/16 v0, 0x0

    .line 822
    :goto_3
    invoke-virtual {p0, v4, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    .line 800
    :cond_9
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown state "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final updateUsbFunctions()V
    .locals 0

    .line 1055
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMidiFunction()V

    .line 1056
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->updateMtpFunction()V

    return-void
.end method

.method public updateUsbGadgetHalVersion()V
    .locals 2

    const/16 v0, 0x17

    const/4 v1, 0x0

    .line 1596
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void
.end method

.method public updateUsbNotification(Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 1616
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    if-eqz v1, :cond_1a

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUseUsbNotification:Z

    if-eqz v1, :cond_1a

    const-string/jumbo v1, "persist.charging.notify"

    const-string v2, ""

    .line 1617
    invoke-virtual {v0, v1, v2}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    .line 1623
    :cond_0
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHideUsbNotification:Z

    const-string v2, "Clear notification"

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mInHostModeWithNoAccessoryConnected:Z

    if-eqz v1, :cond_2

    :cond_1
    iget-boolean v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSupportsAllCombinations:Z

    if-nez v1, :cond_2

    .line 1625
    iget v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-eqz v1, :cond_1a

    .line 1626
    iget-object v5, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v3, v1, v6}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1628
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1629
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1636
    :cond_2
    iget-object v1, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x1040a83

    .line 1637
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    .line 1639
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessoryConnected:Z

    const/4 v7, 0x1

    const v8, 0x1040a89

    const/16 v9, 0x20

    if-eqz v6, :cond_3

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mAudioAccessorySupported:Z

    if-nez v6, :cond_3

    const/16 v6, 0x29

    move v11, v8

    goto/16 :goto_4

    .line 1642
    :cond_3
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    const/16 v10, 0x1f

    const v11, 0x1040a86

    const v12, 0x1040a76

    if-eqz v6, :cond_f

    .line 1643
    iget-wide v13, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    const-wide/16 v15, 0x4

    cmp-long v6, v13, v15

    if-nez v6, :cond_4

    const v6, 0x1040a82

    const/16 v13, 0x1b

    goto :goto_1

    :cond_4
    const-wide/16 v15, 0x10

    cmp-long v6, v13, v15

    if-nez v6, :cond_5

    const v6, 0x1040a85

    const/16 v13, 0x1c

    goto :goto_1

    :cond_5
    const-wide/16 v15, 0x8

    cmp-long v6, v13, v15

    if-nez v6, :cond_6

    const v6, 0x1040a7c

    const/16 v13, 0x1d

    goto :goto_1

    :cond_6
    const-wide/16 v15, 0x20

    cmp-long v6, v13, v15

    if-eqz v6, :cond_a

    const-wide/16 v15, 0x400

    cmp-long v6, v13, v15

    if-nez v6, :cond_7

    goto :goto_0

    :cond_7
    const-wide/16 v15, 0x80

    cmp-long v6, v13, v15

    if-nez v6, :cond_8

    const v6, 0x1040a8a

    const/16 v13, 0x4b

    goto :goto_1

    :cond_8
    const-wide/16 v15, 0x2

    cmp-long v6, v13, v15

    if-nez v6, :cond_9

    const v6, 0x1040a71

    const/16 v13, 0x1e

    goto :goto_1

    :cond_9
    move v6, v4

    move v13, v6

    goto :goto_1

    :cond_a
    :goto_0
    const v6, 0x1040a87

    const/16 v13, 0x2f

    .line 1663
    :goto_1
    iget-boolean v14, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v14, :cond_d

    if-eqz v6, :cond_c

    const v5, 0x1040a84

    .line 1665
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    :cond_b
    move v11, v6

    move v6, v13

    goto :goto_4

    :cond_c
    :goto_2
    move v6, v10

    goto :goto_4

    :cond_d
    if-nez v6, :cond_b

    :cond_e
    :goto_3
    move v6, v9

    move v11, v12

    goto :goto_4

    .line 1675
    :cond_f
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSourcePower:Z

    if-eqz v6, :cond_10

    goto :goto_2

    .line 1678
    :cond_10
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    if-eqz v6, :cond_11

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v6, :cond_11

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbCharging:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbAccessoryConnected:Z

    if-eqz v6, :cond_11

    goto :goto_3

    .line 1681
    :cond_11
    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mSinkPower:Z

    if-eqz v6, :cond_12

    iget-boolean v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnectedToDataDisabledPort:Z

    if-eqz v6, :cond_12

    iget v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mPowerBrickConnectionStatus:I

    if-eq v6, v7, :cond_12

    goto :goto_3

    :cond_12
    move v6, v4

    move v11, v6

    .line 1688
    :goto_4
    iget v10, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    if-ne v6, v10, :cond_13

    if-eqz p1, :cond_1a

    :cond_13
    if-eqz v10, :cond_14

    .line 1691
    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v13, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v12, v3, v10, v13}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    .line 1693
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    .line 1697
    :cond_14
    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.type.automotive"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_15

    iget-object v2, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    .line 1699
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v10, "android.hardware.type.watch"

    invoke-virtual {v2, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    :cond_15
    if-ne v6, v9, :cond_16

    .line 1702
    iput v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    return-void

    :cond_16
    if-eqz v6, :cond_1a

    .line 1707
    invoke-virtual {v1, v11}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1711
    const-string v9, "com.android.settings"

    if-eq v11, v8, :cond_17

    .line 1714
    new-instance v1, Landroid/content/ComponentName;

    const-string v10, "com.android.settings.Settings$UsbDetailsActivity"

    invoke-direct {v1, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Landroid/content/Intent;->makeRestartActivityTask(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v14

    .line 1718
    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/16 v16, 0x0

    sget-object v17, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v13, 0x0

    const/high16 v15, 0x4000000

    invoke-static/range {v12 .. v17}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v1

    .line 1721
    const-string v9, "USB"

    goto :goto_6

    .line 1722
    :cond_17
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    .line 1723
    const-string v10, "com.android.settings.HelpTrampoline"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1725
    const-string v9, "android.intent.extra.TEXT"

    const-string v10, "help_url_audio_accessory_not_supported"

    invoke-virtual {v5, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1728
    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v9

    if-eqz v9, :cond_18

    .line 1730
    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const/high16 v10, 0x4000000

    invoke-static {v9, v4, v5, v10}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    goto :goto_5

    :cond_18
    move-object v5, v3

    :goto_5
    const v9, 0x1040a88

    .line 1737
    invoke-virtual {v1, v9}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    const-string v9, "ALERTS"

    move-object/from16 v18, v5

    move-object v5, v1

    move-object/from16 v1, v18

    .line 1742
    :goto_6
    new-instance v10, Landroid/app/Notification$Builder;

    iget-object v12, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    invoke-direct {v10, v12, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x10809c2

    .line 1743
    invoke-virtual {v10, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    const-wide/16 v12, 0x0

    .line 1744
    invoke-virtual {v9, v12, v13}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1745
    invoke-virtual {v9, v7}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1746
    invoke-virtual {v9, v2}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v9

    .line 1747
    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iget-object v9, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mContext:Landroid/content/Context;

    const v10, 0x106001c

    .line 1748
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    invoke-virtual {v4, v9}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1751
    invoke-virtual {v4, v2}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1752
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 1753
    invoke-virtual {v4, v1}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1754
    invoke-virtual {v1, v7}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    if-ne v11, v8, :cond_19

    .line 1759
    new-instance v4, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v4}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 1760
    invoke-virtual {v4, v5}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v4

    .line 1759
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 1762
    :cond_19
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v1

    .line 1764
    iget-object v4, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mNotificationManager:Landroid/app/NotificationManager;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v6, v1, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 1766
    invoke-static {}, Lcom/android/server/usb/UsbDeviceManager;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "push notification:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1767
    iput v6, v0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbNotificationId:I

    :cond_1a
    :goto_7
    return-void
.end method

.method public updateUsbSpeed()V
    .locals 3

    .line 1600
    iget v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentGadgetHalVersion:I

    const/16 v1, 0xa

    const/4 v2, -0x1

    if-ge v0, v1, :cond_0

    .line 1601
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void

    .line 1605
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    if-eqz v0, :cond_1

    const/16 v0, 0x16

    const/4 v1, 0x0

    .line 1606
    invoke-virtual {p0, v0, v1}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendMessage(ILjava/lang/Object;)V

    return-void

    .line 1609
    :cond_1
    iput v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mUsbSpeed:I

    return-void
.end method

.method public updateUsbStateBroadcastIfNeeded(J)V
    .locals 5

    .line 983
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x31000000

    .line 984
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 987
    const-string v1, "connected"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 988
    const-string v1, "host_connected"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mHostConnected:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 989
    const-string v1, "configured"

    iget-boolean v2, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mConfigured:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 991
    invoke-virtual {p0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbTransferAllowed()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mCurrentFunctions:J

    invoke-virtual {p0, v3, v4}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbDataTransferActive(J)Z

    move-result v1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 990
    :goto_0
    const-string/jumbo v3, "unlocked"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :goto_1
    const-wide/16 v3, 0x0

    cmp-long v1, p1, v3

    if-eqz v1, :cond_1

    .line 996
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    .line 995
    invoke-static {v3, v4}, Landroid/hardware/usb/UsbManager;->usbFunctionsToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 997
    invoke-static {p1, p2}, Ljava/lang/Long;->highestOneBit(J)J

    move-result-wide v3

    sub-long/2addr p1, v3

    goto :goto_1

    .line 1001
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->isUsbStateChanged(Landroid/content/Intent;)Z

    move-result p1

    if-nez p1, :cond_2

    return-void

    .line 1009
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->sendStickyBroadcast(Landroid/content/Intent;)V

    .line 1010
    iput-object v0, p0, Lcom/android/server/usb/UsbDeviceManager$UsbHandler;->mBroadcastedIntent:Landroid/content/Intent;

    return-void
.end method
