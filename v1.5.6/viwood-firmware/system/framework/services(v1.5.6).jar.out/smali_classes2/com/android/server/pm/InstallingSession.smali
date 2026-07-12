.class public Lcom/android/server/pm/InstallingSession;
.super Ljava/lang/Object;
.source "InstallingSession.java"


# instance fields
.field public final mAllowlistedRestrictedPermissions:Ljava/util/List;

.field public final mApplicationEnabledSettingPersistent:Z

.field public final mAutoRevokePermissionsMode:I

.field public final mDataLoaderType:I

.field public final mDependencyInstallerEnabled:Z

.field public final mDevelopmentInstallFlags:I

.field public final mDexoptCompilerFilter:Ljava/lang/String;

.field public final mForceQueryableOverride:Z

.field public final mHasAppMetadataFile:Z

.field public mInstallFlags:I

.field public final mInstallReason:I

.field public final mInstallScenario:I

.field public final mInstallSource:Lcom/android/server/pm/InstallSource;

.field public final mIsInherit:Z

.field public final mMissingSharedLibraryCount:I

.field public final mMoveInfo:Lcom/android/server/pm/MoveInfo;

.field public final mObserver:Landroid/content/pm/IPackageInstallObserver2;

.field public final mOriginInfo:Lcom/android/server/pm/OriginInfo;

.field public final mPackageAbiOverride:Ljava/lang/String;

.field public final mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageSource:I

.field public mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

.field public final mPermissionStates:Landroid/util/ArrayMap;

.field public final mPm:Lcom/android/server/pm/PackageManagerService;

.field public final mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public final mRequireUserAction:I

.field public final mRequiredInstalledVersionCode:J

.field public mRet:I

.field public final mSessionId:I

.field public final mSigningDetails:Landroid/content/pm/SigningDetails;

.field public mTraceCookie:I

.field public mTraceMethod:Ljava/lang/String;

.field public final mUser:Landroid/os/UserHandle;

