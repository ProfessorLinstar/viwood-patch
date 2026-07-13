.class public Lcom/mediatek/server/pm/PmsExt;
.super Ljava/lang/Object;
.source "PmsExt.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkMtkResPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 0
    return-void
.end method

.method public customizeInstallPkgFlags(ILjava/lang/String;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/UserHandle;)I
    .locals 0

    .line 0
    return p1
.end method

.method public dumpCmdHandle(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;I)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/UserManagerService;)V
    .locals 0

    .line 0
    return-void
.end method

.method public initAfterScan(Lcom/android/server/utils/WatchedArrayMap;)V
    .locals 0

    .line 0
    return-void
.end method

.method public initBeforeScan()V
    .locals 0

    .line 0
    return-void
.end method

.method public isRemovableSysApp(Ljava/lang/String;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needSkipAppInfo(Landroid/content/pm/ApplicationInfo;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public needSkipScanning(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onPackageAdded(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;I)V
    .locals 0

    .line 0
    return-void
.end method

.method public scanDirLI(IIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    return-void
.end method

.method public scanDirLI(IZIIJLcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    return-void
.end method

.method public scanMoreDirLi(IILcom/android/internal/pm/parsing/PackageParser2;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    .line 0
    return-void
.end method

.method public setPerfLockAcquire(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateActivityInfoForRemovable(Landroid/content/pm/ActivityInfo;)Landroid/content/pm/ActivityInfo;
    .locals 0

    .line 0
    return-object p1
.end method

.method public updateApplicationInfoForRemovable(Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    return-object p1
.end method

.method public updateApplicationInfoForRemovable(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Landroid/content/pm/ApplicationInfo;
    .locals 0

    .line 0
    return-object p2
.end method

.method public updatePackageInfoForRemovable(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;
    .locals 0

    .line 0
    return-object p1
.end method

.method public updatePackageSettings(ILjava/lang/String;Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/PackageSetting;[ILjava/lang/String;)V
    .locals 0

    .line 0
    return-void
.end method

.method public updateResolveInfoListForRemovable(Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    return-object p1
.end method
