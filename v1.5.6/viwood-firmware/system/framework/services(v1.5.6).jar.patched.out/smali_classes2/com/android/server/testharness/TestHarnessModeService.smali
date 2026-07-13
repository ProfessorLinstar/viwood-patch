.class public Lcom/android/server/testharness/TestHarnessModeService;
.super Lcom/android/server/SystemService;
.source "TestHarnessModeService.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "TestHarnessModeService"


# instance fields
.field public mEnableKeepMemtagMode:Z

.field public mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

.field public final mService:Landroid/os/IBinder;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmEnableKeepMemtagMode(Lcom/android/server/testharness/TestHarnessModeService;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fputmEnableKeepMemtagMode(Lcom/android/server/testharness/TestHarnessModeService;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetMainUserId(Lcom/android/server/testharness/TestHarnessModeService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mgetPersistentDataBlock(Lcom/android/server/testharness/TestHarnessModeService;)Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 74
    iput-boolean p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mEnableKeepMemtagMode:Z

    .line 284
    new-instance p1, Lcom/android/server/testharness/TestHarnessModeService$1;

    invoke-direct {p1, p0}, Lcom/android/server/testharness/TestHarnessModeService$1;-><init>(Lcom/android/server/testharness/TestHarnessModeService;)V

    iput-object p1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    return-void
.end method


# virtual methods
.method public final completeTestHarnessModeSetup()V
    .locals 3

    .line 127
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Completing Test Harness Mode setup."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    :try_start_0
    invoke-static {v0}, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->fromBytes([B)Lcom/android/server/testharness/TestHarnessModeService$PersistentData;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V

    .line 134
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureSettings()V

    .line 135
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->configureUser()V
    :try_end_0
    .catch Lcom/android/server/testharness/TestHarnessModeService$SetUpTestHarnessModeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    return-void

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 137
    :try_start_1
    sget-object v1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v2, "Failed to set up Test Harness Mode. Bad data."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    :goto_0
    return-void

    :goto_1
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->clearTestHarnessModeData()V

    .line 144
    throw v0
.end method

.method public final configureSettings()V
    .locals 5

    .line 163
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 167
    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 168
    const-string v0, "ctl.restart"

    const-string v3, "adbd"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v3, "Restarted adbd"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_0
    const-string v0, "adb_allowed_connection_time"

    const-wide/16 v3, 0x0

    invoke-static {p0, v0, v3, v4}, Landroid/provider/Settings$Global;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 175
    const-string v0, "development_settings_enabled"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 176
    const-string/jumbo v0, "verifier_verify_adb_installs"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 177
    const-string/jumbo v0, "stay_on_while_plugged_in"

    const/16 v1, 0xf

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 181
    const-string/jumbo v0, "ota_disable_automatic_update"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final configureUser()V
    .locals 2

    .line 197
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    move-result v0

    const/4 v1, 0x0

    .line 199
    invoke-static {v1, v0}, Landroid/content/ContentResolver;->setMasterSyncAutomaticallyAsUser(ZI)V

    .line 201
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/location/LocationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/location/LocationManager;

    const/4 v1, 0x1

    .line 202
    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    return-void
.end method

.method public final disableLockScreen()V
    .locals 2

    .line 121
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getMainUserId()I

    move-result v0

    .line 122
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    const/4 p0, 0x1

    .line 123
    invoke-virtual {v1, p0, v0}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    return-void
.end method

.method public final getMainUserId()I
    .locals 1

    .line 206
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    .line 207
    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerInternal;->getMainUserId()I

    move-result p0

    if-ltz p0, :cond_0

    return p0

    .line 212
    :cond_0
    sget-object p0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v0, "No MainUser exists; using user 0 instead"

    invoke-static {p0, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;
    .locals 2

    .line 276
    iget-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    if-nez v0, :cond_0

    .line 277
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Getting PersistentDataBlockManagerInternal from LocalServices"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    const-class v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 279
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    iput-object v0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    .line 281
    :cond_0
    iget-object p0, p0, Lcom/android/server/testharness/TestHarnessModeService;->mPersistentDataBlockManagerInternal:Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    return-object p0
.end method

.method public final getTestHarnessModeData()[B
    .locals 2

    .line 148
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getPersistentDataBlock()Lcom/android/server/pdb/PersistentDataBlockManagerInternal;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 150
    sget-object p0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Failed to start Test Harness Mode; no implementation of PersistentDataBlockManagerInternal was bound!"

    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 154
    :cond_0
    invoke-interface {p0}, Lcom/android/server/pdb/PersistentDataBlockManagerInternal;->getTestHarnessModeData()[B

    move-result-object p0

    if-eqz p0, :cond_2

    .line 155
    array-length v1, p0

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-eq p1, v0, :cond_1

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 94
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->completeTestHarnessModeSetup()V

    .line 95
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->showNotificationIfEnabled()V

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setUpTestHarnessMode()V

    .line 98
    :goto_0
    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onBootPhase(I)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 84
    const-string/jumbo v0, "testharness"

    iget-object v1, p0, Lcom/android/server/testharness/TestHarnessModeService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final setDeviceProvisioned()V
    .locals 3

    .line 235
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 236
    const-string v0, "device_provisioned"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 237
    const-string/jumbo v0, "user_setup_complete"

    const/4 v2, -0x2

    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public final setUpAdbFiles(Lcom/android/server/testharness/TestHarnessModeService$PersistentData;)V
    .locals 3

    .line 185
    const-class v0, Landroid/debug/AdbManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/debug/AdbManagerInternal;

    .line 187
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 188
    iget-object v1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbKeysFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 190
    :cond_0
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 191
    iget-object p1, p1, Lcom/android/server/testharness/TestHarnessModeService$PersistentData;->mAdbTempKeys:[B

    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->getAdbTempKeysFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/testharness/TestHarnessModeService;->writeBytesToFile([BLjava/nio/file/Path;)V

    .line 193
    :cond_1
    invoke-virtual {v0}, Landroid/debug/AdbManagerInternal;->notifyKeyFilesUpdated()V

    return-void
.end method

.method public final setUpTestHarnessMode()V
    .locals 2

    .line 108
    sget-object v0, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string v1, "Setting up test harness mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->getTestHarnessModeData()[B

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 115
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->setDeviceProvisioned()V

    .line 116
    invoke-virtual {p0}, Lcom/android/server/testharness/TestHarnessModeService;->disableLockScreen()V

    .line 117
    const-string/jumbo p0, "persist.sys.test_harness"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final showNotificationIfEnabled()V
    .locals 6

    .line 245
    const-string/jumbo v0, "persist.sys.test_harness"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 248
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x1040a41

    .line 249
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 250
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040a40

    .line 251
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 253
    new-instance v3, Landroid/app/Notification$Builder;

    .line 254
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "DEVELOPER"

    invoke-direct {v3, v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v4, 0x10809c2

    .line 255
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    const-wide/16 v4, 0x0

    .line 256
    invoke-virtual {v3, v4, v5}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 257
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 258
    invoke-virtual {v3, v0}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    .line 259
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 260
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x106001c

    invoke-virtual {v3, v5}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 263
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 264
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 265
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 266
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 269
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    move-result-object p0

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/16 v1, 0x36

    .line 270
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v1, v0, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final writeBytesToFile([BLjava/nio/file/Path;)V
    .locals 1

    const/4 p0, 0x0

    .line 219
    :try_start_0
    new-array v0, p0, [Ljava/nio/file/OpenOption;

    invoke-static {p2, v0}, Ljava/nio/file/Files;->newOutputStream(Ljava/nio/file/Path;[Ljava/nio/file/OpenOption;)Ljava/io/OutputStream;

    move-result-object v0

    .line 220
    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write([B)V

    .line 221
    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    .line 223
    new-array p0, p0, [Ljava/nio/file/LinkOption;

    invoke-static {p2, p0}, Ljava/nio/file/Files;->getPosixFilePermissions(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Ljava/util/Set;

    move-result-object p0

    .line 224
    sget-object p1, Ljava/nio/file/attribute/PosixFilePermission;->GROUP_READ:Ljava/nio/file/attribute/PosixFilePermission;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 225
    invoke-static {p2, p0}, Ljava/nio/file/Files;->setPosixFilePermissions(Ljava/nio/file/Path;Ljava/util/Set;)Ljava/nio/file/Path;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 227
    sget-object p1, Lcom/android/server/testharness/TestHarnessModeService;->TAG:Ljava/lang/String;

    const-string p2, "Failed to set up adb keys"

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
