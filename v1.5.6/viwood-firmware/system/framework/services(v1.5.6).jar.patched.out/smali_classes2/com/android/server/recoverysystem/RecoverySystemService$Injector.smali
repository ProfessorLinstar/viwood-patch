.class public Lcom/android/server/recoverysystem/RecoverySystemService$Injector;
.super Ljava/lang/Object;
.source "RecoverySystemService.java"


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 273
    iput-object p1, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    .line 274
    new-instance v0, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    invoke-direct {v0, p1}, Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-void
.end method


# virtual methods
.method public connectService()Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;
    .locals 1

    .line 310
    new-instance p0, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;

    invoke-direct {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;-><init>()V

    .line 311
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->connectService()Z

    move-result v0

    if-nez v0, :cond_0

    .line 312
    invoke-virtual {p0}, Lcom/android/server/recoverysystem/RecoverySystemService$UncryptSocket;->close()V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public getBootControl()Landroid/hardware/boot/IBootControl;
    .locals 3

    .line 323
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v0, Landroid/hardware/boot/IBootControl;->DESCRIPTOR:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/default"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 324
    invoke-static {p0}, Landroid/os/ServiceManager;->isDeclared(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "RecoverySystemService"

    if-eqz v0, :cond_0

    .line 325
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AIDL version of BootControl HAL present, using instance "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    invoke-static {p0}, Landroid/os/ServiceManager;->waitForDeclaredService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p0

    .line 327
    invoke-static {p0}, Landroid/hardware/boot/IBootControl$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/boot/IBootControl;

    move-result-object p0

    return-object p0

    .line 331
    :cond_0
    invoke-static {}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->getService()Lcom/android/server/recoverysystem/hal/BootControlHIDL;

    move-result-object p0

    .line 332
    invoke-static {}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->isServicePresent()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 333
    const-string p0, "Neither AIDL nor HIDL version of the BootControl HAL is present."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    .line 337
    :cond_1
    invoke-static {}, Lcom/android/server/recoverysystem/hal/BootControlHIDL;->isV1_2ServicePresent()Z

    move-result v0

    if-nez v0, :cond_2

    .line 338
    const-string p0, "Device doesn\'t implement boot control HAL V1_2."

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_2
    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 278
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCurrentTimeMillis()J
    .locals 2

    .line 362
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLockSettingsService()Lcom/android/internal/widget/LockSettingsInternal;
    .locals 0

    .line 282
    const-class p0, Lcom/android/internal/widget/LockSettingsInternal;

    invoke-static {p0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/widget/LockSettingsInternal;

    return-object p0
.end method

.method public getMetricsPrefs()Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mPrefs:Lcom/android/server/recoverysystem/RecoverySystemService$PreferencesManager;

    return-object p0
.end method

.method public getPowerManager()Landroid/os/PowerManager;
    .locals 1

    .line 286
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    return-object p0
.end method

.method public getUidFromPackageName(Ljava/lang/String;)I
    .locals 1

    .line 350
    :try_start_0
    iget-object p0, p0, Lcom/android/server/recoverysystem/RecoverySystemService$Injector;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 352
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find uid for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RecoverySystemService"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0
.end method

.method public getUncryptPackageFileName()Ljava/lang/String;
    .locals 0

    .line 302
    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getUncryptPackageFileWriter()Ljava/io/FileWriter;
    .locals 1

    .line 306
    new-instance p0, Ljava/io/FileWriter;

    sget-object v0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-direct {p0, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    return-object p0
.end method

.method public reportRebootEscrowLskfCapturedMetrics(III)V
    .locals 0

    const/16 p0, 0x154

    .line 373
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportRebootEscrowPreparationMetrics(III)V
    .locals 0

    const/16 p0, 0x153

    .line 367
    invoke-static {p0, p1, p2, p3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    return-void
.end method

.method public reportRebootEscrowRebootMetrics(IIIIZZII)V
    .locals 0

    const/16 p0, 0x155

    .line 380
    invoke-static/range {p0 .. p8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIIZZII)V

    return-void
.end method

.method public systemPropertiesGet(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 290
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public systemPropertiesSet(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 294
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public threadSleep(J)V
    .locals 0

    .line 345
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V

    return-void
.end method

.method public uncryptPackageFileDelete()Z
    .locals 0

    .line 298
    sget-object p0, Landroid/os/RecoverySystem;->UNCRYPT_PACKAGE_FILE:Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    move-result p0

    return p0
.end method
