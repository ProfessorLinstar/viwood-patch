.class public Lcom/android/server/pm/PackageManagerServiceInjector;
.super Ljava/lang/Object;
.source "PackageManagerServiceInjector.java"


# instance fields
.field public final mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

.field public final mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mBackgroundExecutor:Ljava/util/concurrent/Executor;

.field public final mBackgroundHandler:Landroid/os/Handler;

.field public final mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mContext:Landroid/content/Context;

.field public final mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

.field public final mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mInstaller:Lcom/android/server/pm/Installer;

.field public final mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

.field public final mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public mPackageManager:Lcom/android/server/pm/PackageManagerService;

.field public final mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

.field public final mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mSystemPartitions:Ljava/util/List;

.field public final mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

.field public final mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

.field public final mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/Installer;Lcom/android/server/pm/PackageManagerTracedLock;Lcom/android/server/pm/PackageAbiHelper;Landroid/os/Handler;Ljava/util/List;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 190
    iput-object p3, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    .line 191
    iput-object p5, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    .line 192
    iput-object p4, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 193
    iput-object p6, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    .line 194
    new-instance p1, Landroid/os/HandlerExecutor;

    invoke-direct {p1, p6}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    .line 195
    iput-object p7, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    .line 196
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p8}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 198
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p9}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 200
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p10}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 201
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p11}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 202
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p12}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 203
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p13}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 204
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p14}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 206
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    invoke-direct {p1, p15}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 207
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p16

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 209
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p17

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 210
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p18

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 211
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p19

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 213
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p20

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 214
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p21

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 216
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p22

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 218
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p23

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p24

    .line 220
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 p1, p25

    .line 221
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    move-object/from16 p1, p26

    .line 222
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    .line 223
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p27

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p28

    .line 225
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    .line 226
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p29

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 228
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p30

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p1, p33

    .line 230
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    move-object/from16 p1, p34

    .line 231
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    move-object/from16 p1, p35

    .line 232
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    .line 233
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p31

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 236
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p32

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 237
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p36

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 238
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p37

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 239
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p38

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 241
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p39

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    .line 242
    new-instance p1, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    move-object/from16 p2, p40

    invoke-direct {p1, p2}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;-><init>(Lcom/android/server/pm/PackageManagerServiceInjector$Producer;)V

    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    return-void
.end method


