.class public Lcom/android/server/locksettings/LockSettingsService$Injector;
.super Ljava/lang/Object;
.source "LockSettingsService.java"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mHandler:Landroid/os/Handler;

.field public mHandlerThread:Lcom/android/server/ServiceThread;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 509
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 510
    iput-object p1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public getActivityManager()Landroid/app/IActivityManager;
    .locals 0

    .line 559
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p0

    return-object p0
.end method

.method public getBiometricManager()Landroid/hardware/biometrics/BiometricManager;
    .locals 1

    .line 641
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "biometric"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/biometrics/BiometricManager;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 514
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;
    .locals 1

    .line 582
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/admin/DevicePolicyManager;

    return-object p0
.end method

.method public getDeviceStateCache()Landroid/app/admin/DeviceStateCache;
    .locals 0

    .line 586
    invoke-static {}, Landroid/app/admin/DeviceStateCache;->getInstance()Landroid/app/admin/DeviceStateCache;

    move-result-object p0

    return-object p0
.end method

.method public getFaceManager()Landroid/hardware/face/FaceManager;
    .locals 2

    .line 633
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "face"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/face/FaceManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getFingerprintManager()Landroid/hardware/fingerprint/FingerprintManager;
    .locals 2

    .line 625
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 626
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string v0, "fingerprint"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 529
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    .line 531
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getKeyStore()Ljava/security/KeyStore;
    .locals 2

    .line 647
    :try_start_0
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->androidKeystoreProviderName()Ljava/lang/String;

    move-result-object p0

    .line 646
    invoke-static {p0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object p0

    .line 648
    new-instance v0, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;

    .line 649
    invoke-static {}, Lcom/android/server/locksettings/SyntheticPasswordCrypto;->keyNamespace()I

    move-result v1

    invoke-direct {v0, v1}, Landroid/security/keystore2/AndroidKeyStoreLoadStoreParameter;-><init>(I)V

    .line 648
    invoke-virtual {p0, v0}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 652
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot load keystore"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method public getKeyStoreAuthorization()Landroid/security/KeyStoreAuthorization;
    .locals 0

    .line 657
    invoke-static {}, Landroid/security/KeyStoreAuthorization;->getInstance()Landroid/security/KeyStoreAuthorization;

    move-result-object p0

    return-object p0
.end method

.method public getNotificationManager()Landroid/app/NotificationManager;
    .locals 1

    .line 563
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    return-object p0
.end method

.method public getRebootEscrowManager(Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/RebootEscrowManager;
    .locals 6

    .line 612
    new-instance v0, Lcom/android/server/locksettings/RebootEscrowManager;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    .line 613
    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getServiceThread()Lcom/android/server/ServiceThread;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getHandler(Lcom/android/server/ServiceThread;)Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;

    move-result-object v5

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/locksettings/RebootEscrowManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/RebootEscrowManager$Callbacks;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/Handler;Lcom/android/server/pm/UserManagerInternal;)V

    return-object v0
.end method

.method public getRecoverableKeyStoreManager()Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;
    .locals 0

    .line 590
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;->getInstance(Landroid/content/Context;)Lcom/android/server/locksettings/recoverablekeystore/RecoverableKeyStoreManager;

    move-result-object p0

    return-object p0
.end method

.method public getServiceThread()Lcom/android/server/ServiceThread;
    .locals 4

    .line 518
    iget-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    if-nez v0, :cond_0

    .line 519
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v1, 0xa

    const/4 v2, 0x1

    const-string v3, "LockSettingsService"

    invoke-direct {v0, v3, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    .line 522
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 524
    :cond_0
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mHandlerThread:Lcom/android/server/ServiceThread;

    return-object p0
.end method

.method public getStorage()Lcom/android/server/locksettings/LockSettingsStorage;
    .locals 2

    .line 535
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStorage;

    iget-object v1, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;-><init>(Landroid/content/Context;)V

    .line 536
    new-instance v1, Lcom/android/server/locksettings/LockSettingsService$Injector$1;

    invoke-direct {v1, p0, v0}, Lcom/android/server/locksettings/LockSettingsService$Injector$1;-><init>(Lcom/android/server/locksettings/LockSettingsService$Injector;Lcom/android/server/locksettings/LockSettingsStorage;)V

    invoke-virtual {v0, v1}, Lcom/android/server/locksettings/LockSettingsStorage;->setDatabaseOnCreateCallback(Lcom/android/server/locksettings/LockSettingsStorage$Callback;)V

    return-object v0
.end method

.method public getStorageManager()Landroid/os/storage/IStorageManager;
    .locals 0

    .line 594
    const-string/jumbo p0, "mount"

    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 596
    invoke-static {p0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getStorageManagerInternal()Landroid/os/storage/StorageManagerInternal;
    .locals 0

    .line 602
    const-class p0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/storage/StorageManagerInternal;

    return-object p0
.end method

.method public getStrongAuth()Lcom/android/server/locksettings/LockSettingsStrongAuth;
    .locals 1

    .line 551
    new-instance v0, Lcom/android/server/locksettings/LockSettingsStrongAuth;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsStrongAuth;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getStrongAuthTracker()Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;
    .locals 1

    .line 555
    new-instance v0, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;

    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/server/locksettings/LockSettingsService$SynchronizedStrongAuthTracker;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getSyntheticPasswordManager(Lcom/android/server/locksettings/LockSettingsStorage;)Lcom/android/server/locksettings/SyntheticPasswordManager;
    .locals 3

    .line 606
    new-instance v0, Lcom/android/server/locksettings/SyntheticPasswordManager;

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/locksettings/LockSettingsService$Injector;->getUserManager()Landroid/os/UserManager;

    move-result-object p0

    new-instance v2, Lcom/android/server/locksettings/PasswordSlotManager;

    invoke-direct {v2}, Lcom/android/server/locksettings/PasswordSlotManager;-><init>()V

    invoke-direct {v0, v1, p1, p0, v2}, Lcom/android/server/locksettings/SyntheticPasswordManager;-><init>(Landroid/content/Context;Lcom/android/server/locksettings/LockSettingsStorage;Landroid/os/UserManager;Lcom/android/server/locksettings/PasswordSlotManager;)V

    return-object v0
.end method

.method public getUnifiedProfilePasswordCache(Ljava/security/KeyStore;)Lcom/android/server/locksettings/UnifiedProfilePasswordCache;
    .locals 0

    .line 661
    new-instance p0, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;

    invoke-direct {p0, p1}, Lcom/android/server/locksettings/UnifiedProfilePasswordCache;-><init>(Ljava/security/KeyStore;)V

    return-object p0
.end method

.method public getUserManager()Landroid/os/UserManager;
    .locals 1

    .line 567
    iget-object p0, p0, Lcom/android/server/locksettings/LockSettingsService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 571
    const-class p0, Lcom/android/server/pm/UserManagerInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerInternal;

    return-object p0
.end method

.method public isGsiRunning()Z
    .locals 0

    .line 621
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isGsiRunning()Z

    move-result p0

    return p0
.end method

.method public isHeadlessSystemUserMode()Z
    .locals 0

    .line 665
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result p0

    return p0
.end method

.method public isMainUserPermanentAdmin()Z
    .locals 1

    .line 669
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11101cd

    .line 670
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method
