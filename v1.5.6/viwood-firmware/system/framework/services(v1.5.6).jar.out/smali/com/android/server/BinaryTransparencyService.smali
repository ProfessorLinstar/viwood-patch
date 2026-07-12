.class public Lcom/android/server/BinaryTransparencyService;
.super Lcom/android/server/SystemService;
.source "BinaryTransparencyService.java"


# static fields
.field static final BINARY_HASH_ERROR:Ljava/lang/String; = "SHA256HashError"

.field static final KEY_ENABLE_BIOMETRIC_PROPERTY_VERIFICATION:Ljava/lang/String; = "enable_biometric_property_verification"

.field static final SYSPROP_NAME_VBETA_DIGEST:Ljava/lang/String; = "ro.boot.vbmeta.digest"

.field static final VBMETA_DIGEST_UNAVAILABLE:Ljava/lang/String; = "vbmeta-digest-unavailable"

.field static final VBMETA_DIGEST_UNINITIALIZED:Ljava/lang/String; = "vbmeta-digest-uninitialized"

.field public static final digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;


# instance fields
.field public mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

.field public final mContext:Landroid/content/Context;

.field public mMeasurementsLastRecordedMs:J

.field public mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

.field public final mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

.field public mVbmetaDigest:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$e2eFFQ4jadgx-pDFIBv7RiSb2IE(Lcom/android/server/BinaryTransparencyService;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->lambda$collectBootIntegrityInfo$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$flMmp8UseBbIcDrF5oc9FDN2ITM(Landroid/content/pm/PackageInfo;)Z
    .locals 0

    .line 1788
    iget-boolean p0, p0, Landroid/content/pm/PackageInfo;->isApex:Z

    return p0
.end method

.method public static bridge synthetic -$$Nest$fgetmContext(Lcom/android/server/BinaryTransparencyService;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;)J
    .locals 2

    .line 0
    iget-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-wide v0
.end method

.method public static bridge synthetic -$$Nest$fgetmPackageManagerInternal(Lcom/android/server/BinaryTransparencyService;)Landroid/content/pm/PackageManagerInternal;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmVbmetaDigest(Lcom/android/server/BinaryTransparencyService;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fputmMeasurementsLastRecordedMs(Lcom/android/server/BinaryTransparencyService;J)V
    .locals 0

    .line 0
    iput-wide p1, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    return-void
.end method

.method public static bridge synthetic -$$Nest$mapexPackageNameToModuleName(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetCurrentInstalledApexs(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->getCurrentInstalledApexs()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetInstallSourceInfo(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetNewlyInstalledMbas(Lcom/android/server/BinaryTransparencyService;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->getNewlyInstalledMbas()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$mgetOriginalApexPreinstalledLocation(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$misPackageAnApex(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->isPackageAnApex(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$misPackagePreloaded(Lcom/android/server/BinaryTransparencyService;Ljava/lang/String;)Z
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->isPackagePreloaded(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mlogBiometricProperties(Lcom/android/server/BinaryTransparencyService;Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/BinaryTransparencyService;->logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mtoFaceSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFaceSensorType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtoFingerprintSensorType(Lcom/android/server/BinaryTransparencyService;I)I
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->toFingerprintSensorType(I)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic -$$Nest$mtranslateContentDigestAlgorithmIdToString(Lcom/android/server/BinaryTransparencyService;I)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$sfgetdigestAllPackagesLatency()Lcom/android/modules/expresslog/Histogram;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 5

    .line 154
    new-instance v0, Lcom/android/modules/expresslog/Histogram;

    new-instance v1, Lcom/android/modules/expresslog/Histogram$UniformOptions;

    const/4 v2, 0x0

    const/high16 v3, 0x43fa0000    # 500.0f

    const/16 v4, 0x32

    invoke-direct {v1, v4, v2, v3}, Lcom/android/modules/expresslog/Histogram$UniformOptions;-><init>(IFF)V

    const-string v2, "binary_transparency.value_digest_all_packages_latency_uniform"

    invoke-direct {v0, v2, v1}, Lcom/android/modules/expresslog/Histogram;-><init>(Ljava/lang/String;Lcom/android/modules/expresslog/Histogram$BinOptions;)V

    sput-object v0, Lcom/android/server/BinaryTransparencyService;->digestAllPackagesLatency:Lcom/android/modules/expresslog/Histogram;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1171
    invoke-static {}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->getInstance()Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/BinaryTransparencyService;-><init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService$BiometricLogger;)V
    .locals 2

    .line 1176
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 1177
    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    .line 1178
    new-instance p1, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-direct {p1, p0}, Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    .line 1179
    const-string/jumbo p1, "vbmeta-digest-uninitialized"

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    const-wide/16 v0, 0x0

    .line 1180
    iput-wide v0, p0, Lcom/android/server/BinaryTransparencyService;->mMeasurementsLastRecordedMs:J

    .line 1181
    const-class p1, Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManagerInternal;

    iput-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mPackageManagerInternal:Landroid/content/pm/PackageManagerInternal;

    .line 1182
    iput-object p2, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    return-void
.end method


# virtual methods
.method public final apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1828
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/pm/ApexManager;->getApexModuleNameForPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public collectBiometricProperties()V
    .locals 4

    .line 1506
    const-string v0, "enable_biometric_property_verification"

    const/4 v1, 0x1

    const-string v2, "biometrics"

    invoke-static {v2, v0, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 1515
    :cond_0
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1518
    const-string v2, "android.hardware.fingerprint"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1519
    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/fingerprint/FingerprintManager;

    goto :goto_0

    :cond_1
    move-object v2, v1

    :goto_0
    if-eqz v0, :cond_2

    .line 1521
    const-string v3, "android.hardware.biometrics.face"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1522
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/face/FaceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/hardware/face/FaceManager;

    :cond_2
    if-eqz v2, :cond_3

    .line 1528
    new-instance v0, Lcom/android/server/BinaryTransparencyService$1;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$1;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v2, v0}, Landroid/hardware/fingerprint/FingerprintManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/fingerprint/IFingerprintAuthenticatorsRegisteredCallback;)V

    :cond_3
    if-eqz v1, :cond_4

    .line 1552
    new-instance v0, Lcom/android/server/BinaryTransparencyService$2;

    invoke-direct {v0, p0}, Lcom/android/server/BinaryTransparencyService$2;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-virtual {v1, v0}, Landroid/hardware/face/FaceManager;->addAuthenticatorsRegisteredCallback(Landroid/hardware/face/IFaceAuthenticatorsRegisteredCallback;)V

    :cond_4
    :goto_1
    return-void
.end method

.method public final collectBootIntegrityInfo()V
    .locals 2

    .line 1575
    const-string/jumbo v0, "ro.boot.vbmeta.digest"

    const-string/jumbo v1, "vbmeta-digest-unavailable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    .line 1576
    const-string v1, "VBMeta Digest: %s"

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x1a4

    .line 1577
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;)V

    .line 1579
    invoke-static {}, Lcom/android/server/IoThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final getCurrentInstalledApexs()Ljava/util/List;
    .locals 4

    .line 1774
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1775
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 1776
    const-string v1, "TransparencyService"

    if-nez p0, :cond_0

    .line 1777
    const-string p0, "Error obtaining an instance of PackageManager."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const-wide/32 v2, 0x48000000

    .line 1781
    invoke-static {v2, v3}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v2

    .line 1780
    invoke-virtual {p0, v2}, Landroid/content/pm/PackageManager;->getInstalledPackages(Landroid/content/pm/PackageManager$PackageInfoFlags;)Ljava/util/List;

    move-result-object p0

    if-nez p0, :cond_1

    .line 1784
    const-string p0, "Error obtaining installed packages (including APEX)"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1788
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public final getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;
    .locals 1

    .line 1794
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 1796
    const-string p0, "TransparencyService"

    const-string p1, "Error obtaining an instance of PackageManager."

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    .line 1800
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getInstallSourceInfo(Ljava/lang/String;)Landroid/content/pm/InstallSourceInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 1802
    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    return-object v0
.end method

.method public final getNewlyInstalledMbas()Ljava/util/List;
    .locals 5

    .line 1846
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 1847
    const-string v0, "background_install_control"

    .line 1848
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1847
    invoke-static {v0}, Landroid/content/pm/IBackgroundInstallControlService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IBackgroundInstallControlService;

    move-result-object v0

    .line 1849
    const-string v1, "TransparencyService"

    if-nez v0, :cond_0

    .line 1850
    const-string v0, "Failed to obtain an IBinder instance of IBackgroundInstallControlService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0

    :cond_0
    const-wide/32 v2, 0x8020000

    const/4 v4, 0x0

    .line 1856
    :try_start_0
    invoke-interface {v0, v2, v3, v4}, Landroid/content/pm/IBackgroundInstallControlService;->getBackgroundInstalledPackages(JI)Landroid/content/pm/ParceledListSlice;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1863
    invoke-virtual {p0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object p0

    return-object p0

    :catch_0
    move-exception v0

    .line 1860
    const-string v2, "Failed to get a list of MBAs."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method public final getOriginalApexPreinstalledLocation(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1810
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/BinaryTransparencyService;->apexPackageNameToModuleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 1811
    const-string p1, "apexservice"

    .line 1812
    invoke-static {p1}, Landroid/os/ServiceManager;->waitForService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Landroid/os/Binder;->allowBlocking(Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object p1

    .line 1811
    invoke-static {p1}, Landroid/apex/IApexService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/apex/IApexService;

    move-result-object p1

    .line 1813
    invoke-interface {p1}, Landroid/apex/IApexService;->getAllPackages()[Landroid/apex/ApexInfo;

    move-result-object p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 1814
    iget-object v3, v2, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1815
    iget-object p0, v2, Landroid/apex/ApexInfo;->preinstalledModulePath:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    .line 1819
    const-string p1, "TransparencyService"

    const-string v0, "Unable to get package list from apexservice"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1821
    :cond_1
    const-string p0, "could-not-be-determined"

    return-object p0
.end method

.method public final isPackageAnApex(Ljava/lang/String;)Z
    .locals 2

    .line 1697
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x40000000

    .line 1700
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    .line 1699
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 1701
    iget-boolean p0, p0, Landroid/content/pm/PackageInfo;->isApex:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final isPackagePreloaded(Ljava/lang/String;)Z
    .locals 2

    .line 1686
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/32 v0, 0x200000

    .line 1688
    :try_start_0
    invoke-static {v0, v1}, Landroid/content/pm/PackageManager$PackageInfoFlags;->of(J)Landroid/content/pm/PackageManager$PackageInfoFlags;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$PackageInfoFlags;)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    const/4 p0, 0x0

    return p0
.end method

.method public final synthetic lambda$collectBootIntegrityInfo$0()V
    .locals 3

    .line 1580
    const-string v0, "/sys/fs/selinux/policy"

    .line 1581
    invoke-static {}, Landroid/util/PackageUtils;->createLargeFileBuffer()[B

    move-result-object v1

    .line 1580
    invoke-static {v0, v1}, Landroid/util/PackageUtils;->computeSha256DigestForLargeFileAsBytes(Ljava/lang/String;[B)[B

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 1584
    invoke-static {v0, v1}, Llibcore/util/HexEncoding;->encodeToString([BZ)Ljava/lang/String;

    move-result-object v0

    .line 1585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sepolicy hash: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TransparencyService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x307

    .line 1587
    iget-object p0, p0, Lcom/android/server/BinaryTransparencyService;->mVbmetaDigest:Ljava/lang/String;

    invoke-static {v1, v0, p0}, Lcom/android/internal/util/FrameworkStatsLog;->write(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final logBiometricProperties(Landroid/hardware/biometrics/SensorProperties;II)V
    .locals 10

    .line 1482
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorId()I

    move-result v1

    .line 1483
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getSensorStrength()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/BinaryTransparencyService;->toSensorStrength(I)I

    move-result v4

    .line 1488
    invoke-virtual {p1}, Landroid/hardware/biometrics/SensorProperties;->getComponentInfo()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;

    move-object v2, v0

    .line 1489
    iget-object v0, p0, Lcom/android/server/BinaryTransparencyService;->mBiometricLogger:Lcom/android/server/BinaryTransparencyService$BiometricLogger;

    .line 1494
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getComponentId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 1495
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getHardwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 1496
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getFirmwareVersion()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    .line 1497
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSerialNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 1498
    invoke-virtual {v2}, Landroid/hardware/biometrics/SensorProperties$ComponentInfo;->getSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    move v2, p2

    move v3, p3

    .line 1489
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/BinaryTransparencyService$BiometricLogger;->logStats(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onBootPhase(I)V
    .locals 1

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_0

    .line 1298
    const-string p1, "Boot completed. Getting boot integrity data."

    const-string v0, "TransparencyService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBootIntegrityInfo()V

    .line 1307
    const-string p1, "Boot completed. Collecting biometric system properties."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1308
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->collectBiometricProperties()V

    .line 1313
    const-string p1, "Scheduling measurements to be taken."

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    iget-object p1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/android/server/BinaryTransparencyService$UpdateMeasurementsJobService;->scheduleBinaryMeasurements(Landroid/content/Context;Lcom/android/server/BinaryTransparencyService;)V

    .line 1317
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerAllPackageUpdateObservers()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 1280
    const-string v0, "TransparencyService"

    :try_start_0
    const-string/jumbo v1, "transparency"

    iget-object v2, p0, Lcom/android/server/BinaryTransparencyService;->mServiceImpl:Lcom/android/server/BinaryTransparencyService$BinaryTransparencyServiceImpl;

    invoke-virtual {p0, v1, v2}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1281
    const-string p0, "Started BinaryTransparencyService"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 1283
    const-string v1, "Failed to start BinaryTransparencyService."

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public final registerAllPackageUpdateObservers()V
    .locals 0

    .line 1749
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerApkAndNonStagedApexUpdateListener()V

    .line 1750
    invoke-virtual {p0}, Lcom/android/server/BinaryTransparencyService;->registerStagedApexUpdateObserver()V

    return-void
.end method

.method public final registerApkAndNonStagedApexUpdateListener()V
    .locals 4

    .line 1610
    const-string v0, "TransparencyService"

    const-string v1, "Registering APK & Non-Staged APEX updates..."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1612
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1613
    iget-object v1, p0, Lcom/android/server/BinaryTransparencyService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/BinaryTransparencyService$PackageUpdatedReceiver;-><init>(Lcom/android/server/BinaryTransparencyService;Lcom/android/server/BinaryTransparencyService-IA;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public final registerStagedApexUpdateObserver()V
    .locals 3

    .line 1624
    const-string v0, "Registering APEX updates..."

    const-string v1, "TransparencyService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1625
    const-string/jumbo v0, "package_native"

    .line 1626
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1625
    invoke-static {v0}, Landroid/content/pm/IPackageManagerNative$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManagerNative;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1628
    const-string p0, "IPackageManagerNative is null"

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1633
    :cond_0
    :try_start_0
    new-instance v2, Lcom/android/server/BinaryTransparencyService$3;

    invoke-direct {v2, p0}, Lcom/android/server/BinaryTransparencyService$3;-><init>(Lcom/android/server/BinaryTransparencyService;)V

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManagerNative;->registerStagedApexObserver(Landroid/content/pm/IStagedApexObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 1644
    :catch_0
    const-string p0, "Failed to register a StagedApexObserver."

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final toFaceSensorType(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x7

    return p0

    :cond_1
    const/4 p0, 0x6

    return p0
.end method

.method public final toFingerprintSensorType(I)I
    .locals 0

    .line 0
    const/4 p0, 0x1

    if-eq p1, p0, :cond_0

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const/4 p0, 0x5

    if-eq p1, p0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return p0
.end method

.method public final toSensorStrength(I)I
    .locals 1

    .line 0
    const/4 p0, 0x1

    if-eqz p1, :cond_2

    const/4 v0, 0x2

    if-eq p1, p0, :cond_1

    if-eq p1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x3

    return p0

    :cond_1
    return v0

    :cond_2
    return p0
.end method

.method public final translateContentDigestAlgorithmIdToString(I)Ljava/lang/String;
    .locals 1

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    .line 1768
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN_ALGO_ID("

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 1766
    :cond_0
    const-string p0, "SHA256"

    return-object p0

    .line 1764
    :cond_1
    const-string p0, "VERITY_CHUNKED_SHA256"

    return-object p0

    .line 1762
    :cond_2
    const-string p0, "CHUNKED_SHA512"

    return-object p0

    .line 1760
    :cond_3
    const-string p0, "CHUNKED_SHA256"

    return-object p0
.end method