# virtual methods
.method public bootstrap(Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 250
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    return-void
.end method

.method public getAbiHelper()Lcom/android/server/pm/PackageAbiHelper;
    .locals 0

    .line 258
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAbiHelper:Lcom/android/server/pm/PackageAbiHelper;

    return-object p0
.end method

.method public getActivityManagerInternal()Landroid/app/ActivityManagerInternal;
    .locals 1

    .line 412
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManagerInternal;

    return-object p0
.end method

.method public getApexManager()Lcom/android/server/pm/ApexManager;
    .locals 2

    .line 338
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mApexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ApexManager;

    return-object p0
.end method

.method public getAppOpsManagerInternal()Landroid/app/AppOpsManagerInternal;
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppOpsManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManagerInternal;

    return-object p0
.end method

.method public getAppsFilter()Lcom/android/server/pm/AppsFilterImpl;
    .locals 2

    .line 310
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mAppsFilterProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/AppsFilterImpl;

    return-object p0
.end method

.method public getArtManagerService()Lcom/android/server/pm/dex/ArtManagerService;
    .locals 2

    .line 334
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mArtManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/ArtManagerService;

    return-object p0
.end method

.method public getBackgroundExecutor()Ljava/util/concurrent/Executor;
    .locals 0

    .line 346
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundExecutor:Ljava/util/concurrent/Executor;

    return-object p0
.end method

.method public getBackgroundHandler()Landroid/os/Handler;
    .locals 0

    .line 342
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mBackgroundHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public getCompatibility()Lcom/android/server/compat/PlatformCompat;
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPlatformCompatProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/compat/PlatformCompat;

    return-object p0
.end method

.method public getComponentResolver()Lcom/android/server/pm/resolution/ComponentResolver;
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mComponentResolverProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/resolution/ComponentResolver;

    return-object p0
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    .line 302
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public getCrossProfileIntentFilterHelper()Lcom/android/server/pm/CrossProfileIntentFilterHelper;
    .locals 2

    .line 282
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mCrossProfileIntentFilterHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentFilterHelper;

    return-object p0
.end method

.method public getDefaultAppProvider()Lcom/android/server/pm/DefaultAppProvider;
    .locals 2

    .line 370
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDefaultAppProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/DefaultAppProvider;

    return-object p0
.end method

.method public getDexManager()Lcom/android/server/pm/dex/DexManager;
    .locals 2

    .line 326
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDexManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/DexManager;

    return-object p0
.end method

.method public getDisplayMetrics()Landroid/util/DisplayMetrics;
    .locals 2

    .line 350
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDisplayMetricsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/DisplayMetrics;

    return-object p0
.end method

.method public getDomainVerificationManagerInternal()Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    .locals 2

    .line 404
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDomainVerificationManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    return-object p0
.end method

.method public getDynamicCodeLogger()Lcom/android/server/pm/dex/DynamicCodeLogger;
    .locals 2

    .line 330
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mDynamicCodeLoggerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/dex/DynamicCodeLogger;

    return-object p0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 2

    .line 408
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mHandlerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Handler;

    return-object p0
.end method

.method public getIBackupManager()Landroid/app/backup/IBackupManager;
    .locals 2

    .line 416
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIBackupManager:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method public getIncrementalManager()Landroid/os/incremental/IncrementalManager;
    .locals 2

    .line 366
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mIncrementalManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/incremental/IncrementalManager;

    return-object p0
.end method

.method public getInstallLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 0

    .line 262
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstallLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public getInstaller()Lcom/android/server/pm/Installer;
    .locals 0

    .line 286
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstaller:Lcom/android/server/pm/Installer;

    return-object p0
.end method

.method public getInstantAppResolverConnection(Landroid/content/ComponentName;)Lcom/android/server/pm/InstantAppResolverConnection;
    .locals 2

    .line 391
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mInstantAppResolverConnectionProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ProducerWithArgument;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/InstantAppResolverConnection;

    return-object p0
.end method

.method public getLegacyPermissionManagerInternal()Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;
    .locals 2

    .line 400
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLegacyPermissionManagerInternalProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/LegacyPermissionManagerInternal;

    return-object p0
.end method

.method public getLocalService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 354
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetLocalServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getLock()Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 0

    .line 274
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public getModuleInfoProvider()Lcom/android/server/pm/ModuleInfoProvider;
    .locals 2

    .line 396
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mModuleInfoProviderProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/ModuleInfoProvider;

    return-object p0
.end method

.method public getPackageDexOptimizer()Lcom/android/server/pm/PackageDexOptimizer;
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageDexOptimizerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageDexOptimizer;

    return-object p0
.end method

.method public getPackageInstallerService()Lcom/android/server/pm/PackageInstallerService;
    .locals 2

    .line 386
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageInstallerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageInstallerService;

    return-object p0
.end method

.method public getPackageMonitorCallbackHelper()Lcom/android/server/pm/PackageMonitorCallbackHelper;
    .locals 2

    .line 428
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageMonitorCallbackHelper:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageMonitorCallbackHelper;

    return-object p0
.end method

.method public getPermissionManagerServiceInternal()Lcom/android/server/pm/permission/PermissionManagerServiceInternal;
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPermissionManagerServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/permission/PermissionManagerServiceInternal;

    return-object p0
.end method

.method public getPreparingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 2

    .line 382
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPreparingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getScanningCachingPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 2

    .line 374
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningCachingPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getScanningPackageParser()Lcom/android/internal/pm/parsing/PackageParser2;
    .locals 2

    .line 378
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mScanningPackageParserProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Producer;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-interface {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Producer;->produce(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/pm/parsing/PackageParser2;

    return-object p0
.end method

.method public getSettings()Lcom/android/server/pm/Settings;
    .locals 2

    .line 306
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSettingsProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public getSharedLibrariesImpl()Lcom/android/server/pm/SharedLibrariesImpl;
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSharedLibrariesProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedLibrariesImpl;

    return-object p0
.end method

.method public getSystemConfig()Lcom/android/server/SystemConfig;
    .locals 2

    .line 318
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemConfigProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/SystemConfig;

    return-object p0
.end method

.method public getSystemPartitions()Ljava/util/List;
    .locals 0

    .line 266
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemPartitions:Ljava/util/List;

    return-object p0
.end method

.method public getSystemService(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 0

    .line 358
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mGetSystemServiceProducer:Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;

    invoke-interface {p0, p1}, Lcom/android/server/pm/PackageManagerServiceInjector$ServiceProducer;->produce(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getSystemWrapper()Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;
    .locals 0

    .line 362
    iget-object p0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mSystemWrapper:Lcom/android/server/pm/PackageManagerServiceInjector$SystemWrapper;

    return-object p0
.end method

.method public getUpdateOwnershipHelper()Lcom/android/server/pm/UpdateOwnershipHelper;
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUpdateOwnershipHelperProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UpdateOwnershipHelper;

    return-object p0
.end method

.method public getUserManagerInternal()Lcom/android/server/pm/UserManagerInternal;
    .locals 0

    .line 254
    invoke-virtual {p0}, Lcom/android/server/pm/PackageManagerServiceInjector;->getUserManagerService()Lcom/android/server/pm/UserManagerService;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/UserManagerService;->getInternalForInjectorOnly()Lcom/android/server/pm/UserManagerInternal;

    move-result-object p0

    return-object p0
.end method

.method public getUserManagerService()Lcom/android/server/pm/UserManagerService;
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mUserManagerProducer:Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;

    iget-object v1, p0, Lcom/android/server/pm/PackageManagerServiceInjector;->mPackageManager:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/pm/PackageManagerServiceInjector$Singleton;->get(Lcom/android/server/pm/PackageManagerServiceInjector;Lcom/android/server/pm/PackageManagerService;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/UserManagerService;

    return-object p0
.end method