.field public final mVolumeUuid:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$3YxEVU-qWs8li-YcaWhP_DprQyQ(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static synthetic $r8$lambda$W6cR9Ys08-5335--4Z-HKpTJitw(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$installApexPackages$2(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic $r8$lambda$gEcdI8cK9dzFagC4AcY_lMc7VaM(Lcom/android/server/pm/InstallingSession;)V
    .locals 0

    .line 0
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->start()V

    return-void
.end method

.method public static synthetic $r8$lambda$zYUVT-RGxbD5-C2bJNfd8Hvzf3M(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->lambda$processInstallRequests$1(Ljava/util/List;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleReturnCode(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mhandleStartCopy(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mprocessInstallRequests(Lcom/android/server/pm/InstallingSession;ZLjava/util/List;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public constructor <init>(ILjava/io/File;Landroid/content/pm/IPackageInstallObserver2;Landroid/content/pm/PackageInstaller$SessionParams;Lcom/android/server/pm/InstallSource;Landroid/os/UserHandle;Landroid/content/pm/SigningDetails;ILandroid/content/pm/parsing/PackageLite;Landroid/content/pm/verify/domain/DomainSet;Lcom/android/server/pm/PackageManagerService;ZZI)V
    .locals 0

    .line 152
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 153
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 154
    iput-object p6, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 155
    invoke-static {p2}, Lcom/android/server/pm/OriginInfo;->fromStagedFile(Ljava/io/File;)Lcom/android/server/pm/OriginInfo;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    const/4 p2, 0x0

    .line 156
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 157
    iget-object p2, p5, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    iget p6, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installReason:I

    invoke-virtual {p0, p2, p8, p6}, Lcom/android/server/pm/InstallingSession;->fixUpInstallReason(Ljava/lang/String;II)I

    move-result p2

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 159
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installScenario:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 160
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 161
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->installFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 162
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->developmentInstallFlags:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 163
    iput-object p5, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 164
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->volumeUuid:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 165
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->abiOverride:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 166
    invoke-virtual {p4}, Landroid/content/pm/PackageInstaller$SessionParams;->getPermissionStates()Landroid/util/ArrayMap;

    move-result-object p2

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    .line 167
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->whitelistedRestrictedPermissions:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    .line 168
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->autoRevokePermissionsMode:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 169
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 170
    iget-boolean p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->forceQueryableOverride:Z

    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 171
    iget-object p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dataLoaderParams:Landroid/content/pm/DataLoaderParams;

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 172
    invoke-virtual {p2}, Landroid/content/pm/DataLoaderParams;->getType()I

    move-result p2

    goto :goto_0

    :cond_0
    move p2, p3

    :goto_0
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    .line 173
    iget-wide p5, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requiredInstalledVersionCode:J

    iput-wide p5, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 174
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->packageSource:I

    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 175
    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 176
    iget p2, p4, Landroid/content/pm/PackageInstaller$SessionParams;->mode:I

    const/4 p5, 0x2

    if-ne p2, p5, :cond_1

    const/4 p3, 0x1

    :cond_1
    iput-boolean p3, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    .line 177
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 178
    iget p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->requireUserAction:I

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 179
    iget-boolean p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->applicationEnabledSettingPersistent:Z

    iput-boolean p1, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 180
    iput-object p10, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 181
    iput-boolean p12, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 182
    iget-object p1, p4, Landroid/content/pm/PackageInstaller$SessionParams;->dexoptCompilerFilter:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 183
    iput-boolean p13, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 184
    iput p14, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/content/pm/parsing/PackageLite;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    iput-object p12, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    .line 115
    iput-object p8, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    .line 116
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    .line 117
    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    .line 118
    iput-object p3, p0, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    .line 119
    iput p4, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 120
    iput p5, p0, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    .line 121
    invoke-static {p6}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallSource;

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    .line 122
    iput-object p7, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 123
    iput-object p9, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    .line 125
    new-instance p1, Landroid/util/ArrayMap;

    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    const/4 p2, 0x3

    .line 127
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    .line 128
    sget-object p2, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    iput-object p2, p0, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    const/4 p2, 0x0

    .line 129
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    .line 130
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    .line 131
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    .line 132
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    const-wide/16 p3, -0x1

    .line 133
    iput-wide p3, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    .line 134
    iput p10, p0, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    .line 135
    iput-object p11, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 136
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    const/4 p3, -0x1

    .line 137
    iput p3, p0, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    .line 138
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    .line 139
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    .line 140
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 141
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    .line 142
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    .line 143
    iput-boolean p2, p0, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    .line 144
    iput p2, p0, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    return-void
.end method


# virtual methods
.method public final cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 569
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->isInstallMove()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 570
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveToUuid()Ljava/lang/String;

    move-result-object v0

    .line 571
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMovePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getMoveFromCodePath()Ljava/lang/String;

    move-result-object p1

    .line 570
    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/PackageManagerService;->cleanUpForMoveInstall(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 573
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->removeCodePath(Ljava/io/File;)V

    return-void
.end method

.method public final copyApk(Lcom/android/server/pm/InstallRequest;)I
    .locals 1

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-nez v0, :cond_0

    .line 319
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0

    .line 321
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I

    move-result p0

    return p0
.end method

.method public final copyApkForFileInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 9

    .line 326
    const-string v0, "Copying native libraries failed"

    const-string v1, "Failed to copy package"

    const-string v2, "copyApk"

    const-wide/32 v3, 0x40000

    invoke-static {v3, v4, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 328
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v2, v2, Lcom/android/server/pm/OriginInfo;->mStaged:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x1

    const-string v6, "PackageManager"

    if-eqz v2, :cond_1

    .line 329
    :try_start_1
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    .line 330
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v1, v1, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " already staged; skipping copy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception p0

    goto/16 :goto_6

    .line 332
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {p1, p0}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v5

    .line 337
    :cond_1
    :try_start_2
    iget v2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 339
    :goto_1
    iget-object v7, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v7, v7, Lcom/android/server/pm/PackageManagerService;->mInstallerService:Lcom/android/server/pm/PackageInstallerService;

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 340
    invoke-virtual {v7, v8, v2}, Lcom/android/server/pm/PackageInstallerService;->allocateStageDirLegacy(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v2

    .line 339
    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 349
    :try_start_3
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    .line 350
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v2

    .line 349
    invoke-static {p0, v2}, Lcom/android/server/pm/PackageManagerServiceUtils;->copyPackage(Ljava/lang/String;Ljava/io/File;)I

    move-result p0

    if-eq p0, v5, :cond_3

    .line 353
    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 354
    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 381
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 359
    :cond_3
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 358
    invoke-static {v1}, Landroid/os/incremental/IncrementalManager;->isIncrementalPath(Ljava/lang/String;)Z

    move-result v1

    .line 360
    new-instance v2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v7

    const-string v8, "lib"

    invoke-direct {v2, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v7, 0x0

    .line 363
    :try_start_5
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object v8

    invoke-static {v8}, Lcom/android/internal/content/NativeLibraryHelper$Handle;->create(Ljava/io/File;)Lcom/android/internal/content/NativeLibraryHelper$Handle;

    move-result-object v7

    .line 365
    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getAbiOverride()Ljava/lang/String;

    move-result-object v8

    .line 364
    invoke-static {v7, v2, v8, v1}, Lcom/android/internal/content/NativeLibraryHelper;->copyNativeBinariesWithOverride(Lcom/android/internal/content/NativeLibraryHelper$Handle;Ljava/io/File;Ljava/lang/String;Z)I

    move-result p0

    if-eq p0, v5, :cond_4

    .line 368
    const-string v1, "Failed to copy native libraries"

    invoke-virtual {p1, p0, v1}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception v1

    goto :goto_3

    .line 376
    :cond_4
    :goto_2
    :try_start_6
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_4

    .line 372
    :goto_3
    :try_start_7
    invoke-static {v6, v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v1, -0x1

    .line 373
    invoke-static {v0, v1}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_2

    .line 381
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return p0

    .line 376
    :goto_5
    :try_start_8
    invoke-static {v7}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 377
    throw p0

    :catch_1
    move-exception p0

    .line 343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed to create copy file: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    const-string p0, "Failed to create copy file"

    const/4 v0, -0x4

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 381
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    return v0

    :goto_6
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 382
    throw p0
.end method

.method public final copyApkForMoveInstall(Lcom/android/server/pm/InstallRequest;)I
    .locals 11

    .line 386
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    const-string v1, "PackageManager"

    if-eqz v0, :cond_0

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Moving "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerTracedLock;->acquireLock()Lcom/android/server/pm/PackageManagerTracedLock;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 391
    :try_start_1
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v0, Lcom/android/server/pm/PackageManagerService;->mInstaller:Lcom/android/server/pm/Installer;

    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v4, v0, Lcom/android/server/pm/MoveInfo;->mFromUuid:Ljava/lang/String;

    iget-object v5, v0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    iget v7, v0, Lcom/android/server/pm/MoveInfo;->mAppId:I

    iget-object v8, v0, Lcom/android/server/pm/MoveInfo;->mSeInfo:Ljava/lang/String;

    iget v9, v0, Lcom/android/server/pm/MoveInfo;->mTargetSdkVersion:I

    iget-object v10, v0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/pm/Installer;->moveCompleteApp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 394
    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p0, v0

    goto :goto_2

    .line 402
    :cond_1
    :goto_0
    new-instance v0, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v2, v2, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 403
    new-instance v2, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    .line 404
    invoke-static {p0}, Landroid/os/Environment;->getDataAppDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 403
    invoke-virtual {p1, v2}, Lcom/android/server/pm/InstallRequest;->setCodeFile(Ljava/io/File;)V

    .line 405
    sget-boolean p0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "codeFile after move is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodeFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception v0

    move-object p0, v0

    if-eqz v2, :cond_3

    .line 390
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerTracedLock;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw p0
    :try_end_4
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_4 .. :try_end_4} :catch_0

    :goto_2
    const/4 v0, -0x2

    .line 396
    const-string v2, "Failed to move app"

    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setError(Lcom/android/server/pm/PackageManagerException;)V

    .line 398
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/16 p0, -0x6e

    return p0
.end method

.method public final fixUpInstallReason(Ljava/lang/String;II)I
    .locals 2

    .line 432
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    const-string v1, "android.permission.INSTALL_PACKAGES"

    invoke-interface {v0, v1, p2}, Lcom/android/server/pm/Computer;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 438
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mProtectedPackages:Lcom/android/server/pm/ProtectedPackages;

    .line 439
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    .line 438
    invoke-virtual {p0, p2}, Lcom/android/server/pm/ProtectedPackages;->getDeviceOwnerOrProfileOwnerPackage(I)Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x1

    if-eqz p0, :cond_1

    .line 440
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return p2

    :cond_1
    if-ne p3, p2, :cond_2

    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    return p3
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 0

    .line 493
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    return-object p0
.end method

.method public final handleReturnCode(Lcom/android/server/pm/InstallRequest;)V
    .locals 0

    .line 295
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->processPendingInstall(Lcom/android/server/pm/InstallRequest;)V

    return-void
.end method

.method public final handleStartCopy(Lcom/android/server/pm/InstallRequest;)V
    .locals 10

    .line 254
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v1, 0x20000

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 255
    iput v2, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    return-void

    .line 258
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    invoke-static {v1, v3, v4, v0, v5}, Lcom/android/server/pm/PackageManagerServiceUtils;->getMinimalPackageInfo(Landroid/content/Context;Landroid/content/pm/parsing/PackageLite;Ljava/lang/String;ILjava/lang/String;)Landroid/content/pm/PackageInfoLite;

    move-result-object v0

    .line 263
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    const/high16 v3, 0x200000

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    .line 265
    iget-object v3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-wide v4, p0, Lcom/android/server/pm/InstallingSession;->mRequiredInstalledVersionCode:J

    invoke-virtual {v3, v0, v4, v5, v1}, Lcom/android/server/pm/PackageManagerService;->verifyReplacingVersionCode(Landroid/content/pm/PackageInfoLite;JI)Landroid/util/Pair;

    move-result-object v1

    .line 267
    iget-object v1, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v1, v2, :cond_1

    .line 269
    const-string p0, "Failed to verify version code"

    invoke-virtual {p1, v1, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    return-void

    .line 274
    :cond_1
    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit16 v1, v1, 0x800

    if-eqz v1, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 275
    :goto_0
    sget-boolean v3, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTANT:Z

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkgLite for install: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "PackageManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v3, v1, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-nez v3, :cond_4

    iget v5, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    const/4 v3, -0x1

    if-ne v5, v3, :cond_4

    .line 283
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v6, p0, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iget-object v7, v1, Lcom/android/server/pm/OriginInfo;->mResolvedPath:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget v9, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/pm/PackageManagerService;->freeCacheForInstallation(ILandroid/content/pm/parsing/PackageLite;Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    .line 287
    :cond_4
    iget-object v1, v0, Landroid/content/pm/PackageInfoLite;->packageName:Ljava/lang/String;

    iget v3, v0, Landroid/content/pm/PackageInfoLite;->recommendedInstallLocation:I

    iget v0, v0, Landroid/content/pm/PackageInfoLite;->installLocation:I

    invoke-virtual {p0, v1, v3, v0}, Lcom/android/server/pm/InstallingSession;->overrideInstallLocation(Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-eq v0, v2, :cond_5

    .line 290
    const-string p0, "Failed to override installation location"

    invoke-virtual {p1, v0, p0}, Lcom/android/server/pm/InstallRequest;->setError(ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method public final installApexPackages(Ljava/util/List;)V
    .locals 7

    .line 587
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 590
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    const/4 v0, 0x0

    .line 594
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/InstallRequest;

    .line 596
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getDevelopmentInstallFlags()I

    move-result v3

    and-int/2addr v3, v1

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_0

    :cond_1
    move v3, v0

    .line 601
    :goto_0
    :try_start_0
    invoke-virtual {v2}, Lcom/android/server/pm/InstallRequest;->getOriginInfo()Lcom/android/server/pm/OriginInfo;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    .line 602
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 608
    array-length v6, v5

    if-ne v6, v1, :cond_4

    .line 614
    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, v1, Lcom/android/server/pm/PackageManagerService;->mInjector:Lcom/android/server/pm/PackageManagerServiceInjector;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerServiceInjector;->getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;

    move-result-object v1
    :try_end_0
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 615
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v4, v4, Lcom/android/server/pm/PackageManagerService;->mApexManager:Lcom/android/server/pm/ApexManager;

    aget-object v0, v5, v0

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/ApexManager;->installPackage(Ljava/io/File;Z)Landroid/apex/ApexInfo;

    move-result-object v0

    .line 622
    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexInfo(Landroid/apex/ApexInfo;)V

    .line 623
    iget-object v0, v0, Landroid/apex/ApexInfo;->moduleName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/InstallRequest;->setApexModuleName(Ljava/lang/String;)V

    .line 624
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;

    invoke-direct {v3, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_2

    .line 626
    :try_start_2
    invoke-virtual {v1}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_2
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception p1

    goto :goto_3

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception p1

    if-eqz v1, :cond_3

    .line 614
    :try_start_3
    invoke-virtual {v1}, Lcom/android/internal/pm/parsing/PackageParser2;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_4
    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_3
    :goto_2
    throw p1

    .line 609
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Expected exactly one .apex file under "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 610
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " got: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v5

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x25

    .line 609
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1

    .line 604
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 605
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " is not a directory"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, -0x24

    .line 604
    invoke-static {p1, v0}, Lcom/android/server/pm/PackageManagerException;->ofInternalError(Ljava/lang/String;I)Lcom/android/server/pm/PackageManagerException;

    move-result-object p1

    throw p1
    :try_end_4
    .catch Lcom/android/server/pm/PackageManagerException; {:try_start_4 .. :try_end_4} :catch_0

    .line 628
    :goto_3
    const-string v0, "APEX installation failed"

    invoke-virtual {v2, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    .line 630
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 631
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 591
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Only a non-staged install of a single APEX is supported"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final installApexPackagesTraced(Ljava/util/List;)V
    .locals 3

    const-wide/32 v0, 0x40000

    .line 579
    :try_start_0
    const-string v2, "installApexPackages"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 580
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackages(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 582
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 583
    throw p0
.end method

.method public installStage()V
    .locals 4

    .line 461
    const-string v0, "installStage"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 463
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 462
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 464
    const-string/jumbo v0, "queueInstall"

    .line 465
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 464
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 466
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public installStage(Ljava/util/List;)V
    .locals 4

    .line 471
    new-instance v0, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    .line 472
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {v0, p0, v1, p1, v2}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;-><init>(Lcom/android/server/pm/InstallingSession;Landroid/os/UserHandle;Ljava/util/List;Lcom/android/server/pm/PackageManagerService;)V

    .line 473
    const-string p1, "installStageMultiPackage"

    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 477
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 476
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 478
    const-string/jumbo p1, "queueInstall"

    .line 479
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 478
    invoke-static {v2, v3, p1, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 480
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance p1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;

    invoke-direct {p1, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;)V

    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final synthetic lambda$installApexPackages$2(Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x1

    .line 624
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$processInstallRequests$1(Ljava/util/List;)V
    .locals 0

    .line 537
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->installApexPackagesTraced(Ljava/util/List;)V

    return-void
.end method

.method public final synthetic lambda$processPendingInstall$0(Lcom/android/server/pm/InstallRequest;)V
    .locals 2

    .line 311
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 313
    :goto_0
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 311
    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/InstallingSession;->processInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public movePackage()V
    .locals 4

    .line 484
    const-string/jumbo v0, "movePackage"

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/InstallingSession;->setTraceCookie(I)V

    .line 486
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 485
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 487
    const-string/jumbo v0, "queueInstall"

    .line 488
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    .line 487
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 489
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/InstallingSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final overrideInstallLocation(Ljava/lang/String;II)I
    .locals 3

    .line 203
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-boolean v1, v0, Lcom/android/server/pm/OriginInfo;->mStaged:Z

    if-eqz v1, :cond_1

    .line 205
    iget-object v0, v0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 206
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_0

    .line 208
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Invalid stage location"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    :goto_0
    if-gez p2, :cond_2

    .line 212
    invoke-static {p2}, Lcom/android/internal/content/InstallLocationUtils;->getInstallationErrorCode(I)I

    move-result p0

    return p0

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v0

    .line 216
    invoke-interface {v0, p1}, Lcom/android/server/pm/Computer;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v0

    if-nez v0, :cond_3

    const/4 v1, 0x0

    goto :goto_1

    .line 217
    :cond_3
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_4

    .line 220
    iget v2, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 222
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageState;->isSystem()Z

    move-result v0

    invoke-interface {v1}, Lcom/android/server/pm/pkg/AndroidPackage;->isExternalStorage()Z

    move-result v1

    .line 220
    invoke-static {p3, p2, v2, v0, v1}, Lcom/android/internal/content/InstallLocationUtils;->installLocationPolicy(IIIZZ)I

    move-result p2

    :cond_4
    if-lez p2, :cond_5

    .line 228
    iget-object p3, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sPmsExt:Lcom/mediatek/server/pm/PmsExt;

    iget v1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget-object p3, p3, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object p3, p3, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 229
    invoke-virtual {p0}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    .line 228
    invoke-virtual {v0, v1, p1, p3, v2}, Lcom/mediatek/server/pm/PmsExt;->customizeInstallPkgFlags(ILjava/lang/String;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/UserHandle;)I

    move-result p1

    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    .line 232
    :cond_5
    iget p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    and-int/lit8 p3, p1, 0x10

    if-eqz p3, :cond_6

    goto :goto_2

    :cond_6
    const/4 p3, 0x2

    if-ne p2, p3, :cond_7

    and-int/lit8 p1, p1, -0x11

    .line 238
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    goto :goto_2

    :cond_7
    or-int/lit8 p1, p1, 0x10

    .line 241
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public final processApkInstallRequests(ZLjava/util/List;)V
    .locals 3

    if-nez p1, :cond_3

    .line 555
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/InstallRequest;

    .line 556
    invoke-virtual {v0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    .line 557
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->cleanUpForFailedInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_0

    .line 560
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/InstallRequest;

    .line 561
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p2}, Lcom/android/server/pm/PackageManagerService;->restoreAndPostInstall(Lcom/android/server/pm/InstallRequest;)V

    goto :goto_1

    :cond_2
    return-void

    .line 564
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    invoke-virtual {p1, p2, p0}, Lcom/android/server/pm/PackageManagerService;->installPackagesTraced(Ljava/util/List;Lcom/android/server/pm/MoveInfo;)V

    return-void
.end method

.method public final processInstallRequests(ZLjava/util/List;)V
    .locals 6

    .line 517
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 518
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 519
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/InstallRequest;

    .line 520
    invoke-virtual {v3}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result v4

    const/high16 v5, 0x20000

    and-int/2addr v4, v5

    if-eqz v4, :cond_0

    .line 521
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 523
    :cond_0
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 528
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 530
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Attempted to do a multi package install of both APEXes and APKs"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 533
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    if-eqz p1, :cond_4

    .line 537
    new-instance p1, Ljava/lang/Thread;

    new-instance p2, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;

    invoke-direct {p2, p0, v0}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/InstallingSession;Ljava/util/List;)V

    const-string p0, "installApexPackages"

    invoke-direct {p1, p2, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 539
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void

    :cond_4
    const/4 p1, 0x0

    .line 544
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/InstallRequest;

    .line 545
    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService;->notifyInstallObserver(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 550
    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/InstallingSession;->processApkInstallRequests(ZLjava/util/List;)V

    return-void
.end method

.method public final processPendingInstall(Lcom/android/server/pm/InstallRequest;)V
    .locals 3

    .line 299
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 300
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallingSession;->copyApk(Lcom/android/server/pm/InstallRequest;)I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    .line 302
    :cond_0
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    if-ne v0, v1, :cond_1

    .line 303
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mContext:Landroid/content/Context;

    .line 304
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v1, Ljava/io/File;

    invoke-virtual {p1}, Lcom/android/server/pm/InstallRequest;->getCodePath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 303
    invoke-static {v0, v1}, Lcom/android/internal/content/F2fsUtils;->releaseCompressedBlocks(Landroid/content/ContentResolver;Ljava/io/File;)V

    .line 306
    :cond_1
    iget v0, p0, Lcom/android/server/pm/InstallingSession;->mRet:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 307
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mParentInstallingSession:Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;

    if-eqz v0, :cond_2

    .line 308
    invoke-virtual {v0, p1}, Lcom/android/server/pm/InstallingSession$MultiPackageInstallingSession;->tryProcessInstallRequest(Lcom/android/server/pm/InstallRequest;)V

    return-void

    .line 311
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallingSession;->mPm:Lcom/android/server/pm/PackageManagerService;

    iget-object v0, v0, Lcom/android/server/pm/PackageManagerService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, p1}, Lcom/android/server/pm/InstallingSession$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/pm/InstallingSession;Lcom/android/server/pm/InstallRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final setTraceCookie(I)V
    .locals 0

    .line 513
    iput p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    return-void
.end method

.method public final setTraceMethod(Ljava/lang/String;)Lcom/android/server/pm/InstallingSession;
    .locals 0

    .line 508
    iput-object p1, p0, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public final start()V
    .locals 4

    .line 497
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "start "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/pm/InstallingSession;->mUser:Landroid/os/UserHandle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    :cond_0
    const-string/jumbo v0, "queueInstall"

    .line 499
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    const-wide/32 v2, 0x40000

    .line 498
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 500
    const-string/jumbo v0, "startInstall"

    invoke-static {v2, v3, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 501
    new-instance v0, Lcom/android/server/pm/InstallRequest;

    invoke-direct {v0, p0}, Lcom/android/server/pm/InstallRequest;-><init>(Lcom/android/server/pm/InstallingSession;)V

    .line 502
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleStartCopy(Lcom/android/server/pm/InstallRequest;)V

    .line 503
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallingSession;->handleReturnCode(Lcom/android/server/pm/InstallRequest;)V

    .line 504
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallingSession{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " file="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mFile:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
