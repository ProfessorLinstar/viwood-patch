.class public final Lcom/android/server/TradeInModeService;
.super Lcom/android/server/SystemService;
.source "TradeInModeService.java"


# instance fields
.field public mAccountManager:Landroid/accounts/AccountManager;

.field public mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

.field public mConnectivityManager:Landroid/net/ConnectivityManager;

.field public final mContext:Landroid/content/Context;

.field public mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field public mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;


# direct methods
.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/TradeInModeService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$menterTestMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->enterTestMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mgetTradeInModeState(Lcom/android/server/TradeInModeService;)I
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misAdbEnabled(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDebuggable(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misDeviceSetup(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misForceEnabledForTesting(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misFrpActive(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/server/TradeInModeService;->isFrpActive()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mleaveTestMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveAccountsWatch(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveNetworkWatch(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mrestartAdbd(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mscheduleTradeInModeWipe(Lcom/android/server/TradeInModeService;)Z
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->scheduleTradeInModeWipe()Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mstartTradeInMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->startTradeInMode()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mstopTradeInMode(Lcom/android/server/TradeInModeService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 72
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 75
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 80
    iput-object p1, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isFrpActive()Z
    .locals 3

    const/4 v0, 0x0

    .line 342
    :try_start_0
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/service/persistentdata/PersistentDataBlockManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/service/persistentdata/PersistentDataBlockManager;

    if-nez p0, :cond_0

    return v0

    .line 346
    :cond_0
    invoke-virtual {p0}, Landroid/service/persistentdata/PersistentDataBlockManager;->isFactoryResetProtectionActive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 348
    const-string v1, "TradeInModeService"

    const-string v2, "Could not read PDB"

    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method


# virtual methods
.method public final enterTestMode()V
    .locals 1

    .line 285
    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    .line 286
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v0, "persist.adb.tradeinmode"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final getTradeInModeState()I
    .locals 1

    .line 324
    const-string/jumbo p0, "persist.adb.tradeinmode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public final isAdbEnabled()Z
    .locals 2

    .line 336
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 337
    const-string v0, "adb_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    return v0

    :cond_0
    return v1
.end method

.method public final isDebuggable()Z
    .locals 2

    .line 328
    const-string/jumbo p0, "ro.debuggable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final isDeviceSetup()Z
    .locals 5

    .line 357
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 359
    :try_start_0
    const-string/jumbo v2, "user_setup_complete"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    return v0

    :catch_0
    move-exception v2

    .line 363
    const-string v3, "TradeInModeService"

    const-string v4, "Could not find USER_SETUP_COMPLETE setting"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 366
    :cond_0
    const-string v2, "device_provisioned"

    invoke-static {p0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_1

    return v0

    :cond_1
    return v1
.end method

.method public final isForceEnabledForTesting()Z
    .locals 2

    .line 332
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public final leaveTestMode()V
    .locals 2

    .line 290
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    .line 294
    :cond_0
    const-string/jumbo p0, "persist.adb.test_tradeinmode"

    const-string v0, ""

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    const-string/jumbo p0, "persist.adb.tradeinmode"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 297
    :try_start_0
    const-string p0, "/metadata/tradeinmode/wipe"

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Ljava/nio/file/Paths;->get(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object p0

    invoke-static {p0}, Ljava/nio/file/Files;->deleteIfExists(Ljava/nio/file/Path;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 299
    const-string v0, "TradeInModeService"

    const-string v1, "Failed to remove wipe indicator"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x1f4

    if-ne p1, v0, :cond_3

    .line 96
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->getTradeInModeState()I

    move-result p1

    .line 98
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isAdbEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 102
    const-string p1, "TradeInModeService"

    const-string v0, "Resetting trade-in mode state."

    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const-string/jumbo p1, "persist.adb.tradeinmode"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 106
    const-string p1, "adb_enabled"

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_3

    .line 111
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDeviceSetup()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 112
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->stopTradeInMode()V

    return-void

    .line 113
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isDebuggable()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result p1

    if-nez p1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->leaveTestMode()V

    return-void

    .line 118
    :cond_2
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 119
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 120
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    :cond_3
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 89
    new-instance v0, Lcom/android/server/TradeInModeService$TradeInMode;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/TradeInModeService$TradeInMode;-><init>(Lcom/android/server/TradeInModeService;Lcom/android/server/TradeInModeService-IA;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mTradeInMode:Lcom/android/server/TradeInModeService$TradeInMode;

    .line 90
    const-string/jumbo v1, "tradeinmode"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public final removeAccountsWatch()V
    .locals 2

    .line 435
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    if-eqz v0, :cond_0

    .line 436
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    invoke-virtual {v1, v0}, Landroid/accounts/AccountManager;->removeOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;)V

    const/4 v0, 0x0

    .line 437
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    :cond_0
    return-void
.end method

.method public final removeNetworkWatch()V
    .locals 2

    .line 417
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 418
    iget-object v1, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    const/4 v0, 0x0

    .line 419
    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    return-void
.end method

.method public final restartAdbd()V
    .locals 1

    .line 315
    const-string p0, "ctl.restart"

    const-string v0, "adbd"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final scheduleTradeInModeWipe()Z
    .locals 2

    .line 304
    :try_start_0
    new-instance p0, Ljava/io/FileWriter;

    const-string v0, "/metadata/tradeinmode/wipe"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    :try_start_1
    const-string v0, "0"

    invoke-virtual {p0, v0}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :try_start_2
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    .line 304
    :try_start_3
    invoke-virtual {p0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_4
    invoke-virtual {v0, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_0
    throw v0
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    .line 308
    const-string v0, "TradeInModeService"

    const-string v1, "Failed to write /metadata/tradeinmode/wipe"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method public final setAdbEnabled(Z)V
    .locals 1

    .line 319
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 320
    const-string v0, "adb_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public final startTradeInMode()V
    .locals 3

    .line 256
    const-string v0, "TradeInModeService"

    const-string v1, "Enabling trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 258
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "persist.adb.tradeinmode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    .line 262
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForSetupCompletion()V

    .line 263
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForNetworkChange()V

    .line 264
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->watchForAccountsCreated()V

    return-void
.end method

.method public final stopTradeInMode()V
    .locals 2

    .line 268
    const-string v0, "TradeInModeService"

    const-string v1, "Stopping trade-in mode."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 270
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "persist.adb.tradeinmode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeNetworkWatch()V

    .line 273
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->removeAccountsWatch()V

    .line 275
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->isForceEnabledForTesting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    invoke-virtual {p0}, Lcom/android/server/TradeInModeService;->restartAdbd()V

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 280
    invoke-virtual {p0, v0}, Lcom/android/server/TradeInModeService;->setAdbEnabled(Z)V

    return-void
.end method

.method public final watchForAccountsCreated()V
    .locals 3

    .line 424
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/accounts/AccountManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/accounts/AccountManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    .line 425
    new-instance v0, Lcom/android/server/TradeInModeService$2;

    invoke-direct {v0, p0}, Lcom/android/server/TradeInModeService$2;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mAccountsListener:Landroid/accounts/OnAccountsUpdateListener;

    .line 431
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mAccountManager:Landroid/accounts/AccountManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/accounts/AccountManager;->addOnAccountsUpdatedListener(Landroid/accounts/OnAccountsUpdateListener;Landroid/os/Handler;Z)V

    return-void
.end method

.method public final watchForNetworkChange()V
    .locals 2

    .line 398
    iget-object v0, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 399
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v1, 0xc

    .line 400
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 401
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 402
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 403
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    .line 405
    new-instance v1, Lcom/android/server/TradeInModeService$1;

    invoke-direct {v1, p0}, Lcom/android/server/TradeInModeService$1;-><init>(Lcom/android/server/TradeInModeService;)V

    iput-object v1, p0, Lcom/android/server/TradeInModeService;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 413
    iget-object p0, p0, Lcom/android/server/TradeInModeService;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    return-void
.end method

.method public final watchForSetupCompletion()V
    .locals 4

    .line 386
    const-string/jumbo v0, "user_setup_complete"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 388
    const-string v1, "device_provisioned"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 390
    iget-object v2, p0, Lcom/android/server/TradeInModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 391
    new-instance v3, Lcom/android/server/TradeInModeService$SettingsObserver;

    invoke-direct {v3, p0}, Lcom/android/server/TradeInModeService$SettingsObserver;-><init>(Lcom/android/server/TradeInModeService;)V

    const/4 p0, 0x0

    .line 393
    invoke-virtual {v2, v0, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 394
    invoke-virtual {v2, v1, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
