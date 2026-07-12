.class public final Lcom/android/server/pm/InstallRequest;
.super Ljava/lang/Object;
.source "InstallRequest.java"


# instance fields
.field public mApexInfo:Landroid/apex/ApexInfo;

.field public mApexModuleName:Ljava/lang/String;

.field public mAppId:I

.field public mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

.field public mClearCodeCache:Z

.field public final mDependencyInstallerEnabled:Z

.field public mDexoptStatus:I

.field public mDisabledPs:Lcom/android/server/pm/PackageSetting;

.field public mExistingPackageName:Ljava/lang/String;

.field public mFirstTimeBroadcastInstantUserIds:[I

.field public mFirstTimeBroadcastUserIds:[I

.field public mFreezer:Lcom/android/server/pm/PackageFreezer;

.field public final mHasAppMetadataFileFromInstaller:Z

.field public final mInstallArgs:Lcom/android/server/pm/InstallArgs;

.field public mInstallerUidForInstallExisting:I

.field public mInternalErrorCode:I

.field public mIsInstallForUsers:Z

.field public mIsInstallInherit:Z

.field public mKeepArtProfile:Z

.field public mLibraryConsumers:Ljava/util/ArrayList;

.field public final mMissingSharedLibraryCount:I

.field public mName:Ljava/lang/String;

.field public mNewUsers:[I

.field public mOrigPackage:Ljava/lang/String;

.field public mOrigPermission:Ljava/lang/String;

.field public mOrigUsers:[I

.field public mOriginalPs:Lcom/android/server/pm/PackageSetting;

.field public mPackageLite:Landroid/content/pm/parsing/PackageLite;

.field public final mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

.field public mParseFlags:I

.field public mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

.field public mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

.field public mPostInstallRunnable:Ljava/lang/Runnable;

.field public mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

.field public mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

.field public mReplace:Z

.field public final mRequireUserAction:I

.field public mResponsibleInstallerTitles:Landroid/util/SparseArray;

.field public mReturnCode:I

.field public mReturnMsg:Ljava/lang/String;

.field public mScanFlags:I

.field public mScanResult:Lcom/android/server/pm/ScanResult;

.field public final mSessionId:I

.field public mSystem:Z

.field public mUpdateBroadcastInstantUserIds:[I

.field public mUpdateBroadcastUserIds:[I

.field public final mUserId:I

.field public final mWarnings:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(IILcom/android/server/pm/pkg/AndroidPackage;[ILjava/lang/Runnable;IIZ)V
    .locals 2

    .line 201
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 202
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    const/4 p1, 0x0

    .line 203
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 204
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 205
    iput-object p3, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    .line 206
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 207
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    .line 208
    new-instance p1, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {p1, p0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p1, 0x1

    .line 209
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    .line 210
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 211
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 212
    iput p6, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 213
    iput p7, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    .line 214
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 215
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 216
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 217
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/pm/parsing/pkg/ParsedPackage;IILandroid/os/UserHandle;Lcom/android/server/pm/ScanResult;Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 99
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v1, 0x0

    .line 172
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    if-eqz p4, :cond_0

    .line 224
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    iput p4, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    goto :goto_0

    .line 227
    :cond_0
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    :goto_0
    const/4 p4, 0x0

    .line 229
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 230
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 231
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 232
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    .line 233
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 234
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    .line 235
    iput-object p4, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 236
    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 237
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 238
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    .line 239
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 240
    iput-boolean v1, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 241
    iput v1, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/InstallingSession;)V
    .locals 27

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 177
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/4 v2, -0x1

    .line 99
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    .line 153
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 155
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 157
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 159
    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 162
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    .line 168
    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    const/4 v2, 0x0

    .line 172
    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    .line 178
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    .line 179
    new-instance v3, Lcom/android/server/pm/InstallArgs;

    iget-object v4, v1, Lcom/android/server/pm/InstallingSession;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object v5, v1, Lcom/android/server/pm/InstallingSession;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    iget-object v6, v1, Lcom/android/server/pm/InstallingSession;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    iget v7, v1, Lcom/android/server/pm/InstallingSession;->mInstallFlags:I

    iget v8, v1, Lcom/android/server/pm/InstallingSession;->mDevelopmentInstallFlags:I

    iget-object v9, v1, Lcom/android/server/pm/InstallingSession;->mInstallSource:Lcom/android/server/pm/InstallSource;

    iget-object v10, v1, Lcom/android/server/pm/InstallingSession;->mVolumeUuid:Ljava/lang/String;

    .line 181
    invoke-virtual {v1}, Lcom/android/server/pm/InstallingSession;->getUser()Landroid/os/UserHandle;

    move-result-object v11

    iget-object v13, v1, Lcom/android/server/pm/InstallingSession;->mPackageAbiOverride:Ljava/lang/String;

    iget-object v14, v1, Lcom/android/server/pm/InstallingSession;->mPermissionStates:Landroid/util/ArrayMap;

    iget-object v15, v1, Lcom/android/server/pm/InstallingSession;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mAutoRevokePermissionsMode:I

    iget-object v12, v1, Lcom/android/server/pm/InstallingSession;->mTraceMethod:Ljava/lang/String;

    move/from16 v16, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mTraceCookie:I

    move/from16 v18, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mSigningDetails:Landroid/content/pm/SigningDetails;

    move-object/from16 v19, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallReason:I

    move/from16 v20, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mInstallScenario:I

    move/from16 v21, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mForceQueryableOverride:Z

    move/from16 v22, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mDataLoaderType:I

    move/from16 v23, v2

    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageSource:I

    move/from16 v24, v2

    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mApplicationEnabledSettingPersistent:Z

    move/from16 v25, v2

    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mDexoptCompilerFilter:Ljava/lang/String;

    move-object/from16 v17, v12

    const/4 v12, 0x0

    move-object/from16 v26, v2

    invoke-direct/range {v3 .. v26}, Lcom/android/server/pm/InstallArgs;-><init>(Lcom/android/server/pm/OriginInfo;Lcom/android/server/pm/MoveInfo;Landroid/content/pm/IPackageInstallObserver2;IILcom/android/server/pm/InstallSource;Ljava/lang/String;Landroid/os/UserHandle;[Ljava/lang/String;Ljava/lang/String;Landroid/util/ArrayMap;Ljava/util/List;ILjava/lang/String;ILandroid/content/pm/SigningDetails;IIZIIZLjava/lang/String;)V

    iput-object v3, v0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    .line 188
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    .line 189
    new-instance v2, Lcom/android/server/pm/PackageMetrics;

    invoke-direct {v2, v0}, Lcom/android/server/pm/PackageMetrics;-><init>(Lcom/android/server/pm/InstallRequest;)V

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    .line 190
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mIsInherit:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    .line 191
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mSessionId:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    .line 192
    iget v2, v1, Lcom/android/server/pm/InstallingSession;->mRequireUserAction:I

    iput v2, v0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    .line 193
    iget-object v2, v1, Lcom/android/server/pm/InstallingSession;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    iput-object v2, v0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    .line 194
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mHasAppMetadataFile:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    .line 195
    iget-boolean v2, v1, Lcom/android/server/pm/InstallingSession;->mDependencyInstallerEnabled:Z

    iput-boolean v2, v0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    .line 196
    iget v1, v1, Lcom/android/server/pm/InstallingSession;->mMissingSharedLibraryCount:I

    iput v1, v0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return-void
.end method


# virtual methods
.method public addWarning(Ljava/lang/String;)V
    .locals 0

    .line 957
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public assertScanResultExists()V
    .locals 1

    .line 676
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    if-nez p0, :cond_1

    .line 678
    sget-boolean p0, Landroid/os/Build;->IS_USERDEBUG:Z

    if-nez p0, :cond_0

    sget-boolean p0, Landroid/os/Build;->IS_ENG:Z

    if-nez p0, :cond_0

    .line 681
    const-string p0, "PackageManager"

    const-string v0, "ScanResult is null and it should not happen"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 679
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "ScanResult cannot be null."

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    return-void
.end method

.method public closeFreezer()V
    .locals 0

    .line 732
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    if-eqz p0, :cond_0

    .line 733
    invoke-virtual {p0}, Lcom/android/server/pm/PackageFreezer;->close()V

    :cond_0
    return-void
.end method

.method public getAbiOverride()Ljava/lang/String;
    .locals 0

    .line 287
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAbiOverride:Ljava/lang/String;

    return-object p0
.end method

.method public getAllowlistedRestrictedPermissions()Ljava/util/List;
    .locals 0

    .line 484
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mAllowlistedRestrictedPermissions:Ljava/util/List;

    return-object p0
.end method

.method public getApexInfo()Landroid/apex/ApexInfo;
    .locals 0

    .line 440
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-object p0
.end method

.method public getApexModuleName()Ljava/lang/String;
    .locals 0

    .line 445
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-object p0
.end method

.method public getAppId()I
    .locals 0

    .line 469
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return p0
.end method

.method public getArchivedPackage()Landroid/content/pm/ArchivedPackageParcel;
    .locals 0

    .line 507
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    return-object p0
.end method

.method public getAutoRevokePermissionsMode()I
    .locals 0

    .line 488
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x3

    return p0

    .line 489
    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mAutoRevokePermissionsMode:I

    return p0
.end method

.method public getCodeFile()Ljava/io/File;
    .locals 0

    .line 276
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    return-object p0
.end method

.method public getCodePath()Ljava/lang/String;
    .locals 0

    .line 281
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    if-eqz p0, :cond_0

    .line 282
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDataLoaderType()I
    .locals 0

    .line 420
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDataLoaderType:I

    return p0
.end method

.method public getDevelopmentInstallFlags()I
    .locals 0

    .line 350
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mDevelopmentInstallFlags:I

    return p0
.end method

.method public getDexoptCompilerFilter()Ljava/lang/String;
    .locals 0

    .line 724
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mDexoptCompilerFilter:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 562
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getDynamicSharedLibraryInfos()Ljava/util/List;
    .locals 0

    .line 623
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 624
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    return-object p0
.end method

.method public getFirstTimeBroadcastInstantUserIds()[I
    .locals 0

    .line 706
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    return-object p0
.end method

.method public getFirstTimeBroadcastUserIds()[I
    .locals 0

    .line 702
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    return-object p0
.end method

.method public getInstallFlags()I
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    return p0
.end method

.method public getInstallReason()I
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    return p0
.end method

.method public getInstallScenario()I
    .locals 0

    .line 498
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallScenario:I

    return p0
.end method

.method public getInstallSource()Lcom/android/server/pm/InstallSource;
    .locals 0

    .line 404
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    return-object p0
.end method

.method public getInstallerPackageName()Ljava/lang/String;
    .locals 0

    .line 409
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz p0, :cond_0

    .line 410
    iget-object p0, p0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getInstallerPackageUid()I
    .locals 1

    .line 414
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/pm/InstallArgs;->mInstallSource:Lcom/android/server/pm/InstallSource;

    if-eqz v0, :cond_0

    .line 415
    iget p0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    return p0

    .line 416
    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallerUidForInstallExisting:I

    return p0
.end method

.method public getInternalErrorCode()I
    .locals 0

    .line 295
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    return p0
.end method

.method public getLibraryConsumers()Ljava/util/ArrayList;
    .locals 0

    .line 479
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-object p0
.end method

.method public getMissingSharedLibraryCount()I
    .locals 0

    .line 1095
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mMissingSharedLibraryCount:I

    return p0
.end method

.method public getMoveFromCodePath()Ljava/lang/String;
    .locals 0

    .line 321
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    .line 322
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mFromCodePath:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMovePackageName()Ljava/lang/String;
    .locals 0

    .line 315
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mPackageName:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getMoveToUuid()Ljava/lang/String;
    .locals 0

    .line 309
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    .line 310
    iget-object p0, p0, Lcom/android/server/pm/MoveInfo;->mToUuid:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 246
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-object p0
.end method

.method public getNewUsers()[I
    .locals 0

    .line 460
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    return-object p0
.end method

.method public getObserver()Landroid/content/pm/IPackageInstallObserver2;
    .locals 0

    .line 300
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mObserver:Landroid/content/pm/IPackageInstallObserver2;

    return-object p0
.end method

.method public getOldCodeFile()Ljava/io/File;
    .locals 0

    .line 327
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz p0, :cond_0

    .line 328
    invoke-virtual {p0}, Lcom/android/server/pm/CleanUpArgs;->getCodeFile()Ljava/io/File;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOldInstructionSet()[Ljava/lang/String;
    .locals 0

    .line 333
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mArgs:Lcom/android/server/pm/CleanUpArgs;

    if-eqz p0, :cond_0

    .line 334
    invoke-virtual {p0}, Lcom/android/server/pm/CleanUpArgs;->getInstructionSets()[Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getOrigPackage()Ljava/lang/String;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-object p0
.end method

.method public getOrigPermission()Ljava/lang/String;
    .locals 0

    .line 271
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-object p0
.end method

.method public getOriginInfo()Lcom/android/server/pm/OriginInfo;
    .locals 0

    .line 256
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    return-object p0
.end method

.method public getOriginUri()Landroid/net/Uri;
    .locals 0

    .line 435
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mOriginInfo:Lcom/android/server/pm/OriginInfo;

    iget-object p0, p0, Lcom/android/server/pm/OriginInfo;->mResolvedFile:Ljava/io/File;

    invoke-static {p0}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getOriginUsers()[I
    .locals 0

    .line 465
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-object p0
.end method

.method public getOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 557
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackageLite()Landroid/content/pm/parsing/PackageLite;
    .locals 0

    .line 369
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageLite:Landroid/content/pm/parsing/PackageLite;

    return-object p0
.end method

.method public getParseFlags()I
    .locals 0

    .line 511
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    return p0
.end method

.method public getParsedPackage()Lcom/android/internal/pm/parsing/pkg/ParsedPackage;
    .locals 0

    .line 503
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    return-object p0
.end method

.method public getPermissionStates()Landroid/util/ArrayMap;
    .locals 0

    .line 474
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mPermissionStates:Landroid/util/ArrayMap;

    return-object p0
.end method

.method public getPkg()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 364
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getPreVerifiedDomains()Landroid/content/pm/verify/domain/DomainSet;
    .locals 0

    .line 953
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPreVerifiedDomains:Landroid/content/pm/verify/domain/DomainSet;

    return-object p0
.end method

.method public getPreviousAppId()I
    .locals 0

    .line 662
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 663
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    return p0
.end method

.method public getRealPackageName()Ljava/lang/String;
    .locals 0

    .line 591
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 592
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mRealPkgName:Ljava/lang/String;

    return-object p0
.end method

.method public getRemovedInfo()Lcom/android/server/pm/PackageRemovedInfo;
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-object p0
.end method

.method public getRequireUserAction()I
    .locals 0

    .line 691
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mRequireUserAction:I

    return p0
.end method

.method public getResponsibleInstallerTitles()Landroid/util/SparseArray;
    .locals 0

    .line 450
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    return-object p0
.end method

.method public getReturnCode()I
    .locals 0

    .line 291
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return p0
.end method

.method public getReturnMsg()Ljava/lang/String;
    .locals 0

    .line 251
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-object p0
.end method

.method public getScanFlags()I
    .locals 0

    .line 516
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    return p0
.end method

.method public getScanRequestDisabledPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 585
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 586
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mDisabledPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestOldPackage()Lcom/android/server/pm/pkg/AndroidPackage;
    .locals 0

    .line 526
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 527
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-object p0
.end method

.method public getScanRequestOldPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 567
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 568
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOldPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestOriginalPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 573
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 574
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mOriginalPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScanRequestPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 579
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 580
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mRequest:Lcom/android/server/pm/ScanRequest;

    iget-object p0, p0, Lcom/android/server/pm/ScanRequest;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getScannedPackageSetting()Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 643
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 644
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getSdkSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 611
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 612
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getSessionId()I
    .locals 0

    .line 687
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mSessionId:I

    return p0
.end method

.method public getSignatureSchemeVersion()I
    .locals 0

    .line 424
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 425
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {p0}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result p0

    return p0
.end method

.method public getSigningDetails()Landroid/content/pm/SigningDetails;
    .locals 0

    .line 430
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    sget-object p0, Landroid/content/pm/SigningDetails;->UNKNOWN:Landroid/content/pm/SigningDetails;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mSigningDetails:Landroid/content/pm/SigningDetails;

    return-object p0
.end method

.method public getStaticSharedLibraryInfo()Landroid/content/pm/SharedLibraryInfo;
    .locals 0

    .line 617
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 618
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    return-object p0
.end method

.method public getTraceCookie()I
    .locals 0

    .line 378
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceCookie:I

    return p0
.end method

.method public getTraceMethod()Ljava/lang/String;
    .locals 0

    .line 374
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mTraceMethod:Ljava/lang/String;

    return-object p0
.end method

.method public getUpdateBroadcastInstantUserIds()[I
    .locals 0

    .line 714
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    return-object p0
.end method

.method public getUpdateBroadcastUserIds()[I
    .locals 0

    .line 710
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    return-object p0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .line 338
    new-instance v0, Landroid/os/UserHandle;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-direct {v0, p0}, Landroid/os/UserHandle;-><init>(I)V

    return-object v0
.end method

.method public getUserId()I
    .locals 0

    .line 342
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    return p0
.end method

.method public getVolumeUuid()Ljava/lang/String;
    .locals 0

    .line 359
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mVolumeUuid:Ljava/lang/String;

    return-object p0
.end method

.method public getWarnings()Ljava/util/ArrayList;
    .locals 0

    .line 719
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mWarnings:Ljava/util/ArrayList;

    return-object p0
.end method

.method public hasAppMetadataFile()Z
    .locals 0

    .line 390
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mHasAppMetadataFileFromInstaller:Z

    return p0
.end method

.method public hasPostInstallRunnable()Z
    .locals 0

    .line 742
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isAllNewUsers()Z
    .locals 0

    .line 699
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    if-eqz p0, :cond_1

    array-length p0, p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public isApplicationEnabledSettingPersistent()Z
    .locals 0

    .line 602
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mApplicationEnabledSettingPersistent:Z

    return p0
.end method

.method public isArchived()Z
    .locals 0

    .line 386
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getInstallFlags()I

    move-result p0

    invoke-static {p0}, Lcom/android/server/pm/PackageInstallerSession;->isArchivedInstallation(I)Z

    move-result p0

    return p0
.end method

.method public isClearCodeCache()Z
    .locals 0

    .line 531
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    return p0
.end method

.method public isDependencyInstallerEnabled()Z
    .locals 0

    .line 1099
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mDependencyInstallerEnabled:Z

    return p0
.end method

.method public isExistingSettingCopied()Z
    .locals 0

    .line 648
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 649
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-boolean p0, p0, Lcom/android/server/pm/ScanResult;->mExistingSettingCopied:Z

    return p0
.end method

.method public isForceQueryableOverride()Z
    .locals 0

    .line 606
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-boolean p0, p0, Lcom/android/server/pm/InstallArgs;->mForceQueryableOverride:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallExistingForUser()Z
    .locals 0

    .line 399
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallForUsers()Z
    .locals 0

    .line 547
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallForUsers:Z

    return p0
.end method

.method public isInstallFromAdb()Z
    .locals 0

    .line 551
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallFlags:I

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallInherit()Z
    .locals 0

    .line 543
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mIsInstallInherit:Z

    return p0
.end method

.method public isInstallMove()Z
    .locals 0

    .line 304
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/InstallArgs;->mMoveInfo:Lcom/android/server/pm/MoveInfo;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isInstallReplace()Z
    .locals 0

    .line 535
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    return p0
.end method

.method public isInstallSystem()Z
    .locals 0

    .line 539
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    return p0
.end method

.method public isInstantInstall()Z
    .locals 0

    .line 672
    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    and-int/lit16 p0, p0, 0x2000

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isKeepArtProfile()Z
    .locals 0

    .line 1091
    iget-boolean p0, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    return p0
.end method

.method public isRollback()Z
    .locals 1

    .line 454
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    iget p0, p0, Lcom/android/server/pm/InstallArgs;->mInstallReason:I

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public isUpdate()Z
    .locals 0

    .line 382
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/android/server/pm/PackageRemovedInfo;->mRemovedPackage:Ljava/lang/String;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public needsNewAppId()Z
    .locals 1

    .line 657
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 658
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget p0, p0, Lcom/android/server/pm/ScanResult;->mPreviousAppId:I

    const/4 v0, -0x1

    if-eq p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onCommitFinished()V
    .locals 1

    .line 1003
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 1004
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onCommitStarted()V
    .locals 1

    .line 997
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x4

    .line 998
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onDexoptFinished(Lcom/android/server/art/model/DexoptResult;)V
    .locals 5

    .line 1036
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isInstallFromAdb()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1037
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 1038
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1040
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1041
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getExternalProfileErrors()Ljava/util/List;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/LinkedHashSet;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 1044
    :cond_1
    invoke-virtual {v0}, Ljava/util/LinkedHashSet;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1045
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error occurred during dexopt when processing external profiles:\n  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n  "

    .line 1046
    invoke-static {v2, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1045
    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->addWarning(Ljava/lang/String;)V

    .line 1051
    :cond_2
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz v0, :cond_5

    .line 1052
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getFinalStatus()I

    move-result v0

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mDexoptStatus:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_5

    .line 1055
    invoke-virtual {p1}, Lcom/android/server/art/model/DexoptResult;->getPackageDexoptResults()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    :cond_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;

    .line 1057
    invoke-virtual {v2}, Lcom/android/server/art/model/DexoptResult$PackageDexoptResult;->getDexContainerFileDexoptResults()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;

    .line 1058
    invoke-virtual {v3}, Lcom/android/server/art/model/DexoptResult$DexContainerFileDexoptResult;->getDex2oatWallTimeMillis()J

    move-result-wide v3

    add-long/2addr v0, v3

    goto :goto_1

    .line 1061
    :cond_4
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    const/4 p1, 0x5

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(IJ)V

    :cond_5
    return-void
.end method

.method public onFreezeCompleted()V
    .locals 1

    .line 1081
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    .line 1082
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onFreezeStarted()V
    .locals 1

    .line 1075
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x6

    .line 1076
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onInstallCompleted()V
    .locals 2

    .line 1067
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->getReturnCode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1068
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    .line 1069
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallSucceed()V

    :cond_0
    return-void
.end method

.method public onPrepareFinished()V
    .locals 1

    .line 967
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 968
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onPrepareStarted()V
    .locals 1

    .line 961
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    .line 962
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onReconcileFinished()V
    .locals 1

    .line 991
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 992
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onReconcileStarted()V
    .locals 1

    .line 985
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 986
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onRestoreFinished()V
    .locals 1

    .line 1015
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 1016
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onRestoreStarted()V
    .locals 1

    .line 1009
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x7

    .line 1010
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onScanFinished()V
    .locals 1

    .line 979
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 980
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onScanStarted()V
    .locals 1

    .line 973
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/4 v0, 0x2

    .line 974
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public onWaitDexoptFinished()V
    .locals 1

    .line 1027
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1028
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepFinished(I)V

    :cond_0
    return-void
.end method

.method public onWaitDexoptStarted()V
    .locals 1

    .line 1021
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    const/16 v0, 0x8

    .line 1022
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageMetrics;->onStepStarted(I)V

    :cond_0
    return-void
.end method

.method public final populateBroadcastUsers()V
    .locals 6

    .line 904
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 905
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->EMPTY_INT_ARRAY:[I

    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 906
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 907
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 908
    iput-object v0, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 910
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->isAllNewUsers()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 913
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v2, v0

    :goto_0
    if-ge v1, v2, :cond_5

    aget v3, v0, v1

    .line 914
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v4, v4, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 915
    invoke-interface {v4, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 917
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 918
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_1

    .line 920
    :cond_0
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 921
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 927
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    array-length v2, v0

    :goto_2
    if-ge v1, v2, :cond_5

    aget v3, v0, v1

    .line 928
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v4

    .line 929
    iget-object v5, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v5, v5, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    .line 930
    invoke-interface {v5, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v5

    if-nez v4, :cond_3

    if-eqz v5, :cond_2

    .line 933
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    .line 934
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastInstantUserIds:[I

    goto :goto_3

    .line 936
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    .line 937
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mFirstTimeBroadcastUserIds:[I

    goto :goto_3

    :cond_3
    if-eqz v5, :cond_4

    .line 941
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    .line 942
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastInstantUserIds:[I

    goto :goto_3

    .line 944
    :cond_4
    iget-object v4, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    .line 945
    invoke-static {v4, v3}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/pm/InstallRequest;->mUpdateBroadcastUserIds:[I

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    return-void
.end method

.method public runPostInstallRunnable()V
    .locals 0

    .line 746
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    if-eqz p0, :cond_0

    .line 747
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :cond_0
    return-void
.end method

.method public setApexInfo(Landroid/apex/ApexInfo;)V
    .locals 0

    .line 789
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexInfo:Landroid/apex/ApexInfo;

    return-void
.end method

.method public setApexModuleName(Ljava/lang/String;)V
    .locals 0

    .line 793
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mApexModuleName:Ljava/lang/String;

    return-void
.end method

.method public setAppId(I)V
    .locals 0

    .line 806
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mAppId:I

    return-void
.end method

.method public setCodeFile(Ljava/io/File;)V
    .locals 0

    .line 752
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mInstallArgs:Lcom/android/server/pm/InstallArgs;

    if-eqz p0, :cond_0

    .line 753
    iput-object p1, p0, Lcom/android/server/pm/InstallArgs;->mCodeFile:Ljava/io/File;

    :cond_0
    return-void
.end method

.method public setError(ILjava/lang/String;)V
    .locals 0

    .line 758
    invoke-virtual {p0, p1}, Lcom/android/server/pm/InstallRequest;->setReturnCode(I)V

    .line 759
    invoke-virtual {p0, p2}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 760
    const-string p1, "PackageManager"

    invoke-static {p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 761
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    .line 762
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_0
    return-void
.end method

.method public setError(Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    const/4 v0, 0x0

    .line 767
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/InstallRequest;->setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V

    return-void
.end method

.method public setError(Ljava/lang/String;Lcom/android/server/pm/PackageManagerException;)V
    .locals 1

    .line 771
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->internalErrorCode:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mInternalErrorCode:I

    .line 772
    iget v0, p2, Lcom/android/server/pm/PackageManagerException;->error:I

    iput v0, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    .line 773
    invoke-static {p1, p2}, Landroid/util/ExceptionUtils;->getCompleteMessage(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/InstallRequest;->setReturnMessage(Ljava/lang/String;)V

    .line 774
    const-string v0, "PackageManager"

    invoke-static {v0, p1, p2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 775
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mPackageMetrics:Lcom/android/server/pm/PackageMetrics;

    if-eqz p0, :cond_0

    .line 776
    invoke-virtual {p0}, Lcom/android/server/pm/PackageMetrics;->onInstallFailed()V

    :cond_0
    return-void
.end method

.method public setFreezer(Lcom/android/server/pm/PackageFreezer;)V
    .locals 0

    .line 831
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mFreezer:Lcom/android/server/pm/PackageFreezer;

    return-void
.end method

.method public setKeepArtProfile(Z)V
    .locals 0

    .line 1087
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mKeepArtProfile:Z

    return-void
.end method

.method public setLibraryConsumers(Ljava/util/ArrayList;)V
    .locals 0

    .line 839
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mLibraryConsumers:Ljava/util/ArrayList;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mName:Ljava/lang/String;

    return-void
.end method

.method public setNewUsers([I)V
    .locals 0

    .line 810
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mNewUsers:[I

    .line 811
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->populateBroadcastUsers()V

    return-void
.end method

.method public setOriginPackage(Ljava/lang/String;)V
    .locals 0

    .line 815
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPackage:Ljava/lang/String;

    return-void
.end method

.method public setOriginPermission(Ljava/lang/String;)V
    .locals 0

    .line 819
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigPermission:Ljava/lang/String;

    return-void
.end method

.method public setOriginUsers([I)V
    .locals 0

    .line 827
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mOrigUsers:[I

    return-void
.end method

.method public setPkg(Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 0

    .line 802
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPkg:Lcom/android/server/pm/pkg/AndroidPackage;

    return-void
.end method

.method public setPostInstallRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 738
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mPostInstallRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public setPrepareResult(ZIILcom/android/server/pm/pkg/PackageState;Lcom/android/internal/pm/parsing/pkg/ParsedPackage;Landroid/content/pm/ArchivedPackageParcel;ZZLcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 0

    .line 847
    iput-boolean p1, p0, Lcom/android/server/pm/InstallRequest;->mReplace:Z

    .line 848
    iput p2, p0, Lcom/android/server/pm/InstallRequest;->mScanFlags:I

    .line 849
    iput p3, p0, Lcom/android/server/pm/InstallRequest;->mParseFlags:I

    if-eqz p4, :cond_0

    .line 851
    invoke-interface {p4}, Lcom/android/server/pm/pkg/PackageState;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mExistingPackageName:Ljava/lang/String;

    .line 852
    iput-object p5, p0, Lcom/android/server/pm/InstallRequest;->mParsedPackage:Lcom/android/internal/pm/parsing/pkg/ParsedPackage;

    .line 853
    iput-object p6, p0, Lcom/android/server/pm/InstallRequest;->mArchivedPackage:Landroid/content/pm/ArchivedPackageParcel;

    .line 854
    iput-boolean p7, p0, Lcom/android/server/pm/InstallRequest;->mClearCodeCache:Z

    .line 855
    iput-boolean p8, p0, Lcom/android/server/pm/InstallRequest;->mSystem:Z

    .line 856
    iput-object p9, p0, Lcom/android/server/pm/InstallRequest;->mOriginalPs:Lcom/android/server/pm/PackageSetting;

    .line 857
    iput-object p10, p0, Lcom/android/server/pm/InstallRequest;->mDisabledPs:Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setRemovedAppId(I)V
    .locals 0

    .line 892
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    if-eqz p0, :cond_0

    .line 893
    iput p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mUid:I

    const/4 p1, 0x1

    .line 894
    iput-boolean p1, p0, Lcom/android/server/pm/PackageRemovedInfo;->mIsAppIdRemoved:Z

    :cond_0
    return-void
.end method

.method public setRemovedInfo(Lcom/android/server/pm/PackageRemovedInfo;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mRemovedInfo:Lcom/android/server/pm/PackageRemovedInfo;

    return-void
.end method

.method public setResponsibleInstallerTitles(Landroid/util/SparseArray;)V
    .locals 0

    .line 798
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mResponsibleInstallerTitles:Landroid/util/SparseArray;

    return-void
.end method

.method public setReturnCode(I)V
    .locals 0

    .line 781
    iput p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnCode:I

    return-void
.end method

.method public setReturnMessage(Ljava/lang/String;)V
    .locals 0

    .line 785
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mReturnMsg:Ljava/lang/String;

    return-void
.end method

.method public setScanResult(Lcom/android/server/pm/ScanResult;)V
    .locals 0

    .line 861
    iput-object p1, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    return-void
.end method

.method public setScannedPackageSettingAppId(I)V
    .locals 0

    .line 865
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 866
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingFirstInstallTime(J)V
    .locals 4

    .line 884
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 885
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUserStates()Landroid/util/SparseArray;

    move-result-object v0

    iget v1, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/pkg/PackageUserStateInternal;

    if-eqz v0, :cond_0

    .line 886
    invoke-interface {v0}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    iget p0, p0, Lcom/android/server/pm/InstallRequest;->mUserId:I

    invoke-virtual {v0, p1, p2, p0}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    :cond_0
    return-void
.end method

.method public setScannedPackageSettingFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)V
    .locals 0

    .line 871
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    if-nez p1, :cond_0

    return-void

    .line 875
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTimeFromReplaced(Lcom/android/server/pm/pkg/PackageStateInternal;[I)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public setScannedPackageSettingLastUpdateTime(J)V
    .locals 0

    .line 879
    invoke-virtual {p0}, Lcom/android/server/pm/InstallRequest;->assertScanResultExists()V

    .line 880
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mPkgSetting:Lcom/android/server/pm/PackageSetting;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    return-void
.end method

.method public updateAllCodePaths(Ljava/util/List;)V
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mSdkSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_0

    .line 629
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 631
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object v0, v0, Lcom/android/server/pm/ScanResult;->mStaticSharedLibraryInfo:Landroid/content/pm/SharedLibraryInfo;

    if-eqz v0, :cond_1

    .line 632
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    .line 634
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/InstallRequest;->mScanResult:Lcom/android/server/pm/ScanResult;

    iget-object p0, p0, Lcom/android/server/pm/ScanResult;->mDynamicSharedLibraryInfos:Ljava/util/List;

    if-eqz p0, :cond_2

    .line 635
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/SharedLibraryInfo;

    .line 636
    invoke-virtual {v0, p1}, Landroid/content/pm/SharedLibraryInfo;->setAllCodePaths(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    return-void
.end method
