.class public final Lcom/android/server/pm/Settings;
.super Ljava/lang/Object;
.source "Settings.java"

# interfaces
.implements Lcom/android/server/utils/Watchable;
.implements Lcom/android/server/utils/Snappable;
.implements Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;


# static fields
.field public static final FLAG_DUMP_SPEC:[Ljava/lang/Object;

.field public static final PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;


# instance fields
.field public final mAppIds:Lcom/android/server/pm/AppIdSettingMap;

.field public final mBackupStoppedPackagesFilename:Ljava/io/File;

.field public final mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

.field public final mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

.field final mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

.field public final mHandler:Landroid/os/Handler;

.field public final mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

.field public final mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

.field public final mKernelMappingFilename:Ljava/io/File;

.field public final mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

.field public final mLock:Lcom/android/server/pm/PackageManagerTracedLock;

.field public final mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

.field public final mObserver:Lcom/android/server/utils/Watcher;

.field public final mPackageListFilename:Ljava/io/File;

.field public final mPackageRestrictionsLock:Ljava/lang/Object;

.field final mPackages:Lcom/android/server/utils/WatchedArrayMap;
    .annotation runtime Lcom/android/server/utils/Watched;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/utils/WatchedArrayMap;"
        }
    .end annotation
.end field

.field public final mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

.field public final mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

.field public final mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

.field public final mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

.field public final mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

.field public final mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mPreviousSettingsFilename:Ljava/io/File;

.field public final mReadMessages:Ljava/lang/StringBuilder;

.field public final mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

.field public final mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

.field public final mSettingsFilename:Ljava/io/File;

.field public final mSettingsReserveCopyFilename:Ljava/io/File;

.field public final mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

.field public final mSnapshot:Lcom/android/server/utils/SnapshotCache;

.field public final mStoppedPackagesFilename:Ljava/io/File;

.field public final mSystemDir:Ljava/io/File;

.field public mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

.field public final mVersion:Lcom/android/server/utils/WatchedArrayMap;

.field public final mWatchable:Lcom/android/server/utils/WatchableImpl;


# direct methods
.method public static synthetic $r8$lambda$53NmgrwLNm2y5xSEATqhfDNuHBU(Lcom/android/server/pm/Settings;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->lambda$pruneSharedUsersLPw$0(Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public static synthetic $r8$lambda$xF8vBosZYCuleRIdy4wr1C_PPCw(Lcom/android/server/pm/Settings;IJZ)V
    .locals 0

    .line 0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->lambda$writePackageRestrictionsLPr$1(IJZ)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/pm/Settings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmLock(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/PackageManagerTracedLock;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmPermissionDataProvider(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/permission/LegacyPermissionDataProvider;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmRuntimePermissionsPersistence(Lcom/android/server/pm/Settings;)Lcom/android/server/pm/Settings$RuntimePermissionPersistence;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    return-object p0
.end method

.method public static bridge synthetic -$$Nest$fgetmWatchable(Lcom/android/server/pm/Settings;)Lcom/android/server/utils/WatchableImpl;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 51

    const/4 v0, 0x1

    .line 4994
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    .line 4995
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v0, 0x4

    .line 4996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x8

    .line 4997
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x10

    .line 4998
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    const/16 v0, 0x20

    .line 4999
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const/16 v0, 0x40

    .line 5000
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    const/16 v0, 0x80

    .line 5001
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    const/16 v0, 0x100

    .line 5002
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v29

    const/16 v0, 0x4000

    .line 5003
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v35

    const v0, 0x8000

    .line 5004
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v21

    const/high16 v0, 0x10000

    .line 5005
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v43

    const/high16 v0, 0x20000

    .line 5006
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v25

    const/high16 v0, 0x40000

    .line 5007
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v37

    const/high16 v0, 0x100000

    .line 5008
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v30, "LARGE_HEAP"

    const-string v2, "SYSTEM"

    const-string v4, "DEBUGGABLE"

    const-string v6, "HAS_CODE"

    const-string v8, "PERSISTENT"

    const-string v10, "FACTORY_TEST"

    const-string v12, "ALLOW_TASK_REPARENTING"

    const-string v14, "ALLOW_CLEAR_USER_DATA"

    const-string v16, "UPDATED_SYSTEM_APP"

    const-string v18, "TEST_ONLY"

    const-string v20, "VM_SAFE_MODE"

    const-string v22, "ALLOW_BACKUP"

    const-string v24, "KILL_AFTER_RESTORE"

    const-string v26, "RESTORE_ANY_VERSION"

    const-string v28, "EXTERNAL_STORAGE"

    move-object/from16 v13, v17

    move-object/from16 v9, v19

    move-object/from16 v15, v23

    move-object/from16 v17, v29

    move-object/from16 v19, v35

    move-object/from16 v27, v37

    move-object/from16 v23, v43

    move-object/from16 v29, v0

    filled-new-array/range {v1 .. v30}, [Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v29, v17

    move-object/from16 v19, v9

    move-object/from16 v17, v13

    move-object/from16 v23, v15

    sput-object v0, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    const/16 v0, 0x400

    .line 5012
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/16 v2, 0x1000

    .line 5013
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v4, 0x800

    .line 5014
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/high16 v4, 0x8000000

    .line 5015
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/high16 v6, 0x20000000

    .line 5016
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/16 v6, 0x2000

    .line 5017
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v8, 0x200

    .line 5028
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v33

    const/high16 v8, 0x80000

    .line 5031
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v39

    const/high16 v8, 0x200000

    .line 5032
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v41

    const/high16 v8, 0x40000000    # 2.0f

    .line 5034
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v45

    const/high16 v8, -0x80000000

    .line 5035
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v47

    const/high16 v8, 0x1000000

    .line 5036
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v49

    const-string v50, "PRIVATE_FLAG_HAS_FRAGILE_USER_DATA"

    move-object v13, v3

    move-object v3, v2

    const-string v2, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE"

    move-object/from16 v31, v7

    move-object v7, v4

    const-string v4, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_RESIZEABLE_VIA_SDK_VERSION"

    move-object v15, v11

    move-object v11, v6

    const-string v6, "PRIVATE_FLAG_ACTIVITIES_RESIZE_MODE_UNRESIZEABLE"

    const-string v8, "ALLOW_AUDIO_PLAYBACK_CAPTURE"

    const-string v10, "PRIVATE_FLAG_REQUEST_LEGACY_EXTERNAL_STORAGE"

    const-string v12, "BACKUP_IN_FOREGROUND"

    const-string v14, "CANT_SAVE_STATE"

    const-string v16, "DEFAULT_TO_DEVICE_PROTECTED_STORAGE"

    const-string v18, "DIRECT_BOOT_AWARE"

    const-string v20, "HAS_DOMAIN_URLS"

    const-string v22, "HIDDEN"

    const-string v24, "EPHEMERAL"

    const-string v26, "ISOLATED_SPLIT_LOADING"

    const-string v28, "OEM"

    const-string v30, "PARTIALLY_DIRECT_BOOT_AWARE"

    const-string v32, "PRIVILEGED"

    const-string v34, "REQUIRED_FOR_SYSTEM_USER"

    const-string v36, "STATIC_SHARED_LIBRARY"

    const-string v38, "VENDOR"

    const-string v40, "PRODUCT"

    const-string v42, "SYSTEM_EXT"

    const-string v44, "VIRTUAL_PRELOAD"

    const-string v46, "ODM"

    const-string v48, "PRIVATE_FLAG_ALLOW_NATIVE_HEAP_POINTER_TAGGING"

    move-object/from16 v27, v25

    move-object/from16 v25, v21

    move-object/from16 v21, v1

    move-object v1, v0

    filled-new-array/range {v1 .. v50}, [Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/pm/Settings;)V
    .locals 10

    .line 744
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 435
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 440
    new-instance v1, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 450
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 520
    new-instance v3, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v3}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 529
    new-instance v4, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v4}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v4, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 536
    new-instance v5, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v5}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v5, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 542
    new-instance v6, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v6}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v6, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 546
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 576
    new-instance v7, Lcom/android/server/pm/Settings$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 745
    iget-object v7, p1, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v7}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 746
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 747
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArrayMap;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 748
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 749
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v8}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/utils/WatchedArraySet;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 750
    new-instance v8, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v8}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 751
    new-instance v8, Lcom/android/server/pm/KeySetManagerService;

    iget-object v9, p1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v8, v9, v7}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/pm/KeySetManagerService;Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    const/4 v7, 0x0

    .line 757
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 758
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 759
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 760
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 761
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 762
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 763
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 764
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 765
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 766
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 768
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    iput-object v8, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 770
    iget-object v8, p1, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, v8}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 771
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 772
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 773
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    .line 774
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 775
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 776
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 777
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 778
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedSparseArray;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 779
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 781
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 782
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {v0}, Lcom/android/server/pm/AppIdSettingMap;->snapshot()Lcom/android/server/pm/AppIdSettingMap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 784
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4, v0}, Lcom/android/server/utils/WatchedArrayMap;->snapshot(Lcom/android/server/utils/WatchedArrayMap;)V

    .line 785
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-virtual {v6, v0}, Lcom/android/server/utils/WatchedSparseIntArray;->snapshot(Lcom/android/server/utils/WatchedSparseIntArray;)V

    .line 786
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v0}, Lcom/android/server/utils/WatchedSparseArray;->snapshot(Lcom/android/server/utils/WatchedSparseArray;)V

    .line 788
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {v0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/utils/WatchedArrayList;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 789
    new-instance v0, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {v0}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 790
    iput-object v7, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 792
    iget-object v0, p1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 793
    iget-object p1, p1, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 796
    new-instance p1, Lcom/android/server/utils/SnapshotCache$Sealed;

    invoke-direct {p1}, Lcom/android/server/utils/SnapshotCache$Sealed;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings-IA;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/server/pm/Settings;-><init>(Lcom/android/server/pm/Settings;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;Lcom/android/permission/persistence/RuntimePermissionsPersistence;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;)V
    .locals 5

    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 435
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 440
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 450
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 520
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 529
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 536
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 542
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 576
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 672
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 673
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 675
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 676
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 678
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 679
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 682
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 683
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 685
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 686
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPersistentPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 689
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 690
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mCrossProfileIntentResolvers"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 693
    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 694
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPendingPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 696
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 698
    iput-object p5, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 699
    iput-object p6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 700
    new-instance p5, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p5}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 701
    new-instance p5, Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-direct {p5}, Lcom/android/server/pm/permission/LegacyPermissionSettings;-><init>()V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 702
    new-instance p5, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    new-instance p6, Lcom/android/server/pm/Settings$3;

    invoke-direct {p6, p0}, Lcom/android/server/pm/Settings$3;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-direct {p5, p2, p6}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;-><init>(Lcom/android/permission/persistence/RuntimePermissionsPersistence;Ljava/util/function/Consumer;)V

    iput-object p5, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 710
    iput-object p3, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 712
    new-instance p2, Ljava/io/File;

    const-string/jumbo p3, "system"

    invoke-direct {p2, p1, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 713
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 714
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 p3, 0x1fd

    const/4 p5, -0x1

    invoke-static {p1, p3, p5, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 718
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 719
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.xml.reservecopy"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 720
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 721
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages.list"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    const/16 p3, 0x3e8

    const/16 p5, 0x408

    const/16 p6, 0x1a0

    .line 722
    invoke-static {p1, p6, p3, p5}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    .line 724
    new-instance p1, Ljava/io/File;

    const-string p3, "/config/sdcardfs"

    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 728
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 729
    new-instance p1, Ljava/io/File;

    const-string/jumbo p3, "packages-stopped-backup.xml"

    invoke-direct {p1, p2, p3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 731
    iput-object p4, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 733
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 734
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 736
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/pm/PackageSetting;",
            ">;)V"
        }
    .end annotation

    .line 616
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-instance v0, Lcom/android/server/utils/WatchableImpl;

    invoke-direct {v0}, Lcom/android/server/utils/WatchableImpl;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    .line 409
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    .line 412
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    .line 435
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 440
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    .line 450
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    .line 520
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 529
    new-instance v0, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 536
    new-instance v0, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    .line 542
    new-instance v0, Lcom/android/server/utils/WatchedSparseIntArray;

    invoke-direct {v0}, Lcom/android/server/utils/WatchedSparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    .line 576
    new-instance v0, Lcom/android/server/pm/Settings$1;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$1;-><init>(Lcom/android/server/pm/Settings;)V

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    .line 617
    new-instance v1, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v1}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    .line 618
    new-instance v2, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v3, "Settings.mPackages"

    invoke-direct {v2, v1, v1, v3}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 620
    new-instance v2, Lcom/android/server/utils/WatchedArrayMap;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    .line 621
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mKernelMapping"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMappingSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 623
    new-instance v2, Lcom/android/server/utils/WatchedArraySet;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    .line 624
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mInstallerPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mInstallerPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 627
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 628
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 630
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    .line 631
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPersistentPreferredActivities"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivitiesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 634
    new-instance v2, Lcom/android/server/utils/WatchedSparseArray;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    .line 635
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mCrossProfileIntentResolvers"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolversSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 638
    new-instance v2, Lcom/android/server/utils/WatchedArrayList;

    invoke-direct {v2}, Lcom/android/server/utils/WatchedArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    .line 639
    new-instance v3, Lcom/android/server/utils/SnapshotCache$Auto;

    const-string v4, "Settings.mPendingPackages"

    invoke-direct {v3, v2, v2, v4}, Lcom/android/server/utils/SnapshotCache$Auto;-><init>(Lcom/android/server/utils/Snappable;Lcom/android/server/utils/Watchable;Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/pm/Settings;->mPendingPackagesSnapshot:Lcom/android/server/utils/SnapshotCache;

    .line 641
    new-instance v2, Lcom/android/server/pm/KeySetManagerService;

    invoke-direct {v2, v1}, Lcom/android/server/pm/KeySetManagerService;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    .line 644
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    .line 645
    new-instance v2, Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-direct {v2}, Lcom/android/server/pm/PackageManagerTracedLock;-><init>()V

    iput-object v2, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    .line 646
    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->putAll(Ljava/util/Map;)V

    .line 647
    new-instance p1, Lcom/android/server/pm/AppIdSettingMap;

    invoke-direct {p1}, Lcom/android/server/pm/AppIdSettingMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    const/4 p1, 0x0

    .line 648
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    .line 649
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    .line 650
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    .line 651
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 652
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    .line 653
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    .line 654
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    .line 655
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 656
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 657
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    .line 658
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    .line 659
    iput-object p1, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    .line 661
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->registerObservers()V

    .line 662
    invoke-static {p0, v0}, Lcom/android/server/utils/Watchable;->verifyWatchedAttributes(Ljava/lang/Object;Lcom/android/server/utils/Watcher;)V

    .line 664
    invoke-direct {p0}, Lcom/android/server/pm/Settings;->makeCache()Lcom/android/server/utils/SnapshotCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    return-void
.end method

.method public static createMimeGroups(Ljava/util/Set;)Ljava/util/Map;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1213
    :cond_0
    new-instance v0, Lcom/android/server/pm/Settings$KeySetToValueMap;

    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/server/pm/Settings$KeySetToValueMap;-><init>(Ljava/util/Set;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static createNewSetting(Ljava/lang/String;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Ljava/lang/String;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JIILandroid/os/UserHandle;ZZZZLcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[B)Lcom/android/server/pm/PackageSetting;
    .locals 45

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move-wide/from16 v12, p9

    move-object/from16 v14, p19

    move-object/from16 v15, p20

    move-object/from16 v2, p21

    move-object/from16 v3, p22

    move-object/from16 v5, p23

    move/from16 v6, p26

    move-object/from16 v7, p27

    if-eqz v0, :cond_1

    .line 1075
    sget-boolean v8, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    if-eqz v8, :cond_0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Package "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is adopting original package "

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1076
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1075
    const-string v8, "PackageManager"

    invoke-static {v8, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1077
    :cond_0
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    invoke-direct {v4, v0, v1}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;Ljava/lang/String;)V

    move-object/from16 v0, p5

    .line 1078
    invoke-virtual {v4, v0}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1079
    invoke-virtual {v1, v9}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1080
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1081
    invoke-virtual {v1, v11}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    new-instance v4, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v4}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 1084
    invoke-virtual {v1, v4}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1085
    invoke-virtual {v1, v12, v13}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1086
    invoke-virtual {v1, v14}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1087
    invoke-virtual {v1, v15}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1088
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1089
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1090
    invoke-virtual {v1, v5}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    .line 1092
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v4, p25

    .line 1093
    invoke-virtual {v0, v4}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1094
    invoke-virtual {v0, v6}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1095
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move/from16 v1, p11

    .line 1096
    invoke-virtual {v0, v1}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    move/from16 v2, p12

    .line 1097
    invoke-virtual {v1, v2}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-object v0

    :cond_1
    move-object/from16 v0, p5

    move-object/from16 v4, p25

    const/16 v16, 0x0

    if-eqz p13, :cond_2

    .line 1099
    invoke-virtual/range {p13 .. p13}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v17

    move/from16 v18, v17

    goto :goto_0

    :cond_2
    move/from16 v18, v16

    .line 1102
    :goto_0
    new-instance v0, Lcom/android/server/pm/PackageSetting;

    move-object v8, v2

    move-object v7, v3

    move-object v12, v5

    move v13, v6

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    move/from16 v5, p12

    move-object v6, v4

    move/from16 v4, p11

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 1104
    invoke-virtual {v0, v14}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1105
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1106
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1107
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1108
    invoke-virtual {v0, v12}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1109
    invoke-virtual {v0, v9}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1110
    invoke-virtual {v0, v10}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1111
    invoke-virtual {v0, v11}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-wide/from16 v1, p9

    .line 1112
    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1113
    invoke-static/range {p24 .. p24}, Lcom/android/server/pm/Settings;->createMimeGroups(Ljava/util/Set;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1114
    invoke-virtual {v0, v13}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v7, p27

    .line 1115
    invoke-virtual {v0, v7}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1116
    invoke-virtual/range {p5 .. p5}, Ljava/io/File;->lastModified()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v8, p4

    if-eqz p4, :cond_3

    .line 1118
    iget v1, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    :cond_3
    const/4 v1, 0x1

    and-int/lit8 v2, p11, 0x1

    if-nez v2, :cond_a

    .line 1127
    invoke-static/range {p18 .. p18}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    if-eqz p14, :cond_9

    .line 1129
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    if-eqz p13, :cond_7

    const/4 v4, -0x1

    move/from16 v5, v18

    if-ne v5, v4, :cond_4

    .line 1136
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v6, p18

    .line 1138
    invoke-static {v6, v4}, Lcom/android/server/pm/Settings;->isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z

    move-result v4

    if-nez v4, :cond_5

    iget-boolean v4, v3, Landroid/content/pm/UserInfo;->preCreated:Z

    if-eqz v4, :cond_8

    goto :goto_2

    :cond_4
    move-object/from16 v6, p18

    :cond_5
    :goto_2
    iget v4, v3, Landroid/content/pm/UserInfo;->id:I

    if-ne v5, v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v26, v16

    goto :goto_4

    :cond_7
    move-object/from16 v6, p18

    move/from16 v5, v18

    :cond_8
    :goto_3
    move/from16 v26, v1

    .line 1146
    :goto_4
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    const/16 v43, 0x0

    const/16 v44, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x1

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    const-wide/16 v41, 0x0

    move/from16 v32, p15

    move/from16 v33, p16

    move-object/from16 v19, v0

    move/from16 v20, v3

    invoke-virtual/range {v19 .. v44}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move/from16 v18, v5

    goto :goto_1

    :cond_9
    move-object/from16 v6, p18

    goto :goto_5

    :cond_a
    move-object/from16 v6, p18

    move/from16 v5, v18

    if-eqz p17, :cond_b

    .line 1174
    invoke-virtual {v0, v1, v5}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 1175
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    :cond_b
    :goto_5
    if-eqz v8, :cond_c

    .line 1178
    iget v1, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    return-object v0

    :cond_c
    if-eqz p2, :cond_d

    .line 1186
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/server/pm/PackageSignatures;-><init>(Lcom/android/server/pm/PackageSignatures;)V

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/PackageSetting;

    .line 1187
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1189
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    .line 1190
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->copyFrom(Lcom/android/server/pm/permission/LegacyPermissionState;)V

    .line 1192
    invoke-static {v6}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 1194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 1195
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v7, p2

    .line 1197
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->getDisabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    .line 1196
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageSetting;->setDisabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    .line 1199
    invoke-virtual {v7, v2}, Lcom/android/server/pm/PackageSetting;->getEnabledComponents(I)Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    .line 1198
    invoke-virtual {v0, v3, v2}, Lcom/android/server/pm/PackageSetting;->setEnabledComponentsCopy(Lcom/android/server/utils/WatchedArraySet;I)V

    goto :goto_6

    :cond_d
    return-object v0
.end method

.method public static dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 4

    if-nez p1, :cond_0

    .line 5847
    const-string/jumbo p1, "unknown"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void

    .line 5850
    :cond_0
    const-string v0, "["

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5851
    const-string v0, "base"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5852
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    const-string v1, ":"

    if-eqz v0, :cond_1

    .line 5853
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 5855
    :cond_1
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v0

    .line 5856
    invoke-interface {p1}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object p1

    const/4 v2, 0x0

    .line 5857
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_3

    .line 5858
    const-string v3, ", "

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5859
    aget-object v3, v0, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5860
    aget v3, p1, v2

    if-eqz v3, :cond_2

    .line 5861
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    aget v3, p1, v2

    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->print(I)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 5864
    :cond_3
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;
    .locals 1

    const/4 v0, 0x1

    .line 4940
    invoke-static {p0, p1, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;
    .locals 1

    const/4 v0, 0x0

    .line 4927
    invoke-static {p0, v0, v0}, Lcom/android/server/pm/Settings;->getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static getUsers(Lcom/android/server/pm/UserManagerService;ZZ)Ljava/util/List;
    .locals 3

    .line 4954
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    const/4 v2, 0x1

    .line 4956
    :try_start_0
    invoke-virtual {p0, v2, p1, p2}, Lcom/android/server/pm/UserManagerService;->getUsers(ZZZ)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4961
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4962
    throw p0

    .line 4961
    :catch_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static isAdbInstallDisallowed(Lcom/android/server/pm/UserManagerService;I)Z
    .locals 1

    .line 1388
    const-string/jumbo v0, "no_debugging_features"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method

.method private makeCache()Lcom/android/server/utils/SnapshotCache;
    .locals 1

    .line 587
    new-instance v0, Lcom/android/server/pm/Settings$2;

    invoke-direct {v0, p0, p0, p0}, Lcom/android/server/pm/Settings$2;-><init>(Lcom/android/server/pm/Settings;Lcom/android/server/pm/Settings;Lcom/android/server/utils/Watchable;)V

    return-object v0
.end method

.method public static parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 3

    .line 4472
    const-string/jumbo v0, "userId"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static parseArchiveActivityInfos(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;
    .locals 11

    .line 2123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2125
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 2127
    :cond_0
    :goto_0
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2129
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_8

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 2134
    :cond_2
    invoke-interface {p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2135
    const-string v3, "archive-activity-info"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2136
    const-string v2, "activity-title"

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 2138
    const-string/jumbo v2, "original-component-name"

    .line 2139
    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 2140
    const-string v2, "icon-path"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    if-nez v2, :cond_3

    move-object v10, v3

    goto :goto_1

    .line 2142
    :cond_3
    new-array v5, v4, [Ljava/lang/String;

    invoke-static {v2, v5}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v2

    move-object v10, v2

    .line 2143
    :goto_1
    const-string/jumbo v2, "monochrome-icon-path"

    invoke-interface {p0, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_4

    goto :goto_2

    .line 2145
    :cond_4
    new-array v3, v4, [Ljava/lang/String;

    invoke-static {v2, v3}, Ljava/nio/file/Path;->of(Ljava/lang/String;[Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v3

    .line 2148
    :goto_2
    const-string v2, "PackageSettings"

    if-eqz v6, :cond_7

    if-eqz v8, :cond_7

    if-nez v10, :cond_5

    goto :goto_3

    .line 2163
    :cond_5
    invoke-static {v8}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_6

    .line 2166
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Incorrect component name: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " from the attributes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 2171
    :cond_6
    new-instance v2, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    invoke-direct {v2, v6, v4, v10, v3}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Ljava/nio/file/Path;Ljava/nio/file/Path;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 2149
    :cond_7
    :goto_3
    const-string/jumbo v7, "original-component-name"

    const-string v9, "icon-path"

    const-string v4, "archive-activity-info"

    const-string v5, "activity-title"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/Object;

    move-result-object v3

    .line 2151
    const-string v4, "Missing attributes in tag %s. %s: %s, %s: %s, %s: %s"

    invoke-static {v4, v3}, Landroid/text/TextUtils;->formatSimple(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 2149
    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_8
    return-object v0
.end method

.method public static parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;
    .locals 7

    .line 2102
    const-string v0, "installer-title"

    const/4 v1, 0x0

    invoke-interface {p0, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2104
    const-string v2, "archive-time"

    const-wide/16 v3, 0x0

    invoke-interface {p0, v1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v2

    .line 2106
    invoke-static {p0}, Lcom/android/server/pm/Settings;->parseArchiveActivityInfos(Lcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/List;

    move-result-object p0

    .line 2108
    const-string v4, "PackageSettings"

    if-nez v0, :cond_0

    .line 2109
    const-string/jumbo p0, "parseArchiveState: installerTitle is null"

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2113
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v5, v6, :cond_1

    .line 2114
    const-string/jumbo p0, "parseArchiveState: activityInfos is empty"

    invoke-static {v4, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2118
    :cond_1
    new-instance v1, Lcom/android/server/pm/pkg/ArchiveState;

    invoke-direct {v1, p0, v0, v2, v3}, Lcom/android/server/pm/pkg/ArchiveState;-><init>(Ljava/util/List;Ljava/lang/String;J)V

    return-object v1
.end method

.method public static parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I
    .locals 3

    .line 4480
    const-string/jumbo v0, "sharedUserId"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, v2, v0, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-eqz p1, :cond_2

    if-nez v0, :cond_1

    .line 5907
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 5908
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5909
    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const/4 v1, 0x1

    .line 5911
    invoke-static {p1}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v2

    shl-int/2addr v1, v2

    not-int v2, v1

    and-int/2addr p1, v2

    .line 5913
    invoke-static {v1}, Landroid/content/pm/PackageManager;->permissionFlagToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const/16 v1, 0x7c

    .line 5915
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    if-eqz v0, :cond_3

    const/16 p0, 0x5d

    .line 5920
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 5921
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 5923
    :cond_3
    const-string p0, ""

    return-object p0
.end method

.method public static printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V
    .locals 2

    .line 4982
    const-string v0, "[ "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4983
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 4984
    aget-object v1, p2, v0

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    and-int/2addr v1, p1

    if-eqz v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 4986
    aget-object v1, p2, v1

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4987
    const-string v1, " "

    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 4990
    :cond_1
    const-string p1, "]"

    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public static readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 6

    .line 1771
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v0

    const/4 v1, 0x0

    move-object v2, v1

    .line 1773
    :cond_0
    :goto_0
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    .line 1774
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v0, :cond_5

    :cond_1
    if-eq v3, v4, :cond_0

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    goto :goto_0

    .line 1778
    :cond_2
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 1779
    const-string v4, "default-browser"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1780
    const-string/jumbo v2, "packageName"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 1781
    :cond_3
    const-string v4, "default-dialer"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    .line 1784
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under default-apps: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1785
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 1786
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1787
    invoke-static {p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-object v2
.end method

.method public static readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;
    .locals 2

    .line 2076
    const-string/jumbo v0, "suspending-package"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 2078
    const-string p0, "PackageSettings"

    const-string p1, "No suspendingPackage found inside tag suspend-params"

    invoke-static {p0, p1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    .line 2096
    :cond_0
    invoke-static {p0, v0}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object p0

    .line 2097
    invoke-static {p1}, Lcom/android/server/pm/pkg/SuspendParams;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/SuspendParams;

    move-result-object p1

    .line 2095
    invoke-static {p0, p1}, Ljava/util/Map;->entry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object p0

    return-object p0
.end method

.method private registerObservers()V
    .locals 2

    .line 597
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 598
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 599
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 600
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 601
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 602
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 603
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 604
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 605
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 606
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 607
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/AppIdSettingMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 608
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArrayMap;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 609
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mNextAppLinkGeneration:Lcom/android/server/utils/WatchedSparseIntArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 610
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedSparseArray;->registerObserver(Lcom/android/server/utils/Watcher;)V

    .line 611
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mObserver:Lcom/android/server/utils/Watcher;

    invoke-virtual {v0, p0}, Lcom/android/server/utils/WatchedArrayList;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public static removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V
    .locals 6

    .line 3719
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v1, "  "

    const/4 v2, 0x4

    const-string v3, "PackageSettings"

    if-eqz v0, :cond_0

    .line 3720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " preferred matches for:"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3721
    new-instance v0, Landroid/util/LogPrinter;

    invoke-direct {v0, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3723
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_2

    .line 3724
    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredActivity;

    .line 3725
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_1

    .line 3726
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing preferred activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v5, v5, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3727
    new-instance v4, Landroid/util/LogPrinter;

    invoke-direct {v4, v2, v3}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    invoke-virtual {v0, v4, v1}, Lcom/android/server/pm/WatchedIntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3729
    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static updatePackageSetting(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;Lcom/android/server/pm/SharedUserSetting;Ljava/io/File;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/pm/UserManagerService;[Ljava/lang/String;[J[Z[Ljava/lang/String;[JLjava/util/Set;Ljava/util/UUID;I[BZ)V
    .locals 14

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move/from16 v3, p9

    move-object/from16 v4, p11

    move-object/from16 v5, p12

    move-object/from16 v6, p13

    move-object/from16 v7, p14

    move-object/from16 v8, p15

    .line 1234
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 1235
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v10

    .line 1236
    const-string v11, " to "

    if-eqz v1, :cond_2

    .line 1237
    invoke-static/range {p2 .. p3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 1238
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " shared user changed from "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_0

    .line 1241
    iget-object v0, v0, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "<nothing>"

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x5

    .line 1238
    invoke-static {v0, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1243
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Updating application package "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, -0x18

    invoke-direct {p0, v1, v0}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    .line 1246
    :cond_1
    iget v0, v1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1249
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1252
    :goto_1
    invoke-virtual {v10, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_6

    .line 1253
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    .line 1254
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Update"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_3

    .line 1255
    const-string v13, " system"

    goto :goto_2

    :cond_3
    const-string v13, ""

    :goto_2
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " package "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " code path from "

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1257
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1258
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "; Retain data and using new"

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 1254
    const-string v11, "PackageManager"

    invoke-static {v11, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_5

    and-int/lit8 v0, p8, 0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    .line 1265
    invoke-static/range {p10 .. p10}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1267
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserInfo;

    .line 1268
    iget v11, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, v11}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    const/4 v11, 0x0

    .line 1269
    iget v9, v9, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v11, v9}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    goto :goto_3

    :cond_4
    move-object/from16 v0, p5

    .line 1277
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 1279
    :cond_5
    invoke-virtual {p0, v2}, Lcom/android/server/pm/PackageSetting;->setPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    if-eqz p20, :cond_6

    .line 1283
    invoke-virtual {p0, v10}, Lcom/android/server/pm/PackageSetting;->addOldPath(Ljava/io/File;)Lcom/android/server/pm/PackageSetting;

    :cond_6
    move-object/from16 v0, p6

    .line 1287
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p7

    .line 1288
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p16

    .line 1289
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->updateMimeGroups(Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p17

    .line 1290
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setDomainSetId(Ljava/util/UUID;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move/from16 v2, p18

    .line 1291
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    move-object/from16 v2, p19

    .line 1292
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    const/4 v0, 0x0

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    if-eqz v6, :cond_7

    .line 1294
    array-length v2, v4

    array-length v9, v5

    if-ne v2, v9, :cond_7

    array-length v2, v4

    array-length v9, v6

    if-ne v2, v9, :cond_7

    .line 1298
    invoke-virtual {p0, v4}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1299
    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1300
    invoke-virtual {v2, v6}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_4

    .line 1302
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1303
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1304
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    :goto_4
    if-eqz v7, :cond_8

    if-eqz v8, :cond_8

    .line 1309
    array-length v2, v7

    array-length v4, v8

    if-ne v2, v4, :cond_8

    .line 1311
    invoke-virtual {p0, v7}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 1312
    invoke-virtual {v0, v8}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_5

    .line 1314
    :cond_8
    invoke-virtual {p0, v0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 1315
    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 1321
    :goto_5
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, -0x2

    and-int/lit8 v1, p8, 0x1

    or-int/2addr v0, v1

    .line 1325
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setFlags(I)Lcom/android/server/pm/SettingBase;

    .line 1327
    invoke-virtual {p0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_9

    or-int/lit16 v0, v3, 0x200

    goto :goto_6

    :cond_9
    and-int/lit16 v0, v3, -0x201

    .line 1334
    :goto_6
    invoke-virtual {p0, v0}, Lcom/android/server/pm/SettingBase;->setPrivateFlags(I)Lcom/android/server/pm/SettingBase;

    return-void
.end method

.method public static writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    .line 2292
    const-string v1, "default-apps"

    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2293
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2294
    const-string v2, "default-browser"

    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2295
    const-string/jumbo v3, "packageName"

    invoke-interface {p0, v0, v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2296
    invoke-interface {p0, v0, v2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2298
    :cond_0
    invoke-interface {p0, v0, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V
    .locals 2

    .line 4484
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 4485
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4487
    :cond_0
    iget-object v0, p1, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4488
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 4490
    :cond_1
    iget-object p1, p1, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 4491
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method public addOemSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 3

    .line 985
    const-string v0, "android.uid"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    if-nez v0, :cond_0

    .line 986
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to add oem defined shared user because of invalid name: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    :cond_0
    const/16 v0, 0xb54

    if-lt p2, v0, :cond_2

    const/16 v0, 0xbb7

    if-le p2, v0, :cond_1

    goto :goto_0

    .line 996
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0

    .line 992
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Failed to add oem defined shared user because of invalid uid: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1
.end method

.method public addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;
    .locals 9

    .line 964
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 966
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p0

    if-ne p0, p4, :cond_0

    return-object v0

    .line 969
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate package, keeping first: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    .line 973
    :cond_1
    new-instance v2, Lcom/android/server/pm/PackageSetting;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v2 .. v8}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 974
    invoke-virtual {v2, p4}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    move-result-object p2

    .line 975
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    .line 976
    invoke-virtual {p3, p4, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_3

    if-eqz p9, :cond_2

    goto :goto_0

    :cond_2
    return-object v1

    .line 978
    :cond_3
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V
    .locals 5

    .line 1415
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_2

    .line 1417
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    .line 1418
    const-string v1, "; I am not changing its files so it will probably fail!"

    const-string v2, "Package "

    const/4 v3, 0x6

    if-eqz v0, :cond_0

    if-eq v0, p2, :cond_0

    .line 1419
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1420
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was user "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " but is now "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1419
    invoke-static {v3, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1423
    invoke-virtual {v0, p1}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    goto :goto_0

    .line 1424
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    iget v4, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-eq v0, v4, :cond_1

    .line 1425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1426
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " was app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " but is now user "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " with app id "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1425
    invoke-static {v3, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1432
    :cond_1
    :goto_0
    invoke-virtual {p2, p1}, Lcom/android/server/pm/SharedUserSetting;->addPackage(Lcom/android/server/pm/PackageSetting;)V

    .line 1433
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1434
    iget v0, p2, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1439
    :cond_2
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    if-nez p2, :cond_3

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    .line 1442
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p0, p2, p1}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    return-void

    :cond_3
    if-eqz v0, :cond_4

    if-eq v0, p2, :cond_4

    .line 1446
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    :cond_4
    return-void
.end method

.method public addRenamedPackageLPw(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1002
    iget p0, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ne p0, p2, :cond_0

    return-object v0

    .line 1005
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Adding duplicate shared user, keeping first: "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x6

    invoke-static {p1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-object v1

    .line 1009
    :cond_1
    new-instance v0, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 1010
    iput p2, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 1011
    iget-object p3, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p3, p2, v0, p1}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1012
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    :cond_2
    return-object v1
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V
    .locals 18

    move/from16 v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    .line 3855
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    int-to-long v3, v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v6, p9

    .line 3854
    invoke-virtual/range {v0 .. v6}, Landroid/content/pm/PackageManagerInternal;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JII)Ljava/util/List;

    move-result-object v0

    .line 3856
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    const-string v3, "PackageSettings"

    if-eqz v2, :cond_0

    .line 3857
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Queried "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " results: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    .line 3861
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v5, :cond_2

    .line 3863
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No potential matches found for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " while setting preferred "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3864
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3863
    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3869
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    new-array v11, v6, [Landroid/content/ComponentName;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_1
    if-ge v12, v4, :cond_8

    .line 3871
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move/from16 v16, v5

    .line 3872
    new-instance v5, Landroid/content/ComponentName;

    iget-object v15, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move/from16 v17, v4

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v5, v15, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v5, v11, v12

    .line 3873
    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    const-string v5, "/"

    const-string v15, "Result "

    if-nez v4, :cond_4

    .line 3874
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget v4, v4, Landroid/content/pm/ResolveInfo;->match:I

    if-ltz v4, :cond_7

    .line 3878
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_3

    .line 3879
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": non-system!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3881
    :cond_3
    aget-object v0, v11, v12

    goto/16 :goto_3

    .line 3884
    :cond_4
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3885
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 3886
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_5

    .line 3887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": default!"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3890
    :cond_5
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget v13, v2, Landroid/content/pm/ResolveInfo;->match:I

    move/from16 v14, v16

    goto :goto_2

    .line 3892
    :cond_6
    sget-boolean v4, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v4, :cond_7

    .line 3893
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": skipped"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_2
    add-int/lit8 v12, v12, 0x1

    move/from16 v7, p3

    move/from16 v5, v16

    move/from16 v4, v17

    goto/16 :goto_1

    :cond_8
    const/4 v0, 0x0

    :goto_3
    if-eqz v0, :cond_9

    if-lez v13, :cond_9

    const/4 v0, 0x0

    :cond_9
    if-eqz v14, :cond_13

    if-nez v0, :cond_13

    .line 3905
    new-instance v0, Lcom/android/server/pm/WatchedIntentFilter;

    invoke-direct {v0}, Lcom/android/server/pm/WatchedIntentFilter;-><init>()V

    .line 3906
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_a

    .line 3907
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addAction(Ljava/lang/String;)V

    .line 3909
    :cond_a
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_b

    .line 3910
    invoke-virtual {v1}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3911
    invoke-virtual {v0, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    const/high16 v2, 0x10000

    and-int v2, p3, v2

    if-eqz v2, :cond_c

    .line 3915
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addCategory(Ljava/lang/String;)V

    :cond_c
    if-eqz v8, :cond_d

    .line 3918
    invoke-virtual {v0, v8}, Lcom/android/server/pm/WatchedIntentFilter;->addDataScheme(Ljava/lang/String;)V

    :cond_d
    if-eqz p6, :cond_e

    .line 3921
    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {p6 .. p6}, Landroid/os/PatternMatcher;->getType()I

    move-result v4

    invoke-virtual {v0, v2, v4}, Lcom/android/server/pm/WatchedIntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_e
    if-eqz v9, :cond_f

    .line 3924
    invoke-virtual {v0, v9}, Lcom/android/server/pm/WatchedIntentFilter;->addDataAuthority(Landroid/content/IntentFilter$AuthorityEntry;)V

    :cond_f
    if-eqz v10, :cond_10

    .line 3927
    invoke-virtual {v0, v10}, Lcom/android/server/pm/WatchedIntentFilter;->addDataPath(Landroid/os/PatternMatcher;)V

    .line 3929
    :cond_10
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 3931
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/pm/WatchedIntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    move-object/from16 v2, p0

    move-object/from16 v1, p4

    :goto_5
    move/from16 v6, p9

    goto :goto_7

    .line 3933
    :catch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Malformed mimetype "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " for "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, p4

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    move-object/from16 v2, p0

    goto :goto_5

    :cond_11
    move-object/from16 v1, p4

    goto :goto_6

    .line 3936
    :goto_7
    invoke-virtual {v2, v6}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 3937
    invoke-virtual {v2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->findFilters(Lcom/android/server/pm/WatchedIntentFilter;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_12

    .line 3939
    invoke-static {v2, v0, v3}, Lcom/android/server/pm/Settings;->removeFilters(Lcom/android/server/pm/PreferredIntentResolver;Lcom/android/server/pm/WatchedIntentFilter;Ljava/util/List;)V

    .line 3941
    :cond_12
    new-instance v7, Lcom/android/server/pm/PreferredActivity;

    const/4 v12, 0x1

    move-object v8, v0

    move-object v10, v11

    move v9, v13

    move-object v11, v1

    invoke-direct/range {v7 .. v12}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/server/pm/WatchedIntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;Z)V

    const/4 v0, 0x0

    .line 3942
    invoke-virtual {v2, v0, v7}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    return-void

    :cond_13
    move-object v10, v11

    if-nez v0, :cond_16

    .line 3944
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3945
    const-string v2, "No component "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3946
    invoke-virtual/range {p4 .. p4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3947
    const-string v2, " found setting preferred "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3948
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 3949
    const-string v1, "; possible matches are "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v6, :cond_15

    if-lez v2, :cond_14

    .line 3951
    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3952
    :cond_14
    aget-object v1, v10, v2

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    .line 3954
    :cond_15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 3956
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Not setting preferred "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "; found third party match "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3957
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3956
    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V
    .locals 21

    move-object/from16 v0, p2

    .line 3739
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v1, :cond_0

    .line 3740
    const-string v1, "Processing preferred:"

    const-string v2, "PackageSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3741
    new-instance v1, Landroid/util/LogPrinter;

    const/4 v3, 0x3

    invoke-direct {v1, v3, v2}, Landroid/util/LogPrinter;-><init>(ILjava/lang/String;)V

    const-string v2, "  "

    invoke-virtual {v0, v1, v2}, Landroid/content/IntentFilter;->dump(Landroid/util/Printer;Ljava/lang/String;)V

    .line 3743
    :cond_0
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    .line 3746
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->getAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0xc0000

    move v9, v2

    move v2, v1

    .line 3747
    :goto_0
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countCategories()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3748
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getCategory(I)Ljava/lang/String;

    move-result-object v3

    .line 3749
    const-string v4, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const/high16 v3, 0xd0000

    move v9, v3

    goto :goto_1

    .line 3752
    :cond_1
    invoke-virtual {v5, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 3759
    :cond_2
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v2

    const/4 v3, 0x1

    move v4, v1

    move/from16 v16, v4

    move v6, v3

    :goto_2
    if-ge v4, v2, :cond_b

    .line 3762
    invoke-virtual {v0, v4}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_3

    .line 3763
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    move/from16 v16, v3

    .line 3766
    :cond_3
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemeSpecificParts()I

    move-result v6

    move v7, v1

    move v8, v3

    :goto_3
    if-ge v7, v6, :cond_4

    .line 3768
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 3769
    invoke-virtual {v8, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3770
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->getDataSchemeSpecificPart(I)Landroid/os/PatternMatcher;

    move-result-object v12

    .line 3771
    invoke-virtual {v12}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/net/Uri$Builder;->opaquePart(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v10, v8

    .line 3772
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3773
    invoke-virtual {v10}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v10, p3

    move/from16 v15, p4

    move/from16 v17, v6

    move/from16 v18, v7

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    .line 3774
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v7, v18, 0x1

    move v8, v1

    move/from16 v6, v17

    goto :goto_3

    .line 3778
    :cond_4
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataAuthorities()I

    move-result v6

    move v7, v1

    :goto_4
    if-ge v7, v6, :cond_9

    .line 3781
    invoke-virtual {v0, v7}, Landroid/content/IntentFilter;->getDataAuthority(I)Landroid/content/IntentFilter$AuthorityEntry;

    move-result-object v13

    .line 3782
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataPaths()I

    move-result v10

    move v12, v1

    move v14, v3

    :goto_5
    if-ge v12, v10, :cond_6

    .line 3784
    new-instance v8, Landroid/net/Uri$Builder;

    invoke-direct {v8}, Landroid/net/Uri$Builder;-><init>()V

    .line 3785
    invoke-virtual {v8, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3786
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_5

    .line 3787
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v8, v14}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3789
    :cond_5
    invoke-virtual {v0, v12}, Landroid/content/IntentFilter;->getDataPath(I)Landroid/os/PatternMatcher;

    move-result-object v14

    .line 3790
    invoke-virtual {v14}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-object v15, v8

    .line 3791
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3792
    invoke-virtual {v15}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v15

    invoke-virtual {v8, v15}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move v15, v12

    const/4 v12, 0x0

    move/from16 v17, v6

    move/from16 v18, v7

    move/from16 v19, v10

    move/from16 v20, v15

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v15, p4

    .line 3793
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    add-int/lit8 v12, v20, 0x1

    move v8, v1

    move v14, v8

    move/from16 v6, v17

    move/from16 v7, v18

    move/from16 v10, v19

    goto :goto_5

    :cond_6
    move/from16 v17, v6

    move/from16 v18, v7

    if-eqz v14, :cond_8

    .line 3798
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 3799
    invoke-virtual {v6, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3800
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_7

    .line 3801
    invoke-virtual {v13}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3803
    :cond_7
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3804
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v12, 0x0

    const/4 v14, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v15, p4

    .line 3805
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    move v8, v1

    :cond_8
    add-int/lit8 v7, v18, 0x1

    move/from16 v6, v17

    goto/16 :goto_4

    :cond_9
    if-eqz v8, :cond_a

    .line 3811
    new-instance v6, Landroid/net/Uri$Builder;

    invoke-direct {v6}, Landroid/net/Uri$Builder;-><init>()V

    .line 3812
    invoke-virtual {v6, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3813
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3814
    invoke-virtual {v6}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v8, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v15, p4

    .line 3815
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_a
    add-int/lit8 v4, v4, 0x1

    move v6, v1

    goto/16 :goto_2

    :cond_b
    move v2, v1

    .line 3821
    :goto_6
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataTypes()I

    move-result v3

    if-ge v2, v3, :cond_f

    .line 3822
    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->getDataType(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v16, :cond_d

    .line 3824
    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    move v6, v1

    .line 3825
    :goto_7
    invoke-virtual {v0}, Landroid/content/IntentFilter;->countDataSchemes()I

    move-result v7

    if-ge v6, v7, :cond_e

    .line 3826
    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->getDataScheme(I)Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_c

    .line 3827
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_c

    .line 3828
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3829
    invoke-virtual {v4, v11}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 3830
    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v8, v7, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v12, 0x0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v15, p4

    move/from16 v17, v6

    move-object/from16 v6, p0

    .line 3831
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    goto :goto_8

    :cond_c
    move/from16 v17, v6

    :goto_8
    add-int/lit8 v6, v17, 0x1

    goto :goto_7

    .line 3836
    :cond_d
    new-instance v8, Landroid/content/Intent;

    invoke-direct {v8, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3837
    invoke-virtual {v8, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v10, p3

    move/from16 v15, p4

    .line 3838
    invoke-virtual/range {v6 .. v15}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_e
    add-int/lit8 v2, v2, 0x1

    move v6, v1

    goto :goto_6

    :cond_f
    if-eqz v6, :cond_10

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v8, 0x0

    move v6, v9

    const/4 v9, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v7, p3

    move/from16 v12, p4

    .line 3845
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/Intent;ILandroid/content/ComponentName;Ljava/lang/String;Landroid/os/PatternMatcher;Landroid/content/IntentFilter$AuthorityEntry;Landroid/os/PatternMatcher;I)V

    :cond_10
    return-void
.end method

.method public applyDefaultPreferredAppsLPw(I)V
    .locals 17

    move-object/from16 v1, p0

    move/from16 v2, p1

    .line 3638
    const-string v3, "Error reading apps file "

    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3639
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3640
    iget-object v4, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v7, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PackageSetting;

    .line 3641
    invoke-virtual {v5}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    and-int/2addr v7, v8

    if-eqz v7, :cond_0

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 3642
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_0

    .line 3644
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v7

    invoke-interface {v7}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPreferredActivityFilters()Ljava/util/List;

    move-result-object v7

    const/4 v6, 0x0

    .line 3645
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v6, v8, :cond_0

    .line 3646
    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    .line 3647
    iget-object v9, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;

    .line 3648
    invoke-interface {v9}, Lcom/android/internal/pm/pkg/component/ParsedIntentInfo;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v9

    new-instance v10, Landroid/content/ComponentName;

    .line 3649
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v11

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    invoke-direct {v10, v11, v8}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 3647
    invoke-virtual {v1, v0, v9, v10, v2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 3655
    :cond_1
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_d

    .line 3657
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->SYSTEM_PARTITIONS:Ljava/util/List;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/ScanPartition;

    .line 3659
    new-instance v8, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/pm/PackagePartitions$SystemPartition;->getFolder()Ljava/io/File;

    move-result-object v0

    const-string v9, "etc/preferred-apps"

    invoke-direct {v8, v0, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3660
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v8}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_2
    move/from16 v16, v4

    goto/16 :goto_d

    .line 3664
    :cond_3
    invoke-virtual {v8}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v9, " cannot be read"

    const-string v10, "PackageSettings"

    if-nez v0, :cond_4

    .line 3665
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Directory "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 3670
    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v11

    .line 3671
    invoke-static {v11}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    goto :goto_2

    .line 3675
    :cond_5
    array-length v12, v11

    const/4 v13, 0x0

    :goto_3
    if-ge v13, v12, :cond_2

    aget-object v14, v11, v13

    .line 3676
    invoke-virtual {v14}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    const-string v15, ".xml"

    invoke-virtual {v0, v15}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 3677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Non-xml file "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " in "

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v14, " directory, ignoring"

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    move/from16 v16, v4

    goto/16 :goto_c

    .line 3681
    :cond_6
    invoke-virtual {v14}, Ljava/io/File;->canRead()Z

    move-result v0

    const-string v15, "Preferred apps file "

    if-nez v0, :cond_7

    .line 3682
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 3685
    :cond_7
    sget-boolean v0, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    if-eqz v0, :cond_8

    .line 3686
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Reading default preferred "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3689
    :cond_8
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v14}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 3690
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 3693
    :goto_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move/from16 v16, v4

    const/4 v4, 0x2

    if-eq v7, v4, :cond_a

    const/4 v4, 0x1

    if-eq v7, v4, :cond_9

    move/from16 v4, v16

    goto :goto_5

    :cond_9
    const/4 v4, 0x2

    :cond_a
    if-eq v7, v4, :cond_b

    .line 3699
    :try_start_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not have start tag"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3708
    :goto_6
    :try_start_3
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_c

    :catch_0
    move-exception v0

    goto :goto_a

    :catch_1
    move-exception v0

    goto :goto_b

    :catchall_0
    move-exception v0

    :goto_7
    move-object v4, v0

    goto :goto_8

    .line 3702
    :cond_b
    :try_start_4
    const-string/jumbo v4, "preferred-activities"

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_c

    .line 3703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not start with \'preferred-activities\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 3707
    :cond_c
    invoke-virtual {v1, v0, v2}, Lcom/android/server/pm/Settings;->readDefaultPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_6

    :catchall_1
    move-exception v0

    move/from16 v16, v4

    goto :goto_7

    .line 3689
    :goto_8
    :try_start_5
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v0

    :try_start_6
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    throw v4
    :try_end_6
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    :catch_2
    move-exception v0

    move/from16 v16, v4

    goto :goto_a

    :catch_3
    move-exception v0

    move/from16 v16, v4

    goto :goto_b

    .line 3711
    :goto_a
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    .line 3709
    :goto_b
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v10, v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_c
    add-int/lit8 v13, v13, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_3

    :goto_d
    add-int/lit8 v5, v5, 0x1

    move/from16 v4, v16

    const/4 v7, 0x1

    goto/16 :goto_1

    :cond_d
    return-void
.end method

.method public checkAndConvertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 2

    .line 1531
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->isSingleUser()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1532
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1533
    invoke-interface {v0}, Lcom/android/server/pm/pkg/AndroidPackage;->isLeavingSharedUser()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    .line 1534
    invoke-static {v0}, Lcom/android/server/pm/SharedUidMigration;->applyStrategy(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1535
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z
    .locals 1

    if-nez p2, :cond_0

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1453
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageStates()Landroid/util/ArraySet;

    move-result-object p2

    invoke-virtual {p2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1454
    :cond_0
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v0, p1, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 1455
    iget p1, p1, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public clearPackagePersistentPreferredActivities(Ljava/lang/String;I)Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    .line 6687
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 6688
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 6689
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eq p2, v4, :cond_0

    goto :goto_3

    .line 6693
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v4

    .line 6694
    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 6695
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6697
    iget-object v7, v6, Lcom/android/server/pm/PersistentPreferredActivity;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    if-nez v0, :cond_2

    .line 6699
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6701
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    if-eqz v0, :cond_5

    move v3, v1

    .line 6705
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6706
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6707
    invoke-virtual {v5, v4}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    if-eqz v3, :cond_7

    .line 6713
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_7
    return v3
.end method

.method public clearPackagePreferredActivities(Ljava/lang/String;Landroid/util/SparseBooleanArray;I)V
    .locals 9

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move v3, v2

    .line 6650
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v2, v4, :cond_7

    .line 6651
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v2}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 6652
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v2}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/PreferredIntentResolver;

    const/4 v6, -0x1

    if-eq p3, v6, :cond_0

    if-eq p3, v4, :cond_0

    goto :goto_3

    .line 6656
    :cond_0
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v6

    .line 6657
    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 6658
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/pm/PreferredActivity;

    if-eqz p1, :cond_2

    .line 6661
    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 6662
    invoke-virtual {v8}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, v7, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-boolean v8, v8, Lcom/android/server/pm/PreferredComponent;->mAlways:Z

    if-eqz v8, :cond_1

    :cond_2
    if-nez v1, :cond_3

    .line 6665
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6667
    :cond_3
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    move v3, v0

    .line 6671
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_5

    .line 6672
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6673
    invoke-virtual {v5, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    const/4 v3, 0x1

    .line 6675
    invoke-virtual {p2, v4, v3}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    if-eqz v3, :cond_8

    .line 6680
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_8
    return-void
.end method

.method public clearPersistentPreferredActivity(Landroid/content/IntentFilter;I)Z
    .locals 4

    .line 6720
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    .line 6721
    invoke-virtual {p2}, Lcom/android/server/IntentResolver;->filterIterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    .line 6723
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 6724
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6725
    invoke-virtual {v2}, Lcom/android/server/pm/PersistentPreferredActivity;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/content/IntentFilter;->filterEquals(Landroid/content/IntentFilter;Landroid/content/IntentFilter;)Z

    move-result v3

    if-eqz v3, :cond_0

    if-nez v1, :cond_1

    .line 6727
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6729
    :cond_1
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    if-eqz v1, :cond_4

    .line 6733
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 6734
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 6735
    invoke-virtual {p2, v0}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x1

    :cond_4
    if-eqz p1, :cond_5

    .line 6740
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    :cond_5
    return p1
.end method

.method public convertSharedUserSettingsLPw(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 4

    .line 1515
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1516
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getAppId()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Lcom/android/server/pm/AppIdSettingMap;->replaceSetting(ILcom/android/server/pm/SettingBase;)V

    const/4 v2, -0x1

    .line 1519
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1520
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1521
    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    .line 1522
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 1524
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/pm/SharedUserSetting;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public createNewUserLI(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/Installer;ILjava/util/Set;[Ljava/lang/String;)V
    .locals 25

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    move/from16 v4, p3

    move-object/from16 v10, p4

    .line 4710
    new-instance v11, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v2, "PackageSettingsTiming"

    const-wide/32 v5, 0x40000

    invoke-direct {v11, v2, v5, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    .line 4712
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createNewUser-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4713
    new-instance v12, Lcom/android/server/pm/Installer$Batch;

    invoke-direct {v12}, Lcom/android/server/pm/Installer$Batch;-><init>()V

    const/4 v14, 0x0

    if-nez v10, :cond_0

    const/4 v15, 0x1

    goto :goto_0

    :cond_0
    move v15, v14

    .line 4716
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 4717
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v5

    .line 4718
    :try_start_0
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v6}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v6

    move v7, v14

    :goto_1
    if-ge v7, v6, :cond_c

    .line 4720
    iget-object v8, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v7}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 4721
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v9

    if-nez v9, :cond_1

    .line 4723
    invoke-virtual {v8, v14, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    .line 4725
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    move-object/from16 v13, p5

    move-wide/from16 v17, v2

    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    const/16 v16, 0x1

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    move-object/from16 v19, v5

    goto/16 :goto_8

    .line 4728
    :cond_1
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v9

    if-eqz v9, :cond_2

    .line 4729
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v13, p5

    const/16 v16, 0x1

    invoke-static {v13, v9}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 4730
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->isHiddenUntilInstalled()Z

    move-result v9

    if-nez v9, :cond_3

    move/from16 v9, v16

    goto :goto_2

    :cond_2
    move-object/from16 v13, p5

    const/16 v16, 0x1

    :cond_3
    move v9, v14

    :goto_2
    if-eqz v9, :cond_5

    if-nez v15, :cond_4

    .line 4733
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v14

    .line 4732
    invoke-interface {v10, v14}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    move/from16 v14, v16

    goto :goto_3

    :cond_5
    const/4 v14, 0x0

    .line 4735
    :goto_3
    invoke-virtual {v8, v14, v4}, Lcom/android/server/pm/PackageSetting;->setInstalled(ZI)V

    if-eqz v14, :cond_6

    .line 4737
    invoke-virtual {v8, v2, v3, v4}, Lcom/android/server/pm/PackageSetting;->setFirstInstallTime(JI)Lcom/android/server/pm/PackageSetting;

    :cond_6
    move-wide/from16 v17, v2

    .line 4742
    iget-boolean v2, v0, Lcom/android/server/pm/PackageManagerService;->mShouldStopSystemPackagesByDefault:Z

    if-eqz v2, :cond_7

    .line 4743
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4744
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->isApex()Z

    move-result v2

    if-nez v2, :cond_7

    iget-object v2, v0, Lcom/android/server/pm/PackageManagerService;->mInitialNonStoppedSystemPackages:Ljava/util/Set;

    .line 4745
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    move/from16 v2, v16

    goto :goto_4

    :cond_7
    const/4 v2, 0x0

    :goto_4
    if-eqz v2, :cond_8

    .line 4747
    new-instance v3, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4748
    const-string v0, "android.intent.category.LAUNCHER"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4749
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 4751
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/pm/PackageManagerService;->snapshotComputer()Lcom/android/server/pm/Computer;

    move-result-object v19

    const-wide/32 v22, 0xc0000

    const/16 v24, 0x0

    const/16 v21, 0x0

    move-object/from16 v20, v3

    invoke-interface/range {v19 .. v24}, Lcom/android/server/pm/Computer;->queryIntentActivitiesInternal(Landroid/content/Intent;Ljava/lang/String;JI)Ljava/util/List;

    move-result-object v0

    .line 4755
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v2, 0x0

    .line 4759
    :cond_8
    invoke-virtual {v8, v2, v4}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    if-eqz v9, :cond_9

    if-nez v14, :cond_9

    move/from16 v0, v16

    goto :goto_5

    :cond_9
    const/4 v0, 0x0

    .line 4766
    :goto_5
    invoke-virtual {v8, v0, v4}, Lcom/android/server/pm/PackageSetting;->setUninstallReason(II)V

    if-eqz v14, :cond_b

    .line 4768
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-gez v0, :cond_a

    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    goto :goto_6

    :cond_a
    move v14, v7

    .line 4777
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    .line 4778
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    xor-int/lit8 v9, v0, 0x1

    .line 4780
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    move v0, v6

    .line 4781
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    .line 4782
    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getTargetSdkVersion()I

    move-result v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v19, v5

    const/4 v5, 0x1

    .line 4779
    :try_start_1
    invoke-static/range {v2 .. v9}, Lcom/android/server/pm/Installer;->buildCreateAppDataArgs(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/String;IZ)Landroid/os/CreateAppDataArgs;

    move-result-object v2

    .line 4783
    invoke-virtual {v12, v2}, Lcom/android/server/pm/Installer$Batch;->createAppData(Landroid/os/CreateAppDataArgs;)Ljava/util/concurrent/CompletableFuture;

    goto :goto_6

    :catchall_1
    move-exception v0

    goto :goto_8

    :cond_b
    move-object/from16 v19, v5

    move v0, v6

    move v14, v7

    .line 4786
    invoke-virtual {v1, v8}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    :goto_6
    add-int/lit8 v7, v14, 0x1

    move v6, v0

    move-wide/from16 v2, v17

    move-object/from16 v5, v19

    const/4 v14, 0x0

    move-object/from16 v0, p1

    goto/16 :goto_1

    :cond_c
    move-object/from16 v19, v5

    .line 4789
    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4790
    const-string v0, "createAppData"

    invoke-virtual {v11, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    move-object/from16 v0, p2

    .line 4792
    :try_start_2
    invoke-virtual {v12, v0}, Lcom/android/server/pm/Installer$Batch;->execute(Lcom/android/server/pm/Installer;)V
    :try_end_2
    .catch Lcom/android/server/pm/Installer$InstallerException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    .line 4794
    const-string v2, "PackageSettings"

    const-string v3, "Failed to prepare app data"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4796
    :goto_7
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    .line 4797
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v2

    .line 4798
    :try_start_3
    invoke-virtual {v1, v4}, Lcom/android/server/pm/Settings;->applyDefaultPreferredAppsLPw(I)V

    .line 4799
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 4800
    invoke-virtual {v11}, Landroid/util/TimingsTraceLog;->traceEnd()V

    return-void

    :catchall_2
    move-exception v0

    .line 4799
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0

    .line 4789
    :goto_8
    :try_start_5
    monitor-exit v19
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
.end method

.method public disableSystemPackageLPw(Ljava/lang/String;Z)Z
    .locals 3

    .line 876
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 878
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not an installed package"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 881
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    if-nez v2, :cond_2

    .line 883
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 884
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isUpdatedSystemApp()Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz p2, :cond_1

    .line 891
    new-instance p2, Lcom/android/server/pm/PackageSetting;

    invoke-direct {p2, v0}, Lcom/android/server/pm/PackageSetting;-><init>(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_0

    :cond_1
    move-object p2, v0

    .line 895
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 896
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 897
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    if-eqz p0, :cond_2

    .line 899
    iget-object p0, p0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    :cond_2
    return v1
.end method

.method public dispatchChange(Lcom/android/server/utils/Watchable;)V
    .locals 0

    .line 229
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    .line 5981
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getActivities()Ljava/util/List;

    move-result-object v0

    const-string v1, "activities:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5982
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getServices()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "services:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5983
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getReceivers()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "receivers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5984
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getProviders()Ljava/util/List;

    move-result-object v0

    const-string/jumbo v1, "providers:"

    invoke-virtual {p0, p1, p2, v1, v0}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    .line 5985
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p3

    invoke-interface {p3}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getInstrumentations()Ljava/util/List;

    move-result-object p3

    const-string v0, "instrumentations:"

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 5990
    invoke-static {p4}, Lcom/android/internal/util/CollectionUtils;->size(Ljava/util/Collection;)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 5994
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p0, :cond_1

    .line 5996
    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/pm/pkg/component/ParsedComponent;

    .line 5997
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "  "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5998
    invoke-interface {v0}, Lcom/android/internal/pm/pkg/component/ParsedComponent;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V
    .locals 0

    .line 5869
    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_0

    .line 5870
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5871
    const-string p0, "gids="

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5872
    invoke-static {p3}, Lcom/android/server/pm/PackageManagerServiceUtils;->arrayToString([I)Ljava/lang/String;

    move-result-object p0

    .line 5871
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 8

    .line 5930
    new-instance p0, Landroid/util/ArraySet;

    invoke-direct {p0}, Landroid/util/ArraySet;-><init>()V

    .line 5931
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 5932
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 5933
    invoke-virtual {p4, v1}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v1

    .line 5935
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5936
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 5939
    :cond_1
    invoke-virtual {v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object v2

    if-eqz p3, :cond_2

    .line 5941
    invoke-virtual {p3, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    goto :goto_0

    .line 5944
    :cond_2
    invoke-virtual {p0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5948
    :cond_3
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 p3, 0x0

    move v0, p3

    :cond_4
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5949
    invoke-virtual {p4, v1, p3}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v2

    .line 5951
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    .line 5952
    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    if-nez v4, :cond_5

    move-object v5, v2

    goto :goto_2

    .line 5957
    :cond_5
    invoke-virtual {p4, v1, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionState(Ljava/lang/String;I)Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    move-result-object v5

    .line 5958
    invoke-static {v5, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    goto :goto_1

    :cond_6
    :goto_2
    const/4 v6, 0x1

    if-nez v0, :cond_7

    .line 5963
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "install permissions:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v0, v6

    .line 5966
    :cond_7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5967
    const-string v7, ": granted="

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v5, :cond_8

    .line 5968
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result v7

    if-eqz v7, :cond_8

    goto :goto_3

    :cond_8
    move v6, p3

    .line 5967
    :goto_3
    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Z)V

    if-eqz v5, :cond_9

    .line 5970
    invoke-virtual {v5}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result v5

    goto :goto_4

    :cond_9
    move v5, p3

    .line 5969
    :goto_4
    const-string v6, ", flags="

    invoke-static {v6, v5}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_a

    .line 5972
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_1

    .line 5974
    :cond_a
    const-string v5, ", userId="

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    goto :goto_1

    :cond_b
    return-void
.end method

.method public dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/server/pm/PackageSetting;",
            "Lcom/android/server/pm/permission/LegacyPermissionState;",
            "Ljava/text/SimpleDateFormat;",
            "Ljava/util/Date;",
            "Ljava/util/List<",
            "Landroid/content/pm/UserInfo;",
            ">;ZZ)V"
        }
    .end annotation

    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v6, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p8

    .line 5068
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v2, :cond_f

    .line 5070
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5071
    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5072
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_0
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v3

    :goto_0
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5073
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5074
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5075
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5076
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5077
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5078
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v5

    invoke-virtual {v1, v5, v6}, Ljava/io/PrintWriter;->print(J)V

    .line 5079
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5080
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    const-string v5, "?"

    if-eqz v3, :cond_1

    .line 5081
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    goto :goto_1

    :cond_1
    move-object v3, v5

    .line 5080
    :goto_1
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5082
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5083
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v3, :cond_2

    .line 5084
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    goto :goto_2

    :cond_2
    move-object v3, v5

    .line 5083
    :goto_2
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5085
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 5086
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v6

    iget-object v6, v6, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_3
    const-string v3, ""

    .line 5085
    :goto_3
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5087
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5088
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v3

    iget v3, v3, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5089
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5090
    const-string v3, "-"

    if-eqz v4, :cond_4

    .line 5091
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "splt,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5092
    const-string v8, "base,"

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5093
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getBaseRevisionCode()I

    move-result v8

    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 5094
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitRevisionCodes()[I

    move-result-object v8

    const/4 v9, 0x0

    .line 5095
    :goto_4
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    array-length v10, v10

    if-ge v9, v10, :cond_4

    .line 5096
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5097
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSplitNames()[Ljava/lang/String;

    move-result-object v10

    aget-object v10, v10, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5098
    aget v10, v8, v9

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->println(I)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 5101
    :cond_4
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_5
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5a

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    .line 5102
    iget v8, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v8}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    .line 5103
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5104
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5105
    const-string/jumbo v9, "usr"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5106
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5107
    iget v9, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5108
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5109
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "I"

    goto :goto_6

    :cond_5
    const-string v9, "i"

    :goto_6
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5110
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v9

    if-eqz v9, :cond_6

    const-string v9, "B"

    goto :goto_7

    :cond_6
    const-string v9, "b"

    :goto_7
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5111
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v9

    if-eqz v9, :cond_7

    const-string v9, "SU"

    goto :goto_8

    :cond_7
    const-string/jumbo v9, "su"

    :goto_8
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5112
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v9

    if-eqz v9, :cond_8

    const-string v9, "S"

    goto :goto_9

    :cond_8
    const-string/jumbo v9, "s"

    :goto_9
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5113
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v9

    if-eqz v9, :cond_9

    const-string v9, "l"

    goto :goto_a

    :cond_9
    const-string v9, "L"

    :goto_a
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5114
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v9

    if-eqz v9, :cond_a

    const-string v9, "IA"

    goto :goto_b

    :cond_a
    const-string v9, "ia"

    :goto_b
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5115
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v9

    if-eqz v9, :cond_b

    const-string v9, "VPI"

    goto :goto_c

    :cond_b
    const-string/jumbo v9, "vpi"

    :goto_c
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5116
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v9

    if-eqz v9, :cond_c

    const-string v9, "Q"

    goto :goto_d

    :cond_c
    const-string/jumbo v9, "q"

    :goto_d
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5117
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_d

    .line 5118
    const-string v9, "HA"

    goto :goto_e

    :cond_d
    const-string v9, "ha"

    :goto_e
    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5119
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5120
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(I)V

    .line 5121
    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v8

    .line 5122
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v8, :cond_e

    goto :goto_f

    :cond_e
    move-object v8, v5

    .line 5123
    :goto_f
    invoke-virtual {v1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5124
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5125
    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v6}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Ljava/io/PrintWriter;->print(J)V

    .line 5126
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5127
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_5

    .line 5132
    :cond_f
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "Package ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5133
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_10
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    :goto_10
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5134
    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5135
    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5136
    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5138
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_11

    .line 5139
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  compat name="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5140
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5143
    :cond_11
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appId="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5145
    invoke-virtual {v0, v7}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v2

    if-eqz v2, :cond_12

    .line 5147
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  sharedUser="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5149
    :cond_12
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  pkg="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5150
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  codePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5151
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    if-eqz v2, :cond_13

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->size()I

    move-result v2

    if-lez v2, :cond_13

    .line 5152
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getOldPaths()Ljava/util/LinkedHashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/io/File;

    .line 5153
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "    oldCodePath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_13
    if-nez v3, :cond_15

    .line 5157
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  resourcePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5158
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  legacyNativeLibraryDir="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5159
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5160
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  extractNativeLibs="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5161
    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    const/high16 v5, 0x10000000

    and-int/2addr v2, v5

    if-eqz v2, :cond_14

    .line 5162
    const-string/jumbo v2, "true"

    goto :goto_12

    :cond_14
    const-string v2, "false"

    .line 5161
    :goto_12
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5163
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  primaryCpuAbi="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5164
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  secondaryCpuAbi="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5165
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  cpuAbiOverride="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5167
    :cond_15
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  versionCode="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v10

    invoke-virtual {v1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    if-eqz v4, :cond_16

    .line 5169
    const-string v2, " minSdk="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5170
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 5172
    :cond_16
    const-string v2, " targetSdk="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5173
    const-string v2, "]"

    const-string v5, ", "

    if-eqz v4, :cond_19

    .line 5174
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getMinExtensionVersions()Landroid/util/SparseIntArray;

    move-result-object v10

    .line 5176
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v11, "  minExtensionVersions=["

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz v10, :cond_18

    .line 5178
    new-instance v11, Ljava/util/ArrayList;

    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 5179
    invoke-virtual {v10}, Landroid/util/SparseIntArray;->size()I

    move-result v12

    const/4 v13, 0x0

    :goto_13
    if-ge v13, v12, :cond_17

    .line 5181
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v14

    .line 5182
    invoke-virtual {v10, v13}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v15

    .line 5183
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, "="

    invoke-virtual {v9, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v11, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v13, v13, 0x1

    goto :goto_13

    .line 5186
    :cond_17
    invoke-static {v5, v11}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5188
    :cond_18
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5190
    :cond_19
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5191
    const-string v9, "  pendingRestore=true"

    const-string v11, "    "

    if-eqz v4, :cond_38

    .line 5192
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  versionName="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getVersionName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5193
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  hiddenApiEnforcementPolicy="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5194
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getHiddenApiEnforcementPolicy()I

    move-result v12

    .line 5193
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 5195
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  usesNonSdkApi="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isNonSdkApiRequested()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 5196
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  splits="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {v1, v4}, Lcom/android/server/pm/Settings;->dumpSplitNames(Ljava/io/PrintWriter;Lcom/android/server/pm/pkg/AndroidPackage;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5197
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v12

    invoke-virtual {v12}, Landroid/content/pm/SigningDetails;->getSignatureSchemeVersion()I

    move-result v12

    .line 5198
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  apkSigningVersion="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(I)V

    .line 5199
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  flags="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5200
    invoke-static {v4, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v12

    sget-object v13, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v12, v13}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5201
    invoke-static {v4, v7}, Lcom/android/server/pm/parsing/PackageInfoUtils;->appInfoPrivateFlags(Lcom/android/server/pm/pkg/AndroidPackage;Lcom/android/server/pm/pkg/PackageStateInternal;)I

    move-result v12

    if-eqz v12, :cond_1a

    .line 5203
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  privateFlags="

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    sget-object v13, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v12, v13}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5204
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5206
    :cond_1a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v12

    if-eqz v12, :cond_1b

    .line 5207
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5208
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5210
    :cond_1b
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isUpdatableSystem()Z

    move-result v12

    if-nez v12, :cond_1c

    .line 5211
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  updatableSystem=false"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5212
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5214
    :cond_1c
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v12

    if-eqz v12, :cond_1d

    .line 5215
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  emergencyInstaller="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5216
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getEmergencyInstaller()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5218
    :cond_1d
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->hasPreserveLegacyExternalStorage()Z

    move-result v12

    if-eqz v12, :cond_1e

    .line 5219
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  hasPreserveLegacyExternalStorage=true"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5220
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5222
    :cond_1e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  forceQueryable="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5223
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isForceQueryable()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Z)V

    .line 5224
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v12

    if-eqz v12, :cond_1f

    .line 5225
    const-string v12, " (override=true)"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5227
    :cond_1f
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5228
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5229
    const-string v12, "  pageSizeCompat="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5230
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(I)V

    .line 5231
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5232
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_20

    .line 5233
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    const-string v13, "  queriesPackages="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    .line 5234
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesPackages()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5236
    :cond_20
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/List;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_21

    .line 5237
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    const-string v13, "  queriesIntents="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->append(Ljava/lang/CharSequence;)Ljava/io/PrintWriter;

    move-result-object v12

    .line 5238
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getQueriesIntents()Ljava/util/List;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5240
    :cond_21
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  scannedAsStoppedSystemApp="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5241
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Z)V

    .line 5242
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "  supportsScreens=["

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5244
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isSmallScreensSupported()Z

    move-result v12

    if-eqz v12, :cond_22

    .line 5248
    const-string/jumbo v12, "small"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    goto :goto_14

    :cond_22
    const/4 v12, 0x1

    .line 5250
    :goto_14
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isNormalScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_24

    if-nez v12, :cond_23

    .line 5252
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5254
    :cond_23
    const-string/jumbo v12, "medium"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5256
    :cond_24
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isLargeScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_26

    if-nez v12, :cond_25

    .line 5258
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5260
    :cond_25
    const-string v12, "large"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5262
    :cond_26
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isExtraLargeScreensSupported()Z

    move-result v13

    if-eqz v13, :cond_28

    if-nez v12, :cond_27

    .line 5264
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5266
    :cond_27
    const-string/jumbo v12, "xlarge"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5268
    :cond_28
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isResizeable()Z

    move-result v13

    if-eqz v13, :cond_2a

    if-nez v12, :cond_29

    .line 5270
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5272
    :cond_29
    const-string/jumbo v12, "resizeable"

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const/4 v12, 0x0

    .line 5274
    :cond_2a
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->isAnyDensity()Z

    move-result v13

    if-eqz v13, :cond_2c

    if-nez v12, :cond_2b

    .line 5276
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5278
    :cond_2b
    const-string v5, "anyDensity"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5280
    :cond_2c
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5281
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getLibraryNames()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2d

    .line 5282
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_2d

    .line 5283
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  dynamic libraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5284
    :goto_15
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v5, v12, :cond_2d

    .line 5285
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5286
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    .line 5289
    :cond_2d
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v5, "name:"

    const-string v12, " version:"

    if-eqz v2, :cond_2e

    .line 5290
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  static library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5291
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5292
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5293
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getStaticSharedLibraryVersion()J

    move-result-wide v13

    invoke-virtual {v1, v13, v14}, Ljava/io/PrintWriter;->println(J)V

    .line 5296
    :cond_2e
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 5297
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  SDK library:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5298
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5299
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibraryName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5300
    const-string v2, " versionMajor:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getSdkLibVersionMajor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5303
    :cond_2f
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesLibraries()Ljava/util/List;

    move-result-object v2

    .line 5304
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_30

    .line 5305
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "  usesLibraries:"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 5306
    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-ge v5, v13, :cond_30

    .line 5307
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_16

    .line 5311
    :cond_30
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibraries()Ljava/util/List;

    move-result-object v2

    .line 5312
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesStaticLibrariesVersions()[J

    move-result-object v5

    .line 5313
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_31

    .line 5314
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "  usesStaticLibraries:"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v13, 0x0

    .line 5315
    :goto_17
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-ge v13, v14, :cond_31

    .line 5316
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5317
    invoke-interface {v2, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5318
    aget-wide v14, v5, v13

    invoke-virtual {v1, v14, v15}, Ljava/io/PrintWriter;->println(J)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_17

    .line 5322
    :cond_31
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibraries()Ljava/util/List;

    move-result-object v2

    .line 5323
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v5

    .line 5324
    invoke-interface {v4}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesSdkLibrariesOptional()[Z

    move-result-object v13

    .line 5325
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_32

    .line 5326
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v14, "  usesSdkLibraries:"

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5327
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v14

    const/4 v15, 0x0

    :goto_18
    if-ge v15, v14, :cond_32

    .line 5328
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5329
    invoke-interface {v2, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    const/16 p3, 0x1

    move-object/from16 v10, v16

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v10, v4

    move-object/from16 v16, v5

    .line 5330
    aget-wide v4, v16, v15

    invoke-virtual {v1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    const-string v4, " optional:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5331
    aget-boolean v4, v13, v15

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v15, v15, 0x1

    move-object v4, v10

    move-object/from16 v5, v16

    goto :goto_18

    :cond_32
    move-object v10, v4

    const/16 p3, 0x1

    .line 5335
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalLibraries()Ljava/util/List;

    move-result-object v2

    .line 5336
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_33

    .line 5337
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5338
    :goto_19
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_33

    .line 5339
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5340
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    .line 5344
    :cond_33
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 5345
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_34

    .line 5346
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5347
    :goto_1a
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_34

    .line 5348
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1a

    .line 5352
    :cond_34
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getUsesOptionalNativeLibraries()Ljava/util/List;

    move-result-object v2

    .line 5353
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_35

    .line 5354
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesOptionalNativeLibraries:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5355
    :goto_1b
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_35

    .line 5356
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5357
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    .line 5361
    :cond_35
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->getUsesLibraryFiles()Ljava/util/List;

    move-result-object v2

    .line 5362
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_36

    .line 5363
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  usesLibraryFiles:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5364
    :goto_1c
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_36

    .line 5365
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1c

    .line 5368
    :cond_36
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getProcesses()Ljava/util/Map;

    move-result-object v2

    .line 5369
    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 5370
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  processes:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5371
    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_37
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/pm/pkg/component/ParsedProcess;

    .line 5372
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5373
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v5

    if-eqz v5, :cond_37

    .line 5374
    invoke-interface {v4}, Lcom/android/internal/pm/pkg/component/ParsedProcess;->getDeniedPermissions()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_37

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5375
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v12, "      deny: "

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5376
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1d

    :cond_38
    move-object v10, v4

    const/16 p3, 0x1

    .line 5382
    :cond_39
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  timeStamp="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5383
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5384
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5385
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  lastUpdateTime="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5386
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5387
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5388
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5389
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5390
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerPackageUid="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5391
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5392
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  initiatingPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5393
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5394
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  originatingPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5395
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5397
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v2, :cond_3a

    .line 5398
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  updateOwnerPackageName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5399
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5401
    :cond_3a
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v2, :cond_3b

    .line 5402
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installerAttributionTag="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5403
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5405
    :cond_3b
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  packageSource="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5406
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    iget v2, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5407
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isIncremental()Z

    move-result v2

    if-eqz v2, :cond_3c

    .line 5408
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  loadingProgress="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5409
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v4

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "%"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5408
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5410
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v4

    invoke-virtual {v8, v4, v5}, Ljava/util/Date;->setTime(J)V

    .line 5411
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  loadingCompletedTime="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5413
    :cond_3c
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appMetadataFilePath="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5414
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5415
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  appMetadataSource="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5416
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(I)V

    .line 5417
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3d

    .line 5418
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  volumeUuid="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5419
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5421
    :cond_3d
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  signatures="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 5422
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  installPermissionsFixed="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5423
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isInstallPermissionsFixed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 5424
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5425
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  pkgFlags="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v2

    sget-object v4, Lcom/android/server/pm/Settings;->FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5426
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5427
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  privatePkgFlags="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v2

    sget-object v4, Lcom/android/server/pm/Settings;->PRIVATE_FLAG_DUMP_SPEC:[Ljava/lang/Object;

    invoke-static {v1, v2, v4}, Lcom/android/server/pm/Settings;->printFlags(Ljava/io/PrintWriter;I[Ljava/lang/Object;)V

    .line 5429
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5430
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 5431
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5433
    :cond_3e
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  apexModuleName="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getApexModuleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz v10, :cond_3f

    .line 5435
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    .line 5436
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  overlayTarget="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayTarget()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5437
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "  overlayCategory="

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getOverlayCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3f
    if-eqz v10, :cond_44

    .line 5440
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_44

    .line 5441
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getPermissions()Ljava/util/List;

    move-result-object v2

    .line 5442
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  declared permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5443
    :goto_1e
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_44

    .line 5444
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/pm/pkg/component/ParsedPermission;

    if-eqz v3, :cond_40

    .line 5446
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v3, v9}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_40

    goto :goto_1f

    .line 5449
    :cond_40
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5450
    const-string v9, ": prot="

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5451
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getProtectionLevel()I

    move-result v9

    invoke-static {v9}, Landroid/content/pm/PermissionInfo;->protectionToString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5452
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_41

    .line 5453
    const-string v9, ", COSTS_MONEY"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5455
    :cond_41
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v9

    and-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_42

    .line 5456
    const-string v9, ", HIDDEN"

    invoke-virtual {v1, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5458
    :cond_42
    invoke-interface {v5}, Lcom/android/internal/pm/pkg/component/ParsedPermission;->getFlags()I

    move-result v5

    const/high16 v9, 0x40000000    # 2.0f

    and-int/2addr v5, v9

    if-eqz v5, :cond_43

    .line 5459
    const-string v5, ", INSTALLED"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5461
    :cond_43
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_44
    if-nez v3, :cond_45

    if-eqz p10, :cond_47

    :cond_45
    if-eqz v10, :cond_47

    .line 5466
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    if-eqz v2, :cond_47

    .line 5467
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_47

    .line 5468
    invoke-interface {v10}, Lcom/android/server/pm/pkg/AndroidPackage;->getRequestedPermissions()Ljava/util/Set;

    move-result-object v2

    .line 5469
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "  requested permissions:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5470
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_20
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_47

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_46

    .line 5472
    invoke-virtual {v3, v4}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_46

    goto :goto_20

    .line 5475
    :cond_46
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_20

    .line 5479
    :cond_47
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    const-string v9, "  "

    if-eqz v2, :cond_48

    if-nez v3, :cond_48

    if-eqz p10, :cond_49

    .line 5480
    :cond_48
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v4, p6

    move-object/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    :cond_49
    if-eqz p11, :cond_4a

    .line 5484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v7}, Lcom/android/server/pm/Settings;->dumpComponents(Ljava/io/PrintWriter;Ljava/lang/String;Lcom/android/server/pm/PackageSetting;)V

    .line 5487
    :cond_4a
    invoke-interface/range {p9 .. p9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_21
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5a

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5488
    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v7, v3}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v10

    .line 5489
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v3, "  User "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": "

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5490
    const-string v3, "ceDataInode="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5491
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 5492
    const-string v3, " deDataInode="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5493
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Ljava/io/PrintWriter;->print(J)V

    .line 5494
    const-string v3, " installed="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5495
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5496
    const-string v3, " hidden="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5497
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5498
    const-string v3, " suspended="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5499
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5500
    const-string v3, " distractionFlags="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5501
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5502
    const-string v3, " stopped="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5503
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5504
    const-string v3, " notLaunched="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5505
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5506
    const-string v3, " enabled="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5507
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 5508
    const-string v3, " instant="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5509
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5510
    const-string v3, " virtual="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5511
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Z)V

    .line 5512
    const-string v3, " quarantined="

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5513
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isQuarantined()Z

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 5516
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5517
    const-string v4, "      installReason="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5518
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 5520
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v7, v4}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    move-result-object v4

    .line 5521
    const-string v5, "      dataDir="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-nez v4, :cond_4b

    .line 5522
    const-string/jumbo v4, "null"

    goto :goto_22

    :cond_4b
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    :goto_22
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5524
    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v4}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v4

    .line 5525
    const-string v5, "      firstInstallTime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5526
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5527
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5529
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    if-eqz v5, :cond_4c

    .line 5530
    invoke-interface {v4}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v4

    .line 5531
    const-string v5, "      archiveTime="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5532
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/util/Date;->setTime(J)V

    .line 5533
    invoke-virtual/range {p7 .. p8}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5534
    const-string v5, "      unarchiveInstallerTitle="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5535
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5536
    invoke-virtual {v4}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_23
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 5537
    const-string v12, "        archiveActivityInfo="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5538
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_23

    .line 5542
    :cond_4c
    const-string v4, "      uninstallReason="

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5543
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 5545
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v4

    if-eqz v4, :cond_4e

    .line 5546
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5547
    const-string v4, "  Suspend params:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v4, 0x0

    .line 5548
    :goto_24
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v5

    if-ge v4, v5, :cond_4e

    .line 5549
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5550
    const-string v5, "    suspendingPackage="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5551
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5552
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v5, :cond_4d

    .line 5554
    const-string v12, " dialogInfo="

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5555
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->getDialogInfo()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 5556
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5557
    invoke-virtual {v5}, Lcom/android/server/pm/pkg/SuspendParams;->isQuarantined()Z

    move-result v5

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Z)V

    .line 5559
    :cond_4d
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_24

    .line 5563
    :cond_4e
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getOverlayPaths()Landroid/content/pm/overlay/OverlayPaths;

    move-result-object v3

    .line 5564
    const-string v12, "      "

    if-eqz v3, :cond_50

    .line 5565
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_4f

    .line 5566
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5567
    const-string v4, "    overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5568
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_25
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5569
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5570
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5571
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_25

    .line 5574
    :cond_4f
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_50

    .line 5575
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5576
    const-string v4, "    legacy overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5577
    invoke-virtual {v3}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_26
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_50

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5578
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5579
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5580
    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_26

    .line 5586
    :cond_50
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getSharedLibraryOverlayPaths()Ljava/util/Map;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 5589
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_51
    :goto_27
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_54

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 5590
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/overlay/OverlayPaths;

    if-nez v5, :cond_52

    goto :goto_27

    .line 5594
    :cond_52
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_53

    .line 5595
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5596
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5597
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5598
    const-string v13, " overlay paths:"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5599
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getOverlayPaths()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_28
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_53

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 5600
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5601
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5602
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_28

    .line 5605
    :cond_53
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_51

    .line 5606
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5607
    invoke-virtual {v1, v11}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5608
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5609
    const-string v4, " legacy overlay paths:"

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5610
    invoke-virtual {v5}, Landroid/content/pm/overlay/OverlayPaths;->getResourceDirs()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_29
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_51

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 5611
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5612
    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5613
    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_29

    .line 5619
    :cond_54
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_55

    .line 5621
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "    lastDisabledCaller: "

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5622
    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5625
    :cond_55
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v3

    if-nez v3, :cond_56

    .line 5626
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 5627
    invoke-virtual {v7}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v13

    invoke-static {v5, v13}, Landroid/os/UserHandle;->getUid(II)I

    move-result v5

    .line 5626
    invoke-interface {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v4

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5628
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    move-object/from16 v13, p6

    .line 5629
    invoke-virtual {v13, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    move/from16 v5, p10

    move-object v2, v3

    move-object/from16 v3, p4

    .line 5628
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    goto :goto_2a

    :cond_56
    move-object/from16 v13, p6

    .line 5632
    :goto_2a
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_57

    .line 5634
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "      harmfulAppWarning: "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5635
    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_57
    if-nez p4, :cond_59

    .line 5639
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getDisabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_58

    .line 5640
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-lez v2, :cond_58

    .line 5641
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    disabledComponents:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5642
    :goto_2b
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_58

    .line 5643
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2b

    .line 5646
    :cond_58
    invoke-interface {v10}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getEnabledComponentsNoCopy()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v0

    if-eqz v0, :cond_59

    .line 5647
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v2

    if-lez v2, :cond_59

    .line 5648
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v2, "    enabledComponents:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 5649
    :goto_2c
    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v3

    if-ge v2, v3, :cond_59

    .line 5650
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    :cond_59
    move-object/from16 v0, p0

    goto/16 :goto_21

    :cond_5a
    return-void
.end method

.method public dumpPackagesLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v12, p2

    move-object/from16 v4, p3

    move-object/from16 v13, p4

    .line 5659
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string/jumbo v2, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v7, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 5660
    new-instance v8, Ljava/util/Date;

    invoke-direct {v8}, Ljava/util/Date;-><init>()V

    const/4 v2, 0x2

    .line 5663
    invoke-virtual {v13, v2}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v11

    .line 5664
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v9

    .line 5665
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    const/4 v15, 0x0

    move v2, v15

    :goto_0
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/16 v16, 0x0

    const/16 v5, 0x8

    const/16 v17, 0x1

    if-eqz v3, :cond_8

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v12, :cond_0

    .line 5666
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 5667
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    .line 5670
    :cond_0
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v6

    invoke-interface {v6}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5671
    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    .line 5675
    :cond_1
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5676
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v6

    invoke-interface {v5, v6}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz v4, :cond_2

    .line 5678
    invoke-virtual {v6, v4}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    if-nez p5, :cond_3

    if-eqz v12, :cond_3

    .line 5683
    invoke-virtual {v0, v3}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v5

    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->setSharedUser(Lcom/android/server/pm/SharedUserSetting;)V

    :cond_3
    if-nez p5, :cond_5

    if-nez v2, :cond_5

    .line 5687
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 5688
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5689
    :cond_4
    const-string v2, "Packages:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v18, v17

    goto :goto_1

    :cond_5
    move/from16 v18, v2

    :goto_1
    if-eqz p5, :cond_6

    .line 5692
    const-string/jumbo v16, "pkg"

    :cond_6
    if-eqz v12, :cond_7

    move/from16 v10, v17

    goto :goto_2

    :cond_7
    move v10, v15

    :goto_2
    const-string v2, "  "

    move-object v5, v3

    move-object/from16 v3, v16

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move-object/from16 v4, p3

    move/from16 v2, v18

    goto/16 :goto_0

    .line 5697
    :cond_8
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_e

    if-nez p3, :cond_e

    .line 5698
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v3, v15

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    if-eqz v12, :cond_9

    .line 5699
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    .line 5700
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v12, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    goto :goto_3

    :cond_9
    if-nez p5, :cond_c

    if-nez v3, :cond_b

    .line 5705
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 5706
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5707
    :cond_a
    const-string v3, "Renamed packages:"

    invoke-virtual {v1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v3, v17

    .line 5710
    :cond_b
    const-string v6, "  "

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 5712
    :cond_c
    const-string/jumbo v6, "ren,"

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5714
    :goto_4
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    if-eqz p5, :cond_d

    .line 5715
    const-string v6, " -> "

    goto :goto_5

    :cond_d
    const-string v6, ","

    :goto_5
    invoke-virtual {v1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5716
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    .line 5721
    :cond_e
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_15

    if-nez p3, :cond_15

    .line 5722
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v14

    move v2, v15

    :goto_6
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    if-eqz v12, :cond_f

    .line 5723
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 5724
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    goto :goto_6

    .line 5727
    :cond_f
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    if-eqz v4, :cond_10

    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v4

    if-eqz v4, :cond_10

    .line 5728
    invoke-virtual {v13, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v4

    if-nez v4, :cond_10

    goto :goto_6

    :cond_10
    if-nez p5, :cond_12

    if-nez v2, :cond_12

    .line 5733
    invoke-virtual {v13}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_11

    .line 5734
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5735
    :cond_11
    const-string v2, "Hidden system packages:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move/from16 v18, v17

    goto :goto_7

    :cond_12
    move/from16 v18, v2

    .line 5738
    :goto_7
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5739
    invoke-virtual {v3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {v2, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v6

    if-eqz p5, :cond_13

    .line 5740
    const-string v2, "dis"

    goto :goto_8

    :cond_13
    move-object/from16 v2, v16

    :goto_8
    if-eqz v12, :cond_14

    move/from16 v10, v17

    :goto_9
    move v4, v5

    move-object v5, v3

    move-object v3, v2

    goto :goto_a

    :cond_14
    move v10, v15

    goto :goto_9

    :goto_a
    const-string v2, "  "

    move/from16 v19, v4

    move-object/from16 v4, p3

    invoke-virtual/range {v0 .. v11}, Lcom/android/server/pm/Settings;->dumpPackageLPr(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/text/SimpleDateFormat;Ljava/util/Date;Ljava/util/List;ZZ)V

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move/from16 v5, v19

    goto :goto_6

    :cond_15
    return-void
.end method

.method public dumpPackagesProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 8

    .line 5747
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v5

    .line 5749
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    move v7, v1

    :goto_0
    if-ge v7, v0, :cond_0

    .line 5751
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v7}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    const-wide v3, 0x20b00000005L

    .line 5752
    iget-object v6, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    move-object v2, p1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/PackageSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JLjava/util/List;Lcom/android/server/pm/permission/LegacyPermissionDataProvider;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;)V
    .locals 8

    .line 5758
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5759
    invoke-interface {v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissions()Ljava/util/List;

    move-result-object v4

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 5760
    invoke-interface {p0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getAllAppOpPermissionPackages()Ljava/util/Map;

    move-result-object v5

    const/4 v6, 0x1

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, p4

    .line 5758
    invoke-static/range {v1 .. v7}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->dumpPermissions(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/List;Ljava/util/Map;ZLcom/android/server/pm/DumpState;)V

    return-void
.end method

.method public dumpPreferred(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;Ljava/lang/String;)V
    .locals 9

    const/4 v0, 0x0

    .line 6779
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 6780
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6781
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v1

    .line 6783
    invoke-virtual {p2}, Lcom/android/server/pm/DumpState;->getTitlePrinted()Z

    move-result v3

    const-string v4, ":"

    if-eqz v3, :cond_0

    .line 6784
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\nPreferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    move-object v4, v1

    goto :goto_2

    .line 6785
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Preferred Activities User "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :goto_2
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 6782
    const-string v5, "  "

    move-object v3, p1

    move-object v6, p3

    invoke-virtual/range {v2 .. v8}, Lcom/android/server/IntentResolver;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 6787
    invoke-virtual {p2, p1}, Lcom/android/server/pm/DumpState;->setTitlePrinted(Z)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move-object p1, v3

    move-object p3, v6

    goto :goto_0

    :cond_2
    return-void
.end method

.method public dumpReadMessages(Ljava/io/PrintWriter;Lcom/android/server/pm/DumpState;)V
    .locals 0

    .line 5841
    const-string p2, "Settings parse messages:"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5842
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    return-void
.end method

.method public dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V
    .locals 1

    .line 5879
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5880
    invoke-virtual {v0}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_1
    if-eqz p5, :cond_4

    .line 5886
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo p0, "runtime permissions:"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5887
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    .line 5888
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isRuntime()Z

    move-result p5

    if-nez p5, :cond_2

    goto :goto_1

    :cond_2
    if-eqz p3, :cond_3

    .line 5892
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p3, p5}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p5

    if-nez p5, :cond_3

    goto :goto_1

    .line 5895
    :cond_3
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string p5, "  "

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5896
    const-string p5, ": granted="

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->isGranted()Z

    move-result p5

    invoke-virtual {p1, p5}, Ljava/io/PrintWriter;->print(Z)V

    .line 5897
    const-string p5, ", flags="

    .line 5898
    invoke-virtual {p4}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;->getFlags()I

    move-result p4

    .line 5897
    invoke-static {p5, p4}, Lcom/android/server/pm/Settings;->permissionFlagsToString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    return-void
.end method

.method public dumpSharedUsersLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/DumpState;Z)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p3

    .line 5766
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v2, v7

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcom/android/server/pm/SharedUserSetting;

    if-eqz p2, :cond_0

    .line 5767
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->getSharedUser()Lcom/android/server/pm/SharedUserSetting;

    move-result-object v4

    if-eq v8, v4, :cond_0

    goto :goto_0

    .line 5770
    :cond_0
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v5, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    .line 5771
    invoke-interface {v4, v5}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getLegacyPermissionState(I)Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    if-eqz v3, :cond_1

    .line 5773
    invoke-virtual {v4, v3}, Lcom/android/server/pm/permission/LegacyPermissionState;->hasPermissionState(Ljava/util/Collection;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_0

    :cond_1
    if-nez p5, :cond_b

    const/4 v9, 0x1

    if-nez v2, :cond_3

    .line 5778
    invoke-virtual/range {p4 .. p4}, Lcom/android/server/pm/DumpState;->onTitlePrinted()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5779
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5780
    :cond_2
    const-string v2, "Shared users:"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    move v10, v9

    goto :goto_1

    :cond_3
    move v10, v2

    .line 5784
    :goto_1
    const-string v2, "  SharedUser ["

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5785
    iget-object v2, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5786
    const-string v2, "] ("

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5787
    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5788
    const-string v2, "):"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5791
    const-string v2, "    "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "appId="

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v5, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(I)V

    .line 5793
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "Packages"

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5795
    invoke-virtual {v8}, Lcom/android/server/pm/SharedUserSetting;->getPackageStates()Landroid/util/ArraySet;

    move-result-object v5

    .line 5796
    invoke-virtual {v5}, Landroid/util/ArraySet;->size()I

    move-result v11

    move v12, v7

    .line 5797
    :goto_2
    const-string v13, "  "

    if-ge v12, v11, :cond_5

    .line 5798
    invoke-virtual {v5, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/pm/pkg/PackageStateInternal;

    if-eqz v14, :cond_4

    .line 5800
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v15, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    goto :goto_3

    .line 5802
    :cond_4
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v13, "NULL?!"

    invoke-virtual {v1, v13}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    move-object/from16 v11, p4

    .line 5806
    invoke-virtual {v11, v5}, Lcom/android/server/pm/DumpState;->isOptionEnabled(I)Z

    move-result v5

    if-eqz v5, :cond_6

    move v2, v10

    goto/16 :goto_0

    .line 5810
    :cond_6
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v5

    .line 5812
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpInstallPermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    move-object v14, v2

    move-object v12, v4

    .line 5814
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_4
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 5815
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    .line 5816
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget v4, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-static {v2, v4}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v3

    .line 5819
    invoke-virtual {v12, v2}, Lcom/android/server/pm/permission/LegacyPermissionState;->getPermissionStates(I)Ljava/util/Collection;

    move-result-object v4

    .line 5820
    invoke-static {v3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9

    .line 5821
    :cond_7
    invoke-virtual {v1, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v5, "User "

    invoke-virtual {v1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5822
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/pm/Settings;->dumpGidsLPr(Ljava/io/PrintWriter;Ljava/lang/String;[I)V

    .line 5823
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz p2, :cond_8

    move v5, v9

    :goto_5
    move-object/from16 v3, p3

    goto :goto_6

    :cond_8
    move v5, v7

    goto :goto_5

    :goto_6
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings;->dumpRuntimePermissionsLPr(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/util/ArraySet;Ljava/util/Collection;Z)V

    :cond_9
    move-object/from16 v0, p0

    goto :goto_4

    :cond_a
    move v2, v10

    goto :goto_7

    :cond_b
    move-object/from16 v11, p4

    .line 5828
    const-string/jumbo v0, "suid,"

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, v8, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v8, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    move-object/from16 v0, p0

    move-object/from16 v3, p3

    goto/16 :goto_0

    :cond_c
    return-void
.end method

.method public dumpSharedUsersProto(Landroid/util/proto/ProtoOutputStream;)V
    .locals 5

    .line 5834
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 5836
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/SharedUserSetting;

    const-wide v3, 0x20b00000006L

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/pm/SharedUserSetting;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public dumpVersionLPr(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 5

    .line 5040
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v0, 0x0

    .line 5041
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 5042
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 5043
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/Settings$VersionInfo;

    .line 5044
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5045
    const-string v1, "Internal:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5046
    :cond_0
    const-string/jumbo v3, "primary_physical"

    invoke-virtual {v3, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 5047
    const-string v1, "External:"

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 5049
    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "UUID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 5051
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 5052
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string/jumbo v3, "sdkVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5053
    iget v1, v2, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "databaseVersion"

    invoke-virtual {p1, v3, v1}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5054
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5055
    const-string v1, "buildFingerprint"

    iget-object v3, v2, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5056
    const-string v1, "fingerprint"

    iget-object v2, v2, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Lcom/android/internal/util/IndentingPrintWriter;->printPair(Ljava/lang/String;Ljava/lang/Object;)Lcom/android/internal/util/IndentingPrintWriter;

    .line 5057
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->println()V

    .line 5058
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 5060
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void
.end method

.method public editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 1

    .line 1558
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-nez v0, :cond_0

    .line 1560
    new-instance v0, Lcom/android/server/pm/CrossProfileIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/CrossProfileIntentResolver;-><init>()V

    .line 1561
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 1

    .line 1549
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-nez v0, :cond_0

    .line 1551
    new-instance v0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PersistentPreferredIntentResolver;-><init>()V

    .line 1552
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 1

    .line 1540
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PreferredIntentResolver;

    if-nez v0, :cond_0

    .line 1542
    new-instance v0, Lcom/android/server/pm/PreferredIntentResolver;

    invoke-direct {v0}, Lcom/android/server/pm/PreferredIntentResolver;-><init>()V

    .line 1543
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public enableSystemPackageLPw(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 13

    .line 907
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    if-nez v0, :cond_0

    .line 909
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Package "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not disabled"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageManager"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 912
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 914
    iget-object v1, v1, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    .line 916
    :cond_1
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 917
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v1

    .line 918
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPath()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v7

    .line 919
    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v8

    invoke-virtual {v0}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v9

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v10

    if-nez v1, :cond_2

    move v11, v2

    goto :goto_0

    .line 920
    :cond_2
    invoke-interface {v1}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isSdkLibrary()Z

    move-result v1

    move v11, v1

    :goto_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v12

    move-object v3, p0

    move-object v4, p1

    .line 918
    invoke-virtual/range {v3 .. v12}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 922
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 923
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 924
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 925
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 926
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v5

    invoke-virtual {p0, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    .line 927
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 928
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 929
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    .line 930
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 931
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 932
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setMimeGroups(Ljava/util/Map;)Lcom/android/server/pm/PackageSetting;

    .line 933
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 934
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 935
    invoke-virtual {p0}, Lcom/android/server/pm/PackageSetting;->getPkgState()Lcom/android/server/pm/pkg/PackageStateUnserialized;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/android/server/pm/pkg/PackageStateUnserialized;->setUpdatedSystemApp(Z)Lcom/android/server/pm/pkg/PackageStateUnserialized;

    .line 936
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    .line 937
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    .line 938
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    .line 939
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    .line 940
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 942
    :cond_3
    iget-object p1, v3, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v4}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1654
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$VersionInfo;

    if-nez v0, :cond_0

    .line 1656
    new-instance v0, Lcom/android/server/pm/Settings$VersionInfo;

    invoke-direct {v0}, Lcom/android/server/pm/Settings$VersionInfo;-><init>()V

    .line 1657
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public getAllSharedUsersLPw()Ljava/util/Collection;
    .locals 0

    .line 872
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    return-object p0
.end method

.method public getApplicationEnabledSettingLPr(Ljava/lang/String;I)I
    .locals 0

    .line 4889
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_0

    .line 4893
    invoke-virtual {p0, p2}, Lcom/android/server/pm/PackageSetting;->getEnabled(I)I

    move-result p0

    return p0

    .line 4891
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getBlockUninstallLPr(ILjava/lang/String;)Z
    .locals 0

    .line 2203
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2207
    :cond_0
    invoke-virtual {p0, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getComponentEnabledSettingLPr(Landroid/content/ComponentName;I)I
    .locals 1

    .line 4898
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 4899
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    if-eqz p0, :cond_0

    .line 4903
    invoke-virtual {p1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 4904
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageSetting;->getCurrentEnabledStateLPr(Ljava/lang/String;I)I

    move-result p0

    return p0

    .line 4901
    :cond_0
    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getCrossProfileIntentResolver(I)Lcom/android/server/pm/CrossProfileIntentResolver;
    .locals 0

    .line 6642
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    return-object p0
.end method

.method public getDefaultRuntimePermissionsVersion(I)I
    .locals 0

    .line 1642
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getVersion(I)I

    move-result p0

    return p0
.end method

.method public getDisabledSystemPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 821
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getDisabledSystemPkgLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 4884
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object p0

    return-object p0
.end method

.method public getDisabledSystemPkgLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 4871
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getExternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1667
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    const-string/jumbo v0, "primary_physical"

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;
    .locals 1

    .line 1663
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings$VersionInfo;

    return-object p0
.end method

.method public getKeySetManagerService()Lcom/android/server/pm/KeySetManagerService;
    .locals 0

    .line 825
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    return-object p0
.end method

.method public getLegacyPermissionsState(I)Lcom/android/permission/persistence/RuntimePermissionsState;
    .locals 2

    .line 3632
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1, v1, p0}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->getLegacyPermissionsState(ILcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;)Lcom/android/permission/persistence/RuntimePermissionsState;

    move-result-object p0

    return-object p0
.end method

.method public getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    .locals 0

    .line 813
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PackageSetting;

    return-object p0
.end method

.method public getPackagesLocked()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 817
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public getPendingDefaultBrowserLPr(I)Ljava/lang/String;
    .locals 0

    .line 1567
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getPersistentPreferredActivities(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;
    .locals 0

    .line 6633
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    return-object p0
.end method

.method public getPreferredActivities(I)Lcom/android/server/pm/PreferredIntentResolver;
    .locals 0

    .line 6637
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    return-object p0
.end method

.method public getRenamedPackageLPr(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 829
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getSettingLPr(I)Lcom/android/server/pm/SettingBase;
    .locals 0

    .line 1503
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->getSetting(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    return-object p0
.end method

.method public final getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 1595
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mSettingsFilename:Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPreviousSettingsFilename:Ljava/io/File;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mSettingsReserveCopyFilename:Ljava/io/File;

    const/16 v4, 0x1b0

    const-string/jumbo v5, "package manager settings"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public getSharedUserLPw(Ljava/lang/String;IIZ)Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 852
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    if-nez v0, :cond_1

    if-eqz p4, :cond_1

    .line 854
    new-instance p4, Lcom/android/server/pm/SharedUserSetting;

    invoke-direct {p4, p1, p2, p3}, Lcom/android/server/pm/SharedUserSetting;-><init>(Ljava/lang/String;II)V

    .line 855
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p2, p4}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p2

    iput p2, p4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    if-ltz p2, :cond_0

    .line 861
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "New shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": id="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "PackageManager"

    invoke-static {p3, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1, p4}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4

    .line 858
    :cond_0
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Creating shared user "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0

    :cond_1
    return-object v0
.end method

.method public getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    if-eqz p1, :cond_1

    .line 4914
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4917
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/SharedUserSetting;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getSharedUserSettingLPr(Ljava/lang/String;)Lcom/android/server/pm/SharedUserSetting;
    .locals 1

    .line 4908
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    .line 4909
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p0

    return-object p0
.end method

.method public getSharedUsersLocked()Lcom/android/server/utils/WatchedArrayMap;
    .locals 0

    .line 868
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    return-object p0
.end method

.method public final getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;
    .locals 7

    .line 1584
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v2, "package-restrictions.xml"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1585
    new-instance v2, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    const-string/jumbo v3, "package-restrictions-backup.xml"

    invoke-direct {v2, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1587
    new-instance v3, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p1

    const-string/jumbo v0, "package-restrictions.xml.reservecopy"

    invoke-direct {v3, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1589
    new-instance v0, Lcom/android/server/pm/ResilientAtomicFile;

    const/16 v4, 0x1b0

    const-string/jumbo v5, "package restrictions"

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/server/pm/ResilientAtomicFile;-><init>(Ljava/io/File;Ljava/io/File;Ljava/io/File;ILjava/lang/String;Lcom/android/server/pm/ResilientAtomicFile$ReadEventLogger;)V

    return-object v0
.end method

.method public final getUserRuntimePermissionsFile(I)Ljava/io/File;
    .locals 1

    .line 1602
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object p0

    const-string/jumbo p1, "runtime-permissions.xml"

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getUserSystemDirectory(I)Ljava/io/File;
    .locals 3

    .line 1580
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/io/File;

    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSystemDir:Ljava/io/File;

    const-string/jumbo v2, "users"

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public getVerifierDeviceIdentityLPw(Lcom/android/server/pm/Computer;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 4856
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-nez v0, :cond_0

    .line 4857
    invoke-static {}, Landroid/content/pm/VerifierDeviceIdentity;->generate()Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    const/4 v0, 0x0

    .line 4859
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writeLPr(Lcom/android/server/pm/Computer;Z)V

    .line 4862
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    return-object p0
.end method

.method public getVolumePackagesLPr(Ljava/lang/String;)Ljava/util/List;
    .locals 4

    .line 4971
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 4972
    :goto_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 4973
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 4974
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4975
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public insertPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/pkg/AndroidPackage;)V
    .locals 2

    .line 1396
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1397
    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/server/pm/PackageSetting;->setSigningDetails(Landroid/content/pm/SigningDetails;)Lcom/android/server/pm/PackageSetting;

    .line 1401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1403
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    iget-object v1, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    invoke-virtual {v1}, Landroid/content/pm/SigningDetails;->getSignatures()[Landroid/content/pm/Signature;

    move-result-object v1

    if-nez v1, :cond_1

    .line 1404
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-interface {p2}, Lcom/android/server/pm/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object p2

    iput-object p2, v1, Lcom/android/server/pm/PackageSignatures;->mSigningDetails:Landroid/content/pm/SigningDetails;

    .line 1407
    :cond_1
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    return-void
.end method

.method public final invalidatePackageCache()V
    .locals 0

    .line 807
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->invalidatePackageInfoCache()V

    .line 808
    invoke-static {}, Landroid/app/compat/ChangeIdStateCache;->invalidate()V

    .line 809
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-void
.end method

.method public isDisabledSystemPackageLPr(Ljava/lang/String;)Z
    .locals 0

    .line 947
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isInstallerPackage(Ljava/lang/String;)Z
    .locals 0

    .line 6793
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPermissionUpgradeNeeded(I)Z
    .locals 0

    .line 1634
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->isPermissionUpgradeNeeded(I)Z

    move-result p0

    return p0
.end method

.method public isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z
    .locals 0

    .line 218
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->isRegisteredObserver(Lcom/android/server/utils/Watcher;)Z

    move-result p0

    return p0
.end method

.method public final synthetic lambda$pruneSharedUsersLPw$0(Lcom/android/server/pm/SharedUserSetting;)V
    .locals 1

    const/4 v0, 0x1

    .line 1055
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    return-void
.end method

.method public final synthetic lambda$writePackageRestrictionsLPr$1(IJZ)V
    .locals 0

    .line 2335
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void
.end method

.method public logEvent(ILjava/lang/String;)V
    .locals 2

    .line 1823
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1824
    invoke-static {p1, p2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    return-void
.end method

.method public onChanged()V
    .locals 0

    .line 235
    invoke-virtual {p0, p0}, Lcom/android/server/pm/Settings;->dispatchChange(Lcom/android/server/utils/Watchable;)V

    return-void
.end method

.method public onVolumeForgotten(Ljava/lang/String;)V
    .locals 0

    .line 1671
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public pruneRenamedPackagesLPw()V
    .locals 3

    .line 841
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 842
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    if-nez v1, :cond_0

    .line 844
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->removeAt(I)Ljava/lang/Object;

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public pruneSharedUsersLPw()V
    .locals 11

    .line 1019
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1020
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1021
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 1022
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    if-nez v4, :cond_1

    .line 1024
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1029
    :cond_1
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v3

    .line 1030
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    const/4 v7, 0x0

    :goto_1
    if-ltz v5, :cond_3

    .line 1031
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/PackageSetting;

    .line 1032
    iget-object v9, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_2

    .line 1033
    invoke-virtual {v3, v5}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v7, v6

    :cond_2
    add-int/lit8 v5, v5, -0x1

    goto :goto_1

    .line 1038
    :cond_3
    invoke-virtual {v4}, Lcom/android/server/pm/SharedUserSetting;->getDisabledPackageSettings()Lcom/android/server/utils/WatchedArraySet;

    move-result-object v5

    .line 1039
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->size()I

    move-result v8

    sub-int/2addr v8, v6

    :goto_2
    if-ltz v8, :cond_5

    .line 1040
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/PackageSetting;

    .line 1041
    iget-object v10, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 1042
    invoke-virtual {v5, v8}, Lcom/android/server/utils/WatchedArraySet;->removeAt(I)Ljava/lang/Object;

    move v7, v6

    :cond_4
    add-int/lit8 v8, v8, -0x1

    goto :goto_2

    :cond_5
    if-eqz v7, :cond_6

    .line 1047
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->onChanged()V

    .line 1049
    :cond_6
    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1050
    invoke-virtual {v5}, Lcom/android/server/utils/WatchedArraySet;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1051
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1054
    :cond_7
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;

    invoke-direct {v3, v2}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/utils/WatchedArrayMap;)V

    invoke-interface {v0, v3}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 1055
    new-instance v0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/pm/Settings;)V

    invoke-interface {v1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public readBlockUninstallPackagesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 5

    .line 1795
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1797
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 1798
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 1799
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_4

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 1803
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 1804
    const-string v3, "block-uninstall"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    .line 1805
    const-string/jumbo v3, "packageName"

    invoke-interface {p1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1806
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1808
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under block-uninstall-packages: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1809
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x5

    .line 1810
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1811
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 1814
    :cond_4
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1815
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    return-void

    .line 1817
    :cond_5
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, v1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public final readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;
    .locals 5

    .line 2214
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    const/4 v0, 0x0

    move-object v1, v0

    .line 2216
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_4

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 2218
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, p0, :cond_4

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 2223
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 2224
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2225
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    if-nez v1, :cond_3

    .line 2228
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 2230
    :cond_3
    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method public final readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 4

    .line 1736
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1738
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1739
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1743
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1744
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1745
    new-instance v1, Lcom/android/server/pm/CrossProfileIntentFilter;

    invoke-direct {v1, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1746
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editCrossProfileIntentResolverLPw(I)Lcom/android/server/pm/CrossProfileIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_0

    .line 1748
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under crossProfile-intent-filters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1750
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1751
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V
    .locals 0

    .line 1758
    invoke-static {p1}, Lcom/android/server/pm/Settings;->readDefaultApps(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1760
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public final readDefaultPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 6

    .line 3963
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    .line 3964
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3965
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 3967
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_5

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    .line 3968
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v1, :cond_5

    :cond_1
    if-eq v2, v3, :cond_0

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 3973
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 3974
    const-string v3, "item"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x5

    if-eqz v2, :cond_4

    .line 3975
    new-instance v2, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v2, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 3976
    iget-object v4, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v4}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 3978
    invoke-virtual {v2}, Lcom/android/server/pm/WatchedIntentFilter;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v2, v2, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    .line 3977
    invoke-virtual {p0, v0, v3, v2, p2}, Lcom/android/server/pm/Settings;->applyDefaultPreferredActivityLPw(Landroid/content/pm/PackageManagerInternal;Landroid/content/IntentFilter;Landroid/content/ComponentName;I)V

    goto :goto_0

    .line 3980
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 3982
    invoke-virtual {v2}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " at "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3983
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3980
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 3986
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <preferred-activities>: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3987
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3986
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3988
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 3

    .line 4596
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4598
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4599
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_5

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 4604
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4605
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 4606
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4608
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addDisabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4610
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <disabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4612
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4610
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4615
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <disabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4616
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4615
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4618
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public final readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V
    .locals 19

    move-object/from16 v1, p1

    .line 3995
    const-string/jumbo v2, "name"

    const/4 v3, 0x0

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 3996
    const-string/jumbo v2, "realName"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3997
    const-string v2, "codePath"

    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3999
    const-string/jumbo v4, "requiredCpuAbi"

    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 4000
    const-string/jumbo v7, "nativeLibraryPath"

    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 4002
    const-string/jumbo v7, "primaryCpuAbi"

    invoke-interface {v1, v3, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 4003
    const-string/jumbo v8, "secondaryCpuAbi"

    invoke-interface {v1, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 4004
    const-string v8, "cpuAbiOverride"

    invoke-interface {v1, v3, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    if-nez v7, :cond_0

    if-eqz v4, :cond_0

    move-object v14, v4

    goto :goto_0

    :cond_0
    move-object v14, v7

    .line 4010
    :goto_0
    const-string/jumbo v4, "version"

    const-wide/16 v7, 0x0

    invoke-interface {v1, v3, v4, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v9

    .line 4011
    const-string/jumbo v4, "targetSdkVersion"

    const/4 v15, 0x0

    invoke-interface {v1, v3, v4, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    .line 4012
    const-string/jumbo v7, "restrictUpdateHash"

    invoke-interface {v1, v3, v7, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v7

    .line 4014
    const-string/jumbo v8, "scannedAsStoppedSystemApp"

    invoke-interface {v1, v3, v8, v15}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4020
    const-string v15, "/priv-app/"

    invoke-virtual {v2, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-eqz v15, :cond_1

    const/16 v15, 0x8

    :goto_1
    move-wide/from16 v16, v9

    goto :goto_2

    :cond_1
    const/4 v15, 0x0

    goto :goto_1

    .line 4027
    :goto_2
    sget-object v10, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->DISABLED_ID:Ljava/util/UUID;

    move v9, v4

    .line 4028
    new-instance v4, Lcom/android/server/pm/PackageSetting;

    move-object/from16 v18, v7

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move v2, v8

    const/4 v8, 0x1

    move v3, v2

    move v2, v9

    move v9, v15

    move-wide/from16 v0, v16

    move-object/from16 v15, v18

    invoke-direct/range {v4 .. v10}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V

    .line 4030
    invoke-virtual {v4, v11}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4031
    invoke-virtual {v4, v14}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4032
    invoke-virtual {v4, v12}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4033
    invoke-virtual {v4, v13}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v4

    .line 4034
    invoke-virtual {v4, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4035
    invoke-virtual {v0, v2}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4036
    invoke-virtual {v0, v15}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4037
    invoke-virtual {v0, v3}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    .line 4038
    const-string v1, "ft"

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const-wide/16 v6, 0x0

    invoke-interface {v2, v3, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    cmp-long v1, v8, v6

    if-nez v1, :cond_2

    .line 4040
    const-string/jumbo v1, "ts"

    invoke-interface {v2, v3, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v8

    .line 4042
    :cond_2
    invoke-virtual {v0, v8, v9}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    .line 4043
    const-string/jumbo v1, "ut"

    invoke-interface {v2, v3, v1, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    .line 4044
    invoke-static {v2}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4045
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    if-gtz v1, :cond_3

    .line 4046
    invoke-static {v2}, Lcom/android/server/pm/Settings;->parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v1

    .line 4047
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4048
    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    .line 4051
    :cond_3
    const-string v1, "appMetadataFilePath"

    const/4 v3, 0x0

    invoke-interface {v2, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4052
    const-string v1, "appMetadataSource"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    .line 4055
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v1

    .line 4057
    :cond_4
    :goto_3
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v4

    const/4 v6, 0x1

    if-eq v4, v6, :cond_5

    const/4 v6, 0x3

    if-ne v4, v6, :cond_6

    .line 4058
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v7

    if-le v7, v1, :cond_5

    goto :goto_4

    :cond_5
    move-object/from16 v6, p0

    goto/16 :goto_6

    :cond_6
    :goto_4
    if-eq v4, v6, :cond_d

    const/4 v6, 0x4

    if-ne v4, v6, :cond_7

    goto :goto_3

    .line 4063
    :cond_7
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "perms"

    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 4065
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v4

    if-eqz v4, :cond_9

    .line 4067
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v4

    move-object/from16 v6, p0

    .line 4066
    invoke-virtual {v6, v4}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    if-eqz v4, :cond_8

    .line 4069
    invoke-virtual {v4}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    goto :goto_5

    :cond_8
    move-object v4, v3

    goto :goto_5

    :cond_9
    move-object/from16 v6, p0

    .line 4071
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v4

    :goto_5
    move-object/from16 v7, p2

    if-eqz v4, :cond_4

    .line 4074
    invoke-virtual {v6, v2, v4, v7}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_3

    :cond_a
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    .line 4076
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "uses-static-lib"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 4077
    invoke-virtual {v6, v2, v0}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_3

    .line 4078
    :cond_b
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v8, "uses-sdk-lib"

    invoke-virtual {v4, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    .line 4079
    invoke-virtual {v6, v2, v0}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_3

    .line 4081
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <updated-package>: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4082
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x5

    .line 4081
    invoke-static {v8, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4083
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_3

    :cond_d
    move-object/from16 v6, p0

    move-object/from16 v7, p2

    goto/16 :goto_3

    .line 4087
    :goto_6
    iget-object v1, v6, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v5, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 3

    .line 4624
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 4626
    :cond_0
    :goto_0
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 4627
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    if-le v2, p0, :cond_5

    :cond_1
    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    goto :goto_0

    .line 4632
    :cond_2
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4633
    const-string v1, "item"

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    .line 4634
    const-string/jumbo v2, "name"

    invoke-interface {p2, v0, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 4636
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/android/server/pm/PackageSetting;->addEnabledComponent(Ljava/lang/String;I)V

    goto :goto_1

    .line 4638
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <enabled-components> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4640
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4638
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 4643
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <enabled-components>: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4644
    invoke-interface {p2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4643
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4646
    :goto_1
    invoke-static {p2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_5
    return-void
.end method

.method public readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V
    .locals 7

    .line 2574
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result p0

    .line 2576
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    .line 2578
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, p0, :cond_4

    :cond_1
    if-eq v0, v2, :cond_0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    goto :goto_0

    .line 2583
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2584
    const-string v2, "item"

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2585
    const-string/jumbo v0, "name"

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2586
    const-string v3, "granted"

    invoke-interface {p1, v2, v3, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v1

    .line 2587
    const-string v3, "flags"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeIntHex(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 2588
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    .line 2589
    new-instance v6, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;

    invoke-direct {v6, v0, v4, v1, v2}, Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;-><init>(Ljava/lang/String;ZZI)V

    iget v5, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v6, v5}, Lcom/android/server/pm/permission/LegacyPermissionState;->putPermissionState(Lcom/android/server/pm/permission/LegacyPermissionState$PermissionState;I)V

    goto :goto_1

    .line 2593
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown element under <permissions>: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2594
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2593
    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readLPw(Lcom/android/server/pm/Computer;Ljava/util/List;)Z
    .locals 9

    .line 3541
    const-string v1, "No external VersionInfo found in settings, using current."

    const-string v2, "No internal VersionInfo found in settings, using current."

    const-string/jumbo v3, "primary_physical"

    const-string v4, "PackageManager"

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 3544
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v5, 0x0

    if-nez p1, :cond_2

    .line 3548
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 3549
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3553
    :cond_0
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 3554
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    :cond_1
    return v5

    .line 3548
    :cond_2
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p1, v6}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 3549
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    invoke-virtual {p0, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3553
    :cond_3
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 3554
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3560
    :cond_4
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->size()I

    move-result p1

    move v1, v5

    :goto_0
    if-ge v1, p1, :cond_8

    .line 3563
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2, v1}, Lcom/android/server/utils/WatchedArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 3564
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v3

    if-gtz v3, :cond_5

    goto :goto_1

    .line 3568
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v4

    .line 3569
    instance-of v6, v4, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v6, :cond_6

    .line 3570
    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    .line 3571
    invoke-virtual {p0, v2, v4}, Lcom/android/server/pm/Settings;->addPackageSettingLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/SharedUserSetting;)V

    goto :goto_1

    :cond_6
    const/4 v6, 0x6

    .line 3572
    const-string v7, " has shared uid "

    const-string v8, "Bad package setting: package "

    if-eqz v4, :cond_7

    .line 3573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not a shared uid\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3575
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3576
    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_1

    .line 3578
    :cond_7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " that is not defined\n"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3580
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3581
    invoke-static {v6, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3584
    :cond_8
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3586
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    .line 3587
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_3

    .line 3595
    :cond_9
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 3596
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v2, v0}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V

    goto :goto_2

    .line 3589
    :cond_a
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->readStoppedLPw()V

    .line 3590
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3591
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 3593
    invoke-virtual {p0, v5, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    .line 3600
    :cond_b
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/UserInfo;

    .line 3601
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget v3, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    .line 3602
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v7

    .line 3601
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    goto :goto_4

    .line 3609
    :cond_c
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p1}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_d
    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PackageSetting;

    .line 3610
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v0

    .line 3611
    instance-of v2, v0, Lcom/android/server/pm/SharedUserSetting;

    if-eqz v2, :cond_d

    .line 3612
    check-cast v0, Lcom/android/server/pm/SharedUserSetting;

    .line 3613
    iget-object v2, v0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2, p2}, Lcom/android/server/utils/WatchedArraySet;->add(Ljava/lang/Object;)Z

    .line 3614
    iget v0, v0, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-virtual {p2, v0}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    goto :goto_5

    .line 3618
    :cond_e
    iget-object p1, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string p2, "Read completed successfully: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " packages, "

    .line 3619
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " shared uids\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3621
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    return v1

    :catchall_0
    move-exception v0

    move-object p1, v0

    .line 3548
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p2, v0}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 3549
    invoke-static {v4, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3551
    sget-object p2, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3553
    :cond_f
    iget-object p2, p0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p2, v3}, Lcom/android/server/utils/WatchedArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_10

    .line 3554
    invoke-static {v4, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    invoke-virtual {p0, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3558
    :cond_10
    throw p1
.end method

.method public final readMimeGroupLPw(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;
    .locals 6

    .line 4498
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    .line 4500
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-object v0

    .line 4504
    :cond_0
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 4505
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 4507
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_5

    const/4 v4, 0x3

    if-ne v3, v4, :cond_2

    .line 4508
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    if-le v5, v2, :cond_5

    :cond_2
    if-eq v3, v4, :cond_1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_3

    goto :goto_0

    .line 4513
    :cond_3
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4514
    const-string/jumbo v4, "mime-type"

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 4515
    const-string/jumbo v3, "value"

    invoke-interface {p1, v0, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4517
    invoke-interface {v1, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4520
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown element under <mime-group>: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4521
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x5

    .line 4520
    invoke-static {v4, v3}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4522
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    .line 4526
    :cond_5
    invoke-static {p0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V
    .locals 77

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    .line 4098
    const-string v13, " has bad appId "

    const-string/jumbo v14, "true"

    const-string v15, " at "

    const-string v1, "Error in package manager settings: package "

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 4143
    :try_start_0
    const-string/jumbo v3, "name"

    invoke-interface {v10, v4, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_42

    .line 4144
    :try_start_1
    const-string/jumbo v2, "realName"

    invoke-interface {v10, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4145
    invoke-static {v10}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v6
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_41

    .line 4146
    :try_start_2
    const-string v7, "isSdkLibrary"

    invoke-interface {v10, v4, v7, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v8

    .line 4147
    invoke-static {v10}, Lcom/android/server/pm/Settings;->parseSharedUserAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v7

    .line 4148
    const-string v9, "codePath"

    invoke-interface {v10, v4, v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_40

    .line 4150
    :try_start_3
    const-string/jumbo v5, "requiredCpuAbi"

    invoke-interface {v10, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v23, v2

    .line 4152
    const-string/jumbo v2, "nativeLibraryPath"

    invoke-interface {v10, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3f

    move-object/from16 v24, v5

    .line 4153
    :try_start_4
    const-string/jumbo v5, "primaryCpuAbi"

    invoke-interface {v10, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3e

    move-object/from16 v25, v5

    .line 4154
    :try_start_5
    const-string/jumbo v5, "secondaryCpuAbi"

    invoke-interface {v10, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_3d

    move/from16 v26, v8

    .line 4155
    :try_start_6
    const-string v8, "cpuAbiOverride"

    invoke-interface {v10, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4156
    const-string/jumbo v12, "updateAvailable"
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_3c

    const/4 v11, 0x0

    :try_start_7
    invoke-interface {v10, v4, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_3b

    move/from16 v27, v12

    .line 4157
    :try_start_8
    const-string v12, "forceQueryable"

    invoke-interface {v10, v4, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_8
    .catch Ljava/lang/NumberFormatException; {:try_start_8 .. :try_end_8} :catch_3a

    move/from16 v28, v12

    .line 4158
    :try_start_9
    const-string/jumbo v12, "pendingRestore"

    invoke-interface {v10, v4, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_9
    .catch Ljava/lang/NumberFormatException; {:try_start_9 .. :try_end_9} :catch_39

    move/from16 v29, v12

    .line 4159
    :try_start_a
    const-string v12, "debuggable"

    invoke-interface {v10, v4, v12, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12
    :try_end_a
    .catch Ljava/lang/NumberFormatException; {:try_start_a .. :try_end_a} :catch_38

    .line 4160
    :try_start_b
    const-string v11, "loadingProgress"
    :try_end_b
    .catch Ljava/lang/NumberFormatException; {:try_start_b .. :try_end_b} :catch_37

    move/from16 v30, v12

    const/4 v12, 0x0

    :try_start_c
    invoke-interface {v10, v4, v11, v12}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeFloat(Ljava/lang/String;Ljava/lang/String;F)F

    move-result v11
    :try_end_c
    .catch Ljava/lang/NumberFormatException; {:try_start_c .. :try_end_c} :catch_36

    .line 4161
    :try_start_d
    const-string v12, "loadingCompletedTime"
    :try_end_d
    .catch Ljava/lang/NumberFormatException; {:try_start_d .. :try_end_d} :catch_35

    move-object/from16 v21, v1

    move-object/from16 v31, v2

    const-wide/16 v1, 0x0

    :try_start_e
    invoke-interface {v10, v4, v12, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v32
    :try_end_e
    .catch Ljava/lang/NumberFormatException; {:try_start_e .. :try_end_e} :catch_34

    if-nez v25, :cond_0

    if-eqz v24, :cond_0

    move-object/from16 v12, v24

    :goto_0
    move/from16 v24, v11

    goto :goto_1

    :cond_0
    move-object/from16 v12, v25

    goto :goto_0

    .line 4167
    :goto_1
    :try_start_f
    const-string/jumbo v11, "version"
    :try_end_f
    .catch Ljava/lang/NumberFormatException; {:try_start_f .. :try_end_f} :catch_33

    move-object/from16 v25, v12

    :try_start_10
    invoke-interface {v10, v4, v11, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v11
    :try_end_10
    .catch Ljava/lang/NumberFormatException; {:try_start_10 .. :try_end_10} :catch_32

    .line 4168
    :try_start_11
    const-string/jumbo v1, "targetSdkVersion"
    :try_end_11
    .catch Ljava/lang/NumberFormatException; {:try_start_11 .. :try_end_11} :catch_31

    const/4 v2, 0x0

    :try_start_12
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v34
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_12 .. :try_end_12} :catch_30

    .line 4169
    :try_start_13
    const-string/jumbo v1, "restrictUpdateHash"

    invoke-interface {v10, v4, v1, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)[B

    move-result-object v35
    :try_end_13
    .catch Ljava/lang/NumberFormatException; {:try_start_13 .. :try_end_13} :catch_2f

    .line 4170
    :try_start_14
    const-string v1, "installer"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v36
    :try_end_14
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_14} :catch_2e

    .line 4171
    :try_start_15
    const-string v1, "installerUid"
    :try_end_15
    .catch Ljava/lang/NumberFormatException; {:try_start_15 .. :try_end_15} :catch_2d

    const/4 v2, -0x1

    :try_start_16
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v37
    :try_end_16
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_16} :catch_2c

    .line 4172
    :try_start_17
    const-string/jumbo v1, "updateOwner"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v38
    :try_end_17
    .catch Ljava/lang/NumberFormatException; {:try_start_17 .. :try_end_17} :catch_2b

    .line 4173
    :try_start_18
    const-string v1, "installerAttributionTag"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v39
    :try_end_18
    .catch Ljava/lang/NumberFormatException; {:try_start_18 .. :try_end_18} :catch_2a

    .line 4174
    :try_start_19
    const-string/jumbo v1, "packageSource"
    :try_end_19
    .catch Ljava/lang/NumberFormatException; {:try_start_19 .. :try_end_19} :catch_29

    const/4 v2, 0x0

    :try_start_1a
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v40
    :try_end_1a
    .catch Ljava/lang/NumberFormatException; {:try_start_1a .. :try_end_1a} :catch_28

    .line 4176
    :try_start_1b
    const-string v1, "isOrphaned"

    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v41
    :try_end_1b
    .catch Ljava/lang/NumberFormatException; {:try_start_1b .. :try_end_1b} :catch_27

    .line 4177
    :try_start_1c
    const-string v1, "installInitiator"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v42
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1c .. :try_end_1c} :catch_26

    .line 4178
    :try_start_1d
    const-string v1, "installOriginator"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v43
    :try_end_1d
    .catch Ljava/lang/NumberFormatException; {:try_start_1d .. :try_end_1d} :catch_25

    .line 4179
    :try_start_1e
    const-string v1, "installInitiatorUninstalled"
    :try_end_1e
    .catch Ljava/lang/NumberFormatException; {:try_start_1e .. :try_end_1e} :catch_24

    const/4 v2, 0x0

    :try_start_1f
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v44
    :try_end_1f
    .catch Ljava/lang/NumberFormatException; {:try_start_1f .. :try_end_1f} :catch_23

    .line 4181
    :try_start_20
    const-string/jumbo v1, "volumeUuid"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v45
    :try_end_20
    .catch Ljava/lang/NumberFormatException; {:try_start_20 .. :try_end_20} :catch_22

    .line 4182
    :try_start_21
    const-string v1, "categoryHint"
    :try_end_21
    .catch Ljava/lang/NumberFormatException; {:try_start_21 .. :try_end_21} :catch_21

    const/4 v2, -0x1

    :try_start_22
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v18
    :try_end_22
    .catch Ljava/lang/NumberFormatException; {:try_start_22 .. :try_end_22} :catch_20

    .line 4184
    :try_start_23
    const-string v1, "appMetadataFilePath"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v46
    :try_end_23
    .catch Ljava/lang/NumberFormatException; {:try_start_23 .. :try_end_23} :catch_1f

    .line 4185
    :try_start_24
    const-string v1, "appMetadataSource"
    :try_end_24
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_24} :catch_1e

    const/4 v2, 0x0

    :try_start_25
    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v22
    :try_end_25
    .catch Ljava/lang/NumberFormatException; {:try_start_25 .. :try_end_25} :catch_1d

    .line 4187
    :try_start_26
    const-string v1, "baseRevisionCode"

    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v47
    :try_end_26
    .catch Ljava/lang/NumberFormatException; {:try_start_26 .. :try_end_26} :catch_1c

    .line 4188
    :try_start_27
    const-string/jumbo v1, "pageSizeCompat"

    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v48
    :try_end_27
    .catch Ljava/lang/NumberFormatException; {:try_start_27 .. :try_end_27} :catch_1b

    .line 4191
    :try_start_28
    const-string/jumbo v1, "scannedAsStoppedSystemApp"

    invoke-interface {v10, v4, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v49
    :try_end_28
    .catch Ljava/lang/NumberFormatException; {:try_start_28 .. :try_end_28} :catch_1a

    .line 4194
    :try_start_29
    const-string v1, "domainSetId"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4196
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v50
    :try_end_29
    .catch Ljava/lang/NumberFormatException; {:try_start_29 .. :try_end_29} :catch_19

    if-eqz v50, :cond_1

    .line 4198
    :try_start_2a
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->generateNewId()Ljava/util/UUID;

    move-result-object v1
    :try_end_2a
    .catch Ljava/lang/NumberFormatException; {:try_start_2a .. :try_end_2a} :catch_0

    :goto_2
    move-object/from16 v56, v1

    goto :goto_4

    :catch_0
    move-object v1, v4

    move-object/from16 v20, v1

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v7, 0x0

    const-wide/16 v64, 0x0

    move-object v4, v3

    :goto_3
    move v3, v2

    goto/16 :goto_47

    .line 4200
    :cond_1
    :try_start_2b
    invoke-static {v1}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v1

    goto :goto_2

    .line 4203
    :goto_4
    const-string/jumbo v1, "publicFlags"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2b
    .catch Ljava/lang/NumberFormatException; {:try_start_2b .. :try_end_2b} :catch_19

    if-eqz v1, :cond_3

    .line 4206
    :try_start_2c
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_2c
    .catch Ljava/lang/NumberFormatException; {:try_start_2c .. :try_end_2c} :catch_1

    goto :goto_5

    :catch_1
    move v1, v2

    .line 4209
    :goto_5
    :try_start_2d
    const-string/jumbo v2, "privateFlags"

    invoke-interface {v10, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_2d
    .catch Ljava/lang/NumberFormatException; {:try_start_2d .. :try_end_2d} :catch_3

    if-eqz v2, :cond_2

    .line 4212
    :try_start_2e
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_2e
    .catch Ljava/lang/NumberFormatException; {:try_start_2e .. :try_end_2e} :catch_2

    :goto_6
    move/from16 v54, v1

    move/from16 v55, v2

    goto :goto_d

    :catch_2
    :cond_2
    :goto_7
    move/from16 v54, v1

    :goto_8
    const/16 v55, 0x0

    goto :goto_d

    :catch_3
    move-object v1, v4

    move-object/from16 v20, v1

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v7, 0x0

    :goto_9
    const-wide/16 v64, 0x0

    :goto_a
    move-object v4, v3

    const/4 v3, 0x0

    goto/16 :goto_47

    .line 4218
    :cond_3
    :try_start_2f
    const-string v1, "flags"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_2f
    .catch Ljava/lang/NumberFormatException; {:try_start_2f .. :try_end_2f} :catch_18

    if-eqz v1, :cond_7

    .line 4221
    :try_start_30
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_30 .. :try_end_30} :catch_4

    goto :goto_b

    :catch_4
    const/4 v1, 0x0

    :goto_b
    const/high16 v2, 0x8000000

    and-int/2addr v2, v1

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_c

    :cond_4
    const/4 v2, 0x0

    :goto_c
    const/high16 v50, 0x10000000

    and-int v50, v1, v50

    if-eqz v50, :cond_5

    or-int/lit8 v2, v2, 0x2

    :cond_5
    const/high16 v50, 0x40000000    # 2.0f

    and-int v50, v1, v50

    if-eqz v50, :cond_6

    or-int/lit8 v2, v2, 0x8

    :cond_6
    const v50, -0x58000001

    and-int v1, v1, v50

    goto :goto_6

    .line 4238
    :cond_7
    :try_start_31
    const-string/jumbo v1, "system"

    invoke-interface {v10, v4, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_31
    .catch Ljava/lang/NumberFormatException; {:try_start_31 .. :try_end_31} :catch_18

    if-eqz v1, :cond_8

    .line 4240
    :try_start_32
    invoke-virtual {v14, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_32
    .catch Ljava/lang/NumberFormatException; {:try_start_32 .. :try_end_32} :catch_3

    goto :goto_7

    :cond_8
    const/16 v54, 0x1

    goto :goto_8

    .line 4249
    :goto_d
    :try_start_33
    const-string v1, "ft"
    :try_end_33
    .catch Ljava/lang/NumberFormatException; {:try_start_33 .. :try_end_33} :catch_18

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    const-wide/16 v13, 0x0

    :try_start_34
    invoke-interface {v10, v4, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_34
    .catch Ljava/lang/NumberFormatException; {:try_start_34 .. :try_end_34} :catch_17

    cmp-long v19, v1, v13

    if-nez v19, :cond_9

    .line 4251
    :try_start_35
    const-string/jumbo v1, "ts"

    invoke-interface {v10, v4, v1, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1
    :try_end_35
    .catch Ljava/lang/NumberFormatException; {:try_start_35 .. :try_end_35} :catch_5

    :cond_9
    move-object/from16 v19, v15

    goto :goto_e

    :catch_5
    move-object v1, v4

    move-object/from16 v20, v1

    move-wide v7, v13

    move-wide/from16 v64, v7

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    goto :goto_a

    .line 4253
    :goto_e
    :try_start_36
    const-string v15, "it"

    invoke-interface {v10, v4, v15, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v60
    :try_end_36
    .catch Ljava/lang/NumberFormatException; {:try_start_36 .. :try_end_36} :catch_16

    .line 4254
    :try_start_37
    const-string/jumbo v15, "ut"

    move-wide/from16 v62, v1

    invoke-interface {v10, v4, v15, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    .line 4255
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_37
    .catch Ljava/lang/NumberFormatException; {:try_start_37 .. :try_end_37} :catch_15

    const-string v15, "PackageManager"

    if-eqz v2, :cond_a

    .line 4256
    :try_start_38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Reading package: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " appId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sharedUserAppId="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :catch_6
    move-object v4, v3

    move-wide/from16 v64, v13

    move-object/from16 v66, v19

    move-object/from16 v67, v21

    move/from16 v9, v24

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    move-wide/from16 v7, v60

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    goto/16 :goto_47

    :cond_a
    :goto_f
    if-eqz v23, :cond_b

    .line 4259
    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v2

    goto :goto_10

    :cond_b
    move-object/from16 v2, v23

    :goto_10
    if-nez v3, :cond_c

    .line 4262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no name at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 4262
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :goto_11
    move-object/from16 v2, p0

    move-object/from16 v7, v19

    move-object/from16 v1, v21

    move-object/from16 v9, v25

    move-object/from16 v14, v31

    :goto_12
    const/4 v8, 0x5

    goto/16 :goto_18

    :cond_c
    if-nez v9, :cond_d

    .line 4266
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error in package manager settings: <package> has no codePath at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4268
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    .line 4266
    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_38
    .catch Ljava/lang/NumberFormatException; {:try_start_38 .. :try_end_38} :catch_6

    goto :goto_11

    .line 4269
    :cond_d
    const-string v4, " pkg="

    const-string v13, "Reading package "

    if-gtz v6, :cond_11

    if-eqz v7, :cond_10

    if-lez v7, :cond_f

    .line 4292
    :try_start_39
    new-instance v50, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v51

    new-instance v14, Ljava/io/File;

    invoke-direct {v14, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v52, v2

    move-object/from16 v53, v14

    invoke-direct/range {v50 .. v56}, Lcom/android/server/pm/PackageSetting;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IILjava/util/UUID;)V
    :try_end_39
    .catch Ljava/lang/NumberFormatException; {:try_start_39 .. :try_end_39} :catch_b

    move-object/from16 v2, v50

    move-object/from16 v14, v31

    .line 4294
    :try_start_3a
    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2
    :try_end_3a
    .catch Ljava/lang/NumberFormatException; {:try_start_3a .. :try_end_3a} :catch_a

    move-object/from16 v9, v25

    .line 4295
    :try_start_3b
    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4296
    invoke-virtual {v2, v5}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4297
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4298
    invoke-virtual {v2, v11, v12}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4299
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->setSharedUserAppId(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-wide/from16 v11, v62

    .line 4300
    invoke-virtual {v2, v11, v12}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4301
    invoke-virtual {v2, v0, v1}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v0
    :try_end_3b
    .catch Ljava/lang/NumberFormatException; {:try_start_3b .. :try_end_3b} :catch_8

    move-object/from16 v2, p0

    .line 4302
    :try_start_3c
    iget-object v1, v2, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayList;->add(Ljava/lang/Object;)Z

    .line 4303
    sget-boolean v1, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    if-eqz v1, :cond_e

    .line 4304
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, ": sharedUserAppId="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Ljava/lang/NumberFormatException; {:try_start_3c .. :try_end_3c} :catch_7

    goto :goto_14

    :catch_7
    move-object/from16 v20, v0

    move-object v4, v3

    move-object v10, v9

    move-object/from16 v66, v19

    move-object/from16 v67, v21

    move/from16 v9, v24

    move-wide/from16 v7, v60

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_13
    const-wide/16 v64, 0x0

    goto/16 :goto_47

    :cond_e
    :goto_14
    move-object v4, v0

    move-object v11, v3

    move-object v3, v5

    move-object v10, v9

    move-object/from16 v66, v19

    move-object/from16 v67, v21

    :goto_15
    const/16 v20, 0x0

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    goto/16 :goto_1c

    :catch_8
    move-object/from16 v2, p0

    :catch_9
    :goto_16
    move-object v4, v3

    move-object v10, v9

    move-object/from16 v66, v19

    move-object/from16 v67, v21

    :goto_17
    move/from16 v9, v24

    move-wide/from16 v7, v60

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/16 v20, 0x0

    goto :goto_13

    :catch_a
    move-object/from16 v2, p0

    move-object/from16 v9, v25

    goto :goto_16

    :catch_b
    move-object/from16 v2, p0

    move-object/from16 v9, v25

    move-object/from16 v14, v31

    goto :goto_16

    :cond_f
    move-object/from16 v2, p0

    move-object/from16 v9, v25

    move-object/from16 v14, v31

    .line 4308
    :try_start_3d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_3d
    .catch Ljava/lang/NumberFormatException; {:try_start_3d .. :try_end_3d} :catch_9

    move-object/from16 v1, v21

    :try_start_3e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad sharedUserAppId "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_3e
    .catch Ljava/lang/NumberFormatException; {:try_start_3e .. :try_end_3e} :catch_d

    move-object/from16 v7, v19

    :try_start_3f
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4311
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x5

    .line 4308
    invoke-static {v4, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_12

    :catch_c
    move-object/from16 v67, v1

    move-object v4, v3

    move-object/from16 v66, v7

    move-object v10, v9

    goto :goto_17

    :catch_d
    move-object/from16 v67, v1

    move-object v4, v3

    move-object v10, v9

    move-object/from16 v66, v19

    goto :goto_17

    :cond_10
    move-object/from16 v2, p0

    move-object/from16 v7, v19

    move-object/from16 v1, v21

    move-object/from16 v9, v25

    move-object/from16 v14, v31

    .line 4314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_3f
    .catch Ljava/lang/NumberFormatException; {:try_start_3f .. :try_end_3f} :catch_c

    move-object/from16 v4, v58

    :try_start_40
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4316
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v8, 0x5

    .line 4314
    invoke-static {v8, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_40
    .catch Ljava/lang/NumberFormatException; {:try_start_40 .. :try_end_40} :catch_e

    :goto_18
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v3, v5

    move-object/from16 v66, v7

    move-object v10, v9

    const/4 v4, 0x0

    goto/16 :goto_15

    :catch_e
    move-object/from16 v67, v1

    move-object/from16 v58, v4

    move-object/from16 v66, v7

    move-object v10, v9

    move/from16 v9, v24

    move-wide/from16 v7, v60

    const/4 v1, 0x0

    const/16 v20, 0x0

    goto/16 :goto_9

    :cond_11
    move-wide/from16 v50, v0

    move-object/from16 v52, v2

    move-object/from16 v7, v19

    move-object/from16 v10, v25

    move-object/from16 v14, v58

    const/16 v17, 0x5

    move-object/from16 v2, p0

    .line 4271
    :try_start_41
    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1
    :try_end_41
    .catch Ljava/lang/NumberFormatException; {:try_start_41 .. :try_end_41} :catch_14

    move-object v0, v3

    :try_start_42
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/lang/NumberFormatException; {:try_start_42 .. :try_end_42} :catch_13

    const/4 v9, 0x0

    move-object/from16 v19, v5

    move-object/from16 v66, v7

    move-object/from16 v68, v8

    move-wide/from16 v16, v11

    move-object/from16 v58, v14

    move-object/from16 v67, v21

    move/from16 v8, v26

    move-object/from16 v14, v31

    move-wide/from16 v71, v50

    move/from16 v5, v54

    move-object/from16 v7, v56

    move-wide/from16 v69, v62

    const/16 v20, 0x0

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move-object v11, v0

    move-object v0, v2

    move-object v12, v4

    move v4, v6

    move-object/from16 v2, v52

    move/from16 v6, v55

    :try_start_43
    invoke-virtual/range {v0 .. v9}, Lcom/android/server/pm/Settings;->addPackageLPw(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;IIILjava/util/UUID;ZZ)Lcom/android/server/pm/PackageSetting;

    move-result-object v1
    :try_end_43
    .catch Ljava/lang/NumberFormatException; {:try_start_43 .. :try_end_43} :catch_12

    .line 4274
    :try_start_44
    sget-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z
    :try_end_44
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_44} :catch_11

    if-eqz v2, :cond_12

    .line 4275
    :try_start_45
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": appId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v15, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :catch_f
    move-object/from16 v3, v20

    move-object/from16 v20, v1

    move-object v1, v3

    move v6, v4

    move-object v4, v11

    move-object/from16 v5, v19

    :goto_19
    move/from16 v9, v24

    move/from16 v3, v57

    move-wide/from16 v7, v60

    goto/16 :goto_47

    :cond_12
    :goto_1a
    if-nez v1, :cond_13

    .line 4278
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure adding appId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " while parsing settings at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4280
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x6

    .line 4278
    invoke-static {v3, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_45
    .catch Ljava/lang/NumberFormatException; {:try_start_45 .. :try_end_45} :catch_f

    move-object/from16 v3, v19

    goto :goto_1b

    .line 4282
    :cond_13
    :try_start_46
    invoke-virtual {v1, v14}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4283
    invoke-virtual {v1, v10}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;
    :try_end_46
    .catch Ljava/lang/NumberFormatException; {:try_start_46 .. :try_end_46} :catch_11

    move-object/from16 v3, v19

    .line 4284
    :try_start_47
    invoke-virtual {v1, v3}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-object/from16 v2, v68

    .line 4285
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setCpuAbiOverride(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v5, v16

    .line 4286
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLongVersionCode(J)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v5, v69

    .line 4287
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastModifiedTime(J)Lcom/android/server/pm/PackageSetting;

    move-wide/from16 v5, v71

    .line 4288
    invoke-virtual {v1, v5, v6}, Lcom/android/server/pm/PackageSetting;->setLastUpdateTime(J)Lcom/android/server/pm/PackageSetting;
    :try_end_47
    .catch Ljava/lang/NumberFormatException; {:try_start_47 .. :try_end_47} :catch_10

    :goto_1b
    move-object v4, v1

    :goto_1c
    move-object v7, v3

    move-object v5, v4

    move-object/from16 v16, v11

    move/from16 v9, v24

    move-object/from16 v19, v66

    move-object/from16 v21, v67

    :goto_1d
    move-object v2, v14

    move/from16 v12, v18

    move/from16 v3, v22

    move/from16 v8, v27

    move/from16 v13, v28

    move/from16 v14, v29

    move/from16 v15, v30

    move-wide/from16 v73, v32

    move/from16 v1, v34

    move-object/from16 v0, v35

    move-object/from16 v25, v36

    move/from16 v26, v37

    move-object/from16 v27, v38

    move-object/from16 v28, v39

    move/from16 v29, v40

    move/from16 v30, v41

    move-object/from16 v23, v42

    move-object/from16 v24, v43

    move/from16 v31, v44

    move-object/from16 v6, v45

    move-object/from16 v4, v46

    move/from16 v11, v47

    move/from16 v75, v48

    move/from16 v76, v49

    goto/16 :goto_48

    :catch_10
    :goto_1e
    move-object/from16 v5, v20

    move-object/from16 v20, v1

    move-object v1, v5

    move-object v5, v3

    move v6, v4

    move-object v4, v11

    goto/16 :goto_19

    :catch_11
    move-object/from16 v3, v19

    goto :goto_1e

    :catch_12
    move-object/from16 v3, v19

    move-object v5, v3

    move v6, v4

    :goto_1f
    move-object v4, v11

    move-object/from16 v1, v20

    goto/16 :goto_19

    :catch_13
    move-object v11, v0

    :goto_20
    move-object v3, v5

    move v4, v6

    move-object/from16 v66, v7

    move-object/from16 v58, v14

    move-object/from16 v67, v21

    move-object/from16 v14, v31

    const/16 v20, 0x0

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    goto :goto_1f

    :catch_14
    move-object v11, v3

    goto :goto_20

    :catch_15
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-wide/from16 v64, v13

    move-object/from16 v66, v19

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/16 v57, 0x0

    goto :goto_1f

    :catch_16
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-wide/from16 v64, v13

    move-object/from16 v66, v19

    :goto_21
    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/16 v57, 0x0

    :goto_22
    move-object v4, v11

    move-object/from16 v1, v20

    move/from16 v9, v24

    move/from16 v3, v57

    :goto_23
    move-wide/from16 v7, v64

    goto/16 :goto_47

    :catch_17
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-wide/from16 v64, v13

    move-object/from16 v66, v15

    goto :goto_21

    :catch_18
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    goto :goto_22

    :catch_19
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v64, 0x0

    move-object v4, v11

    move-object/from16 v1, v20

    move/from16 v9, v24

    move-wide/from16 v7, v64

    goto/16 :goto_3

    :catch_1a
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v64, 0x0

    move-object v4, v11

    move-object/from16 v1, v20

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v49, v3

    goto :goto_23

    :catch_1b
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v64, 0x0

    move-object v4, v11

    move-object/from16 v1, v20

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v48, v3

    :goto_24
    move/from16 v49, v48

    goto :goto_23

    :catch_1c
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const-wide/16 v64, 0x0

    move-object v4, v11

    move-object/from16 v1, v20

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v47, v3

    :goto_25
    move/from16 v48, v47

    goto :goto_24

    :catch_1d
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    :goto_26
    const-wide/16 v64, 0x0

    move-object v4, v11

    move-object/from16 v1, v20

    :goto_27
    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v47, v22

    goto :goto_25

    :catch_1e
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/16 v57, 0x0

    goto :goto_26

    :catch_1f
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    :goto_28
    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v46, v1

    goto :goto_27

    :catch_20
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    :goto_29
    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    goto :goto_28

    :catch_21
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    goto :goto_29

    :catch_22
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v45, v1

    move-object/from16 v46, v45

    goto/16 :goto_27

    :catch_23
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    :goto_2a
    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v45, v1

    :goto_2b
    move-object/from16 v46, v45

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v44, v22

    :goto_2c
    move/from16 v47, v44

    goto/16 :goto_25

    :catch_24
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    goto :goto_2a

    :catch_25
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v43, v1

    :goto_2d
    move-object/from16 v45, v43

    goto :goto_2b

    :catch_26
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v42, v1

    move-object/from16 v43, v42

    goto :goto_2d

    :catch_27
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v42, v1

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v41, v22

    :goto_2e
    move/from16 v44, v41

    goto/16 :goto_2c

    :catch_28
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    :goto_2f
    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v42, v1

    :goto_30
    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v40, v22

    :goto_31
    move/from16 v41, v40

    goto :goto_2e

    :catch_29
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    goto :goto_2f

    :catch_2a
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v39, v1

    :goto_32
    move-object/from16 v42, v39

    goto :goto_30

    :catch_2b
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    :goto_33
    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v38, v1

    :goto_34
    move-object/from16 v39, v38

    goto :goto_32

    :catch_2c
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    :goto_35
    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move/from16 v37, v18

    goto :goto_33

    :catch_2d
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    goto :goto_35

    :catch_2e
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move/from16 v37, v18

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v36, v1

    :goto_36
    move-object/from16 v38, v36

    goto :goto_34

    :catch_2f
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move/from16 v18, v2

    move/from16 v37, v18

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v35, v1

    move-object/from16 v36, v35

    goto :goto_36

    :catch_30
    move/from16 v57, v2

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    :goto_37
    const-wide/16 v64, 0x0

    :goto_38
    move/from16 v18, v2

    move/from16 v37, v18

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v35, v1

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v9, v24

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v34, v22

    move/from16 v40, v34

    goto/16 :goto_31

    :catch_31
    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    goto :goto_37

    :catch_32
    move-wide/from16 v64, v1

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v10, v25

    :goto_39
    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    goto :goto_38

    :catch_33
    move-wide/from16 v64, v1

    move-object v11, v3

    move-object/from16 v20, v4

    move-object v3, v5

    move v4, v6

    move-object v10, v12

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    goto :goto_39

    :catch_34
    move-wide/from16 v64, v1

    move-object/from16 v20, v4

    move v4, v6

    move/from16 v24, v11

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    move-object/from16 v67, v21

    move-object/from16 v14, v31

    const/4 v2, -0x1

    const/16 v57, 0x0

    move-object v11, v3

    move-object v3, v5

    :goto_3a
    move/from16 v18, v2

    move/from16 v37, v18

    move-object v4, v11

    move-object/from16 v1, v20

    move-object/from16 v35, v1

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v9, v24

    move-object/from16 v10, v25

    move/from16 v3, v57

    move/from16 v22, v3

    move/from16 v34, v22

    move/from16 v40, v34

    move/from16 v41, v40

    move/from16 v44, v41

    move/from16 v47, v44

    move/from16 v48, v47

    move/from16 v49, v48

    :goto_3b
    move-wide/from16 v7, v64

    move-wide/from16 v32, v7

    goto/16 :goto_47

    :catch_35
    move-object/from16 v67, v1

    move-object/from16 v20, v4

    move v4, v6

    move/from16 v24, v11

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/16 v57, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    move-object v11, v3

    move-object v3, v5

    const/4 v2, -0x1

    goto :goto_3a

    :catch_36
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v3, 0x0

    :goto_3c
    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v1

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    move/from16 v34, v22

    :goto_3d
    move/from16 v40, v34

    move/from16 v41, v40

    move/from16 v44, v41

    move/from16 v47, v44

    move/from16 v48, v47

    move/from16 v49, v48

    move-object v4, v11

    move v9, v12

    move-object/from16 v10, v25

    goto :goto_3b

    :catch_37
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move/from16 v30, v12

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v3, 0x0

    const/4 v12, 0x0

    goto :goto_3c

    :catch_38
    move v12, v11

    move-object v11, v3

    move v3, v12

    move-object/from16 v67, v1

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v1

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    move/from16 v30, v22

    :goto_3e
    move/from16 v34, v30

    goto :goto_3d

    :catch_39
    move v12, v11

    move-object v11, v3

    move v3, v12

    move-object/from16 v67, v1

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v1

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    move/from16 v29, v22

    :goto_3f
    move/from16 v30, v29

    goto :goto_3e

    :catch_3a
    move v12, v11

    move-object v11, v3

    move v3, v12

    move-object/from16 v67, v1

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v1

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    move/from16 v28, v22

    :goto_40
    move/from16 v29, v28

    goto :goto_3f

    :catch_3b
    move v12, v11

    move-object v11, v3

    move v3, v12

    move-object/from16 v67, v1

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    :goto_41
    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object/from16 v20, v1

    :goto_42
    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    move/from16 v27, v22

    move/from16 v28, v27

    goto :goto_40

    :catch_3c
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move-object/from16 v19, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v3, 0x0

    goto :goto_41

    :catch_3d
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v3, 0x0

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object v5, v1

    move-object/from16 v20, v5

    goto :goto_42

    :catch_3e
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v3, 0x0

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v14, v2

    const/4 v2, -0x1

    move-object v5, v1

    move-object v10, v5

    move-object/from16 v20, v10

    :goto_43
    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move/from16 v22, v3

    :goto_44
    move/from16 v27, v22

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v34, v30

    move/from16 v40, v34

    move/from16 v41, v40

    move/from16 v44, v41

    move/from16 v47, v44

    move/from16 v48, v47

    move/from16 v49, v48

    move-object v4, v11

    :goto_45
    move v9, v12

    goto/16 :goto_3b

    :catch_3f
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v2, -0x1

    const/4 v3, 0x0

    :goto_46
    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v5, v1

    move-object v10, v5

    move-object v14, v10

    move-object/from16 v20, v14

    goto :goto_43

    :catch_40
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move v3, v5

    move v4, v6

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v2, -0x1

    goto :goto_46

    :catch_41
    move-object/from16 v67, v1

    move-object v11, v3

    move-object v1, v4

    move v3, v5

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v5, v1

    move-object v10, v5

    move-object v14, v10

    move-object/from16 v20, v14

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move v6, v3

    move/from16 v22, v6

    goto :goto_44

    :catch_42
    move-object/from16 v67, v1

    move-object v1, v4

    move v3, v5

    move-object/from16 v58, v13

    move-object/from16 v59, v14

    move-object/from16 v66, v15

    const/4 v2, -0x1

    const/4 v12, 0x0

    const-wide/16 v64, 0x0

    move-object v5, v4

    move-object v10, v5

    move-object v14, v10

    move-object/from16 v20, v14

    move-object/from16 v35, v20

    move-object/from16 v36, v35

    move-object/from16 v38, v36

    move-object/from16 v39, v38

    move-object/from16 v42, v39

    move-object/from16 v43, v42

    move-object/from16 v45, v43

    move-object/from16 v46, v45

    move/from16 v18, v2

    move/from16 v37, v18

    move v6, v3

    move/from16 v22, v6

    move/from16 v27, v22

    move/from16 v28, v27

    move/from16 v29, v28

    move/from16 v30, v29

    move/from16 v34, v30

    move/from16 v40, v34

    move/from16 v41, v40

    move/from16 v44, v41

    move/from16 v47, v44

    move/from16 v48, v47

    move/from16 v49, v48

    goto/16 :goto_45

    .line 4319
    :goto_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v67

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v12, v58

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-object/from16 v6, v66

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4321
    invoke-interface/range {p1 .. p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v12, 0x5

    .line 4319
    invoke-static {v12, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    move-object/from16 v16, v4

    move-object/from16 v19, v6

    move-wide/from16 v60, v7

    move-object/from16 v21, v11

    move-object v7, v5

    move-object/from16 v5, v20

    goto/16 :goto_1d

    :goto_48
    if-eqz v5, :cond_30

    move-object/from16 v18, v0

    .line 4324
    invoke-static/range {v23 .. v31}, Lcom/android/server/pm/InstallSource;->create(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;IZZ)Lcom/android/server/pm/InstallSource;

    move-result-object v0

    move/from16 v23, v11

    .line 4329
    invoke-virtual {v5, v0}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    move-result-object v11

    .line 4330
    invoke-virtual {v11, v6}, Lcom/android/server/pm/PackageSetting;->setVolumeUuid(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 4331
    invoke-virtual {v6, v12}, Lcom/android/server/pm/PackageSetting;->setCategoryOverride(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v6

    .line 4332
    invoke-virtual {v6, v2}, Lcom/android/server/pm/PackageSetting;->setLegacyNativeLibraryPath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4333
    invoke-virtual {v2, v10}, Lcom/android/server/pm/PackageSetting;->setPrimaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4334
    invoke-virtual {v2, v7}, Lcom/android/server/pm/PackageSetting;->setSecondaryCpuAbi(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4335
    invoke-virtual {v2, v8}, Lcom/android/server/pm/PackageSetting;->setUpdateAvailable(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4336
    invoke-virtual {v2, v13}, Lcom/android/server/pm/PackageSetting;->setForceQueryableOverride(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4337
    invoke-virtual {v2, v14}, Lcom/android/server/pm/PackageSetting;->setPendingRestore(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4338
    invoke-virtual {v2, v15}, Lcom/android/server/pm/PackageSetting;->setDebuggable(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4339
    invoke-virtual {v2, v9}, Lcom/android/server/pm/PackageSetting;->setLoadingProgress(F)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    move-wide/from16 v6, v73

    .line 4340
    invoke-virtual {v2, v6, v7}, Lcom/android/server/pm/PackageSetting;->setLoadingCompletedTime(J)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4341
    invoke-virtual {v2, v4}, Lcom/android/server/pm/PackageSetting;->setAppMetadataFilePath(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4342
    invoke-virtual {v2, v3}, Lcom/android/server/pm/PackageSetting;->setAppMetadataSource(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v2

    .line 4343
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageSetting;->setTargetSdkVersion(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move/from16 v2, v23

    .line 4344
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setBaseRevisionCode(I)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move-object/from16 v2, v18

    .line 4345
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setRestrictUpdateHash([B)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move/from16 v2, v76

    .line 4346
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setScannedAsStoppedSystemApp(Z)Lcom/android/server/pm/PackageSetting;

    move-result-object v1

    move/from16 v2, v75

    .line 4347
    invoke-virtual {v1, v2}, Lcom/android/server/pm/PackageSetting;->setPageSizeAppCompatFlags(I)Lcom/android/server/pm/PackageSetting;

    .line 4349
    const-string v1, "enabled"

    move-object/from16 v10, p1

    const/4 v2, 0x0

    invoke-interface {v10, v2, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4350
    const-string/jumbo v2, "settings"

    if-eqz v1, :cond_17

    .line 4352
    :try_start_48
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3
    :try_end_48
    .catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_48} :catch_44

    const/4 v11, 0x0

    :try_start_49
    invoke-virtual {v5, v3, v11, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V
    :try_end_49
    .catch Ljava/lang/NumberFormatException; {:try_start_49 .. :try_end_49} :catch_43

    const/4 v3, 0x1

    :goto_49
    move-object/from16 v2, p0

    goto :goto_4c

    :catch_43
    :goto_4a
    move-object/from16 v3, v59

    goto :goto_4b

    :catch_44
    const/4 v11, 0x0

    goto :goto_4a

    .line 4355
    :goto_4b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_14

    const/4 v3, 0x1

    .line 4356
    invoke-virtual {v5, v3, v11, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_49

    :cond_14
    const/4 v3, 0x1

    .line 4357
    const-string v4, "false"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v1, 0x2

    .line 4358
    invoke-virtual {v5, v1, v11, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_49

    .line 4359
    :cond_15
    const-string v4, "default"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 4360
    invoke-virtual {v5, v11, v11, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_49

    .line 4362
    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v11, v21

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v11, v16

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has bad enabled value: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v6, v19

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4365
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v12, 0x5

    .line 4362
    invoke-static {v12, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_49

    :cond_17
    const/4 v3, 0x1

    const/4 v11, 0x0

    .line 4369
    invoke-virtual {v5, v11, v11, v2}, Lcom/android/server/pm/PackageSetting;->setEnabled(IILjava/lang/String;)V

    goto :goto_49

    .line 4372
    :goto_4c
    invoke-virtual {v2, v0}, Lcom/android/server/pm/Settings;->addInstallerPackageNames(Lcom/android/server/pm/InstallSource;)V

    .line 4374
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 4376
    :goto_4d
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_2f

    const/4 v4, 0x3

    if-ne v1, v4, :cond_18

    .line 4377
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v6

    if-le v6, v0, :cond_2f

    :cond_18
    if-eq v1, v4, :cond_2e

    const/4 v4, 0x4

    if-ne v1, v4, :cond_19

    goto :goto_4d

    .line 4382
    :cond_19
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 4384
    const-string v4, "disabled-components"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1b

    const/4 v11, 0x0

    .line 4385
    invoke-virtual {v2, v5, v10, v11}, Lcom/android/server/pm/Settings;->readDisabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V

    :goto_4e
    move-object/from16 v4, p2

    :goto_4f
    move-object/from16 v12, p3

    move-object/from16 v6, p4

    :goto_50
    const/4 v7, 0x0

    :cond_1a
    :goto_51
    const/4 v8, 0x5

    goto :goto_4d

    :cond_1b
    const/4 v11, 0x0

    .line 4386
    const-string v4, "enabled-components"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 4387
    invoke-virtual {v2, v5, v10, v11}, Lcom/android/server/pm/Settings;->readEnabledComponentsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_4e

    .line 4388
    :cond_1c
    const-string/jumbo v4, "sigs"

    invoke-virtual {v1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 4389
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v1

    move-object/from16 v4, p2

    invoke-virtual {v1, v10, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_4f

    :cond_1d
    move-object/from16 v4, p2

    .line 4390
    const-string/jumbo v6, "perms"

    invoke-virtual {v1, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_21

    .line 4392
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v1

    if-eqz v1, :cond_1f

    .line 4394
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getSharedUserAppId()I

    move-result v1

    .line 4393
    invoke-virtual {v2, v1}, Lcom/android/server/pm/Settings;->getSettingLPr(I)Lcom/android/server/pm/SettingBase;

    move-result-object v1

    if-eqz v1, :cond_1e

    .line 4396
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    goto :goto_52

    :cond_1e
    const/4 v1, 0x0

    goto :goto_52

    .line 4398
    :cond_1f
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v1

    :goto_52
    move-object/from16 v6, p4

    if-eqz v1, :cond_20

    .line 4401
    invoke-virtual {v2, v10, v1, v6}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    .line 4402
    invoke-virtual {v5, v3}, Lcom/android/server/pm/PackageSetting;->setInstallPermissionsFixed(Z)Lcom/android/server/pm/PackageSetting;

    :cond_20
    move-object/from16 v12, p3

    goto :goto_50

    :cond_21
    move-object/from16 v6, p4

    .line 4404
    const-string/jumbo v7, "proper-signing-keyset"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    const-string v8, "identifier"

    if-eqz v7, :cond_23

    const/4 v7, 0x0

    .line 4405
    invoke-interface {v10, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 4406
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v12, p3

    invoke-virtual {v12, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v1, :cond_22

    .line 4408
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v12, v7, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_53

    .line 4410
    :cond_22
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v12, v1, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4412
    :goto_53
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/server/pm/PackageKeySetData;->setProperSigningKeySet(J)V

    goto/16 :goto_50

    :cond_23
    move-object/from16 v12, p3

    .line 4413
    const-string/jumbo v7, "signing-keyset"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    goto/16 :goto_50

    .line 4415
    :cond_24
    const-string/jumbo v7, "upgrade-keyset"

    invoke-virtual {v1, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_25

    const/4 v7, 0x0

    .line 4416
    invoke-interface {v10, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 4417
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v1

    invoke-virtual {v1, v8, v9}, Lcom/android/server/pm/PackageKeySetData;->addUpgradeKeySetById(J)V

    goto/16 :goto_51

    :cond_25
    const/4 v7, 0x0

    .line 4418
    const-string v9, "defined-keyset"

    invoke-virtual {v1, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_27

    .line 4419
    invoke-interface {v10, v7, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v8

    .line 4420
    const-string v1, "alias"

    invoke-interface {v10, v7, v1}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4421
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v12, v13}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    if-eqz v13, :cond_26

    .line 4423
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    add-int/2addr v13, v3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v12, v14, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    .line 4425
    :cond_26
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v12, v13, v14}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4427
    :goto_54
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object v13

    invoke-virtual {v13, v8, v9, v1}, Lcom/android/server/pm/PackageKeySetData;->addDefinedKeySet(JLjava/lang/String;)V

    goto/16 :goto_51

    .line 4428
    :cond_27
    const-string v8, "install-initiator-sigs"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_28

    .line 4429
    new-instance v1, Lcom/android/server/pm/PackageSignatures;

    invoke-direct {v1}, Lcom/android/server/pm/PackageSignatures;-><init>()V

    .line 4430
    invoke-virtual {v1, v10, v4}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    .line 4432
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v8

    .line 4433
    invoke-virtual {v8, v1}, Lcom/android/server/pm/InstallSource;->setInitiatingPackageSignatures(Lcom/android/server/pm/PackageSignatures;)Lcom/android/server/pm/InstallSource;

    move-result-object v1

    .line 4431
    invoke-virtual {v5, v1}, Lcom/android/server/pm/PackageSetting;->setInstallSource(Lcom/android/server/pm/InstallSource;)Lcom/android/server/pm/PackageSetting;

    goto/16 :goto_51

    .line 4434
    :cond_28
    const-string v8, "domain-verification"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_29

    .line 4435
    new-instance v1, Landroid/content/pm/IntentFilterVerificationInfo;

    invoke-direct {v1, v10}, Landroid/content/pm/IntentFilterVerificationInfo;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 4436
    iget-object v8, v2, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->addLegacySetting(Ljava/lang/String;Landroid/content/pm/IntentFilterVerificationInfo;)V

    goto/16 :goto_51

    .line 4441
    :cond_29
    const-string/jumbo v8, "mime-group"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2a

    .line 4442
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->readMimeGroupLPw(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/Pair;

    move-result-object v1

    if-eqz v1, :cond_1a

    .line 4444
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/String;

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/util/Set;

    invoke-virtual {v5, v8, v1}, Lcom/android/server/pm/PackageSetting;->addMimeTypes(Ljava/lang/String;Ljava/util/Set;)Lcom/android/server/pm/PackageSetting;

    goto/16 :goto_51

    .line 4447
    :cond_2a
    const-string/jumbo v8, "uses-static-lib"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2b

    .line 4448
    invoke-virtual {v2, v10, v5}, Lcom/android/server/pm/Settings;->readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_51

    .line 4449
    :cond_2b
    const-string/jumbo v8, "uses-sdk-lib"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2c

    .line 4450
    invoke-virtual {v2, v10, v5}, Lcom/android/server/pm/Settings;->readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_51

    .line 4451
    :cond_2c
    const-string/jumbo v8, "split-version"

    invoke-virtual {v1, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2d

    .line 4452
    invoke-virtual {v2, v10, v5}, Lcom/android/server/pm/Settings;->readSplitVersionsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V

    goto/16 :goto_51

    .line 4454
    :cond_2d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <package>: "

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4455
    invoke-interface {v10}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x5

    .line 4454
    invoke-static {v8, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4456
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_4d

    :cond_2e
    move-object/from16 v4, p2

    move-object/from16 v12, p3

    move-object/from16 v6, p4

    goto/16 :goto_4d

    :cond_2f
    cmp-long v0, v60, v64

    if-eqz v0, :cond_31

    .line 4460
    invoke-virtual {v5}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static/range {v60 .. v61}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    move-object/from16 v2, p5

    invoke-virtual {v2, v0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_55

    :cond_30
    move-object/from16 v10, p1

    .line 4463
    invoke-static {v10}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_31
    :goto_55
    return-void
.end method

.method public readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V
    .locals 57

    move-object/from16 v1, p0

    move/from16 v3, p1

    .line 1834
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v4, 0x0

    .line 1837
    :try_start_0
    iget-object v5, v1, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 1838
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v28
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    if-nez v28, :cond_1

    .line 1844
    :try_start_2
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 1845
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageSetting;->getCeDataInode(I)J

    move-result-wide v6

    move-wide v8, v6

    .line 1846
    invoke-virtual {v4, v3}, Lcom/android/server/pm/PackageSetting;->getDeDataInode(I)J

    move-result-wide v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object v10, v2

    move-object v2, v4

    move-wide/from16 v55, v8

    move-object v9, v5

    move-wide/from16 v4, v55

    const/4 v8, 0x0

    move-object v11, v9

    const/4 v9, 0x1

    move-object v12, v10

    const/4 v10, 0x0

    move-object v13, v11

    const/4 v11, 0x0

    move-object v14, v12

    const/4 v12, 0x0

    move-object v15, v13

    const/4 v13, 0x0

    move-object/from16 v16, v14

    const/4 v14, 0x0

    move-object/from16 v17, v15

    const/4 v15, 0x0

    move-object/from16 v18, v16

    const/16 v16, 0x0

    move-object/from16 v19, v17

    const/16 v17, 0x0

    move-object/from16 v20, v18

    const/16 v18, 0x0

    move-object/from16 v21, v19

    const/16 v19, 0x0

    move-object/from16 v22, v20

    const/16 v20, 0x0

    move-object/from16 v23, v21

    const/16 v21, 0x0

    move-object/from16 v24, v22

    const/16 v22, 0x0

    move-object/from16 v25, v23

    const/16 v23, 0x0

    move-object/from16 v29, v24

    move-object/from16 v30, v25

    const-wide/16 v24, 0x0

    move-object/from16 v31, v29

    .line 1845
    :try_start_3
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    move-object/from16 v5, v30

    move-object/from16 v2, v31

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_1
    move-object/from16 v4, v28

    goto/16 :goto_11

    :catchall_1
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v30, v5

    goto :goto_1

    :cond_0
    move-object/from16 v31, v2

    move-object/from16 v30, v5

    .line 1867
    monitor-exit v30
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2070
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :cond_1
    move-object/from16 v31, v2

    move-object/from16 v30, v5

    .line 1869
    :try_start_4
    monitor-exit v30
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1871
    :try_start_5
    invoke-static/range {v28 .. v28}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v0

    .line 1874
    :goto_2
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v2, v5, :cond_2

    if-eq v2, v6, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x5

    if-eq v2, v5, :cond_3

    .line 1880
    iget-object v0, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v2, "No start tag found in package restrictions file\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1881
    const-string v0, "No start tag found in package manager package restrictions file"

    invoke-static {v7, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2070
    invoke-virtual/range {v31 .. v31}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_2
    move-exception v0

    :goto_3
    move-object v1, v0

    move-object/from16 v14, v31

    goto/16 :goto_14

    :catch_0
    move-exception v0

    move-object/from16 v4, v28

    :goto_4
    move-object/from16 v14, v31

    goto/16 :goto_12

    .line 1886
    :cond_3
    :try_start_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v2

    .line 1888
    :cond_4
    :goto_5
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v8

    if-eq v8, v6, :cond_1b

    const/4 v9, 0x3

    if-ne v8, v9, :cond_5

    .line 1890
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    if-le v10, v2, :cond_1b

    :cond_5
    if-eq v8, v9, :cond_4

    const/4 v10, 0x4

    if-ne v8, v10, :cond_6

    goto :goto_5

    .line 1896
    :cond_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    .line 1897
    const-string/jumbo v11, "pkg"

    invoke-virtual {v8, v11}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_15

    .line 1898
    const-string/jumbo v8, "name"

    invoke-interface {v0, v4, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 1899
    iget-object v11, v1, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v11, v8}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    if-nez v11, :cond_7

    .line 1901
    const-string v9, "PackageManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No package known for package restrictions "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1903
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_5

    .line 1907
    :cond_7
    const-string v12, "ceDataInode"

    const-wide/16 v13, 0x0

    .line 1908
    invoke-interface {v0, v4, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v15

    .line 1909
    const-string v12, "deDataInode"

    .line 1910
    invoke-interface {v0, v4, v12, v13, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v17

    .line 1911
    const-string v12, "inst"

    .line 1912
    invoke-interface {v0, v4, v12, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v12

    .line 1913
    const-string/jumbo v5, "stopped"

    const/4 v7, 0x0

    .line 1914
    invoke-interface {v0, v4, v5, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v5

    .line 1915
    const-string/jumbo v10, "nl"

    .line 1916
    invoke-interface {v0, v4, v10, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v10

    .line 1920
    const-string v9, "hidden"

    invoke-interface {v0, v4, v9, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    if-nez v9, :cond_8

    .line 1922
    const-string v9, "blocked"

    invoke-interface {v0, v4, v9, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v9

    .line 1925
    :cond_8
    const-string v6, "distraction_flags"

    invoke-interface {v0, v4, v6, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    .line 1927
    const-string/jumbo v13, "suspended"

    invoke-interface {v0, v4, v13, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v13

    .line 1929
    const-string/jumbo v14, "suspending-package"

    invoke-interface {v0, v4, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 1931
    const-string/jumbo v7, "suspend_dialog_message"

    invoke-interface {v0, v4, v7}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v13, :cond_9

    if-nez v14, :cond_9

    .line 1934
    const-string v14, "android"

    :cond_9
    move/from16 v27, v2

    .line 1937
    const-string v2, "blockUninstall"

    move/from16 v29, v5

    const/4 v5, 0x0

    .line 1938
    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move/from16 v30, v2

    .line 1939
    const-string v2, "instant-app"

    .line 1940
    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move/from16 v32, v2

    .line 1941
    const-string/jumbo v2, "virtual-preload"

    .line 1942
    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    move/from16 v33, v2

    .line 1943
    const-string v2, "enabled"

    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1945
    const-string v5, "enabledCaller"

    invoke-interface {v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v34, v2

    .line 1947
    const-string v2, "harmful-app-warning"

    .line 1948
    invoke-interface {v0, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v35, v2

    .line 1949
    const-string v2, "domainVerificationStatus"

    move-object/from16 v36, v5

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    move/from16 v37, v2

    .line 1952
    const-string v2, "install-reason"

    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    move/from16 v38, v2

    .line 1954
    const-string/jumbo v2, "uninstall-reason"

    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1957
    const-string/jumbo v5, "splash-screen-theme"

    invoke-interface {v0, v4, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move/from16 v39, v2

    .line 1959
    const-string v2, "first-install-time"

    move-object/from16 v41, v5

    move/from16 v40, v6

    const-wide/16 v5, 0x0

    invoke-interface {v0, v4, v2, v5, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLongHex(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v42

    .line 1961
    const-string/jumbo v2, "min-aspect-ratio"

    const/4 v5, 0x0

    invoke-interface {v0, v4, v2, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    .line 1972
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v5

    move/from16 v45, v2

    move-object v2, v4

    move-object/from16 v19, v2

    move-object/from16 v46, v19

    move-object/from16 v50, v46

    move-wide/from16 v47, v17

    move/from16 v49, v27

    const/16 v17, 0x2

    move-object/from16 v18, v50

    move-object/from16 v27, v18

    .line 1974
    :goto_6
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v6

    move/from16 v51, v9

    const/4 v9, 0x1

    if-eq v6, v9, :cond_10

    const/4 v9, 0x3

    if-ne v6, v9, :cond_a

    .line 1976
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v9

    if-le v9, v5, :cond_10

    const/4 v9, 0x3

    :cond_a
    if-eq v6, v9, :cond_b

    const/4 v9, 0x4

    if-ne v6, v9, :cond_c

    :cond_b
    move/from16 v52, v5

    goto/16 :goto_9

    .line 1981
    :cond_c
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v21

    sparse-switch v21, :sswitch_data_0

    goto :goto_7

    :sswitch_0
    const-string/jumbo v9, "suspended-dialog-info"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    move/from16 v6, v17

    goto :goto_8

    :sswitch_1
    const-string/jumbo v9, "suspend-params"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x5

    goto :goto_8

    :sswitch_2
    const-string/jumbo v9, "suspended-launcher-extras"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x4

    goto :goto_8

    :sswitch_3
    const-string/jumbo v9, "suspended-app-extras"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x3

    goto :goto_8

    :sswitch_4
    const-string v9, "enabled-components"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x0

    goto :goto_8

    :sswitch_5
    const-string v9, "disabled-components"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x1

    goto :goto_8

    :sswitch_6
    const-string v9, "archive-state"

    invoke-virtual {v6, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    const/4 v6, 0x6

    goto :goto_8

    :cond_d
    :goto_7
    const/4 v6, -0x1

    :goto_8
    packed-switch v6, :pswitch_data_0

    .line 2014
    const-string v6, "PackageSettings"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v52, v5

    const-string v5, "Unknown tag "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " under tag "

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v5, "pkg"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :pswitch_0
    move/from16 v52, v5

    .line 2011
    invoke-static {v0}, Lcom/android/server/pm/Settings;->parseArchiveState(Lcom/android/modules/utils/TypedXmlPullParser;)Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v5

    move-object/from16 v27, v5

    goto :goto_9

    :pswitch_1
    move/from16 v52, v5

    .line 2001
    invoke-static {v3, v0}, Lcom/android/server/pm/Settings;->readSuspensionParamsLPr(ILcom/android/modules/utils/TypedXmlPullParser;)Ljava/util/Map$Entry;

    move-result-object v5

    if-nez v5, :cond_e

    goto :goto_9

    :cond_e
    if-nez v46, :cond_f

    .line 2006
    new-instance v46, Landroid/util/ArrayMap;

    invoke-direct/range {v46 .. v46}, Landroid/util/ArrayMap;-><init>()V

    :cond_f
    move-object/from16 v6, v46

    .line 2008
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/UserPackage;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/pkg/SuspendParams;

    invoke-virtual {v6, v9, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v46, v6

    goto :goto_9

    :pswitch_2
    move/from16 v52, v5

    .line 1996
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v2

    goto :goto_9

    :pswitch_3
    move/from16 v52, v5

    .line 1992
    invoke-static {v0}, Landroid/os/PersistableBundle;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/os/PersistableBundle;

    move-result-object v4

    goto :goto_9

    :pswitch_4
    move/from16 v52, v5

    .line 1989
    invoke-static {v0}, Landroid/content/pm/SuspendDialogInfo;->restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;

    move-result-object v5

    move-object/from16 v50, v5

    goto :goto_9

    :pswitch_5
    move/from16 v52, v5

    .line 1986
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v5

    move-object/from16 v19, v5

    goto :goto_9

    :pswitch_6
    move/from16 v52, v5

    .line 1983
    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->readComponentsLPr(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/util/ArraySet;

    move-result-object v5

    move-object/from16 v18, v5

    :goto_9
    move/from16 v9, v51

    move/from16 v5, v52

    goto/16 :goto_6

    :cond_10
    if-nez v50, :cond_11

    .line 2018
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_11

    .line 2019
    new-instance v5, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v5}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    .line 2020
    invoke-virtual {v5, v7}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    move-result-object v5

    .line 2021
    invoke-virtual {v5}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v6

    goto :goto_a

    :cond_11
    move-object/from16 v6, v50

    :goto_a
    if-eqz v13, :cond_12

    if-nez v46, :cond_12

    .line 2024
    new-instance v5, Lcom/android/server/pm/pkg/SuspendParams;

    const/4 v7, 0x0

    invoke-direct {v5, v6, v4, v2, v7}, Lcom/android/server/pm/pkg/SuspendParams;-><init>(Landroid/content/pm/SuspendDialogInfo;Landroid/os/PersistableBundle;Landroid/os/PersistableBundle;Z)V

    .line 2029
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 2031
    invoke-static {v3, v14}, Landroid/content/pm/UserPackage;->of(ILjava/lang/String;)Landroid/content/pm/UserPackage;

    move-result-object v4

    .line 2030
    invoke-virtual {v2, v4, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v14, v2

    goto :goto_b

    :cond_12
    move-object/from16 v14, v46

    :goto_b
    if-eqz v30, :cond_13

    const/4 v9, 0x1

    .line 2035
    invoke-virtual {v1, v3, v8, v9}, Lcom/android/server/pm/Settings;->setBlockUninstallLPw(ILjava/lang/String;Z)V

    :goto_c
    const-wide/16 v24, 0x0

    goto :goto_d

    :cond_13
    const/4 v9, 0x1

    goto :goto_c

    :goto_d
    cmp-long v2, v42, v24

    if-eqz v2, :cond_14

    :goto_e
    move-object/from16 v53, v8

    move/from16 v30, v9

    move-object v2, v11

    move v9, v12

    move-wide v4, v15

    move/from16 v15, v32

    move/from16 v16, v33

    move/from16 v8, v34

    move-object/from16 v22, v35

    move/from16 v54, v37

    move/from16 v20, v38

    move/from16 v21, v39

    move/from16 v13, v40

    move-object/from16 v23, v41

    move-wide/from16 v24, v42

    move/from16 v26, v45

    move-wide/from16 v6, v47

    move/from16 v12, v51

    const/16 v32, 0x5

    const/16 v44, 0x0

    move v11, v10

    move/from16 v10, v29

    move/from16 v29, v17

    move-object/from16 v17, v36

    goto :goto_f

    .line 2044
    :cond_14
    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    move-object/from16 v4, p2

    invoke-virtual {v4, v8, v2}, Landroid/util/ArrayMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v42

    goto :goto_e

    .line 2037
    :goto_f
    invoke-virtual/range {v2 .. v27}, Lcom/android/server/pm/PackageSetting;->setUserState(IJJIZZZZILandroid/util/ArrayMap;ZZLjava/lang/String;Landroid/util/ArraySet;Landroid/util/ArraySet;IILjava/lang/String;Ljava/lang/String;JILcom/android/server/pm/pkg/ArchiveState;)V

    .line 2046
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    move-object/from16 v4, v53

    move/from16 v5, v54

    invoke-interface {v2, v4, v3, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->setLegacyUserState(Ljava/lang/String;II)Z

    goto :goto_10

    :cond_15
    move/from16 v49, v2

    move-object/from16 v44, v4

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v32, v7

    .line 2047
    const-string/jumbo v2, "preferred-activities"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 2048
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_10

    .line 2049
    :cond_16
    const-string/jumbo v2, "persistent-preferred-activities"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    .line 2050
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_10

    .line 2051
    :cond_17
    const-string v2, "crossProfile-intent-filters"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2052
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_10

    .line 2053
    :cond_18
    const-string v2, "default-apps"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 2054
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_10

    .line 2055
    :cond_19
    const-string v2, "block-uninstall-packages"

    invoke-virtual {v8, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    .line 2056
    invoke-virtual {v1, v0, v3}, Lcom/android/server/pm/Settings;->readBlockUninstallPackagesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_10

    .line 2058
    :cond_1a
    const-string v2, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown element under <stopped-packages>: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2060
    invoke-interface {v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2058
    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2061
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :goto_10
    move/from16 v5, v29

    move/from16 v6, v30

    move/from16 v7, v32

    move-object/from16 v4, v44

    move/from16 v2, v49

    goto/16 :goto_5

    :cond_1b
    move-object/from16 v14, v31

    goto :goto_13

    :catchall_3
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v44, v4

    move-object/from16 v30, v5

    .line 1869
    :goto_11
    :try_start_7
    monitor-exit v30
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catch_1
    move-exception v0

    goto/16 :goto_4

    :catchall_4
    move-exception v0

    goto :goto_11

    :catchall_5
    move-exception v0

    move-object/from16 v31, v2

    goto/16 :goto_3

    :catch_2
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v44, v4

    goto/16 :goto_4

    .line 2066
    :goto_12
    :try_start_9
    invoke-virtual {v14, v4, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 2068
    invoke-virtual/range {p0 .. p2}, Lcom/android/server/pm/Settings;->readPackageRestrictionsLPr(ILandroid/util/ArrayMap;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :goto_13
    if-eqz v14, :cond_1c

    .line 2070
    invoke-virtual {v14}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_1c
    return-void

    :catchall_6
    move-exception v0

    move-object v1, v0

    :goto_14
    if-eqz v14, :cond_1d

    .line 1834
    :try_start_a
    invoke-virtual {v14}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto :goto_15

    :catchall_7
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1d
    :goto_15
    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7cf1603a -> :sswitch_6
        -0x78da70f9 -> :sswitch_5
        -0x75017ede -> :sswitch_4
        -0x5ee8613f -> :sswitch_3
        -0x54ce12c2 -> :sswitch_2
        -0x3326b7c9 -> :sswitch_1
        0x62ff4521 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public readPermissionStateForUserSyncLPr(I)V
    .locals 6

    .line 3627
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->getInternalVersion()Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    .line 3628
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserRuntimePermissionsFile(I)Ljava/io/File;

    move-result-object v5

    move v1, p1

    .line 3627
    invoke-virtual/range {v0 .. v5}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->readStateForUserSync(ILcom/android/server/pm/Settings$VersionInfo;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Ljava/io/File;)V

    return-void
.end method

.method public final readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 4

    .line 1714
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1716
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_4

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1717
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_4

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1721
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1722
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1723
    new-instance v1, Lcom/android/server/pm/PersistentPreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PersistentPreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1724
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPersistentPreferredActivitiesLPw(I)Lcom/android/server/pm/PersistentPreferredIntentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_0

    .line 1726
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown element under <persistent-preferred-activities>: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1728
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    .line 1726
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1729
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_0

    :cond_4
    return-void
.end method

.method public readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V
    .locals 5

    .line 1682
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 1684
    :cond_0
    :goto_0
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_5

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 1685
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_5

    :cond_1
    if-eq v1, v2, :cond_0

    const/4 v2, 0x4

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 1690
    :cond_2
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 1691
    const-string v2, "item"

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x5

    if-eqz v1, :cond_4

    .line 1692
    new-instance v1, Lcom/android/server/pm/PreferredActivity;

    invoke-direct {v1, p1}, Lcom/android/server/pm/PreferredActivity;-><init>(Lcom/android/modules/utils/TypedXmlPullParser;)V

    .line 1693
    iget-object v3, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    invoke-virtual {v3}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    .line 1694
    invoke-virtual {p0, p2}, Lcom/android/server/pm/Settings;->editPreferredActivitiesLPw(I)Lcom/android/server/pm/PreferredIntentResolver;

    move-result-object v2

    .line 1695
    invoke-virtual {v2, v1}, Lcom/android/server/pm/PreferredIntentResolver;->shouldAddPreferredActivity(Lcom/android/server/pm/PreferredActivity;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    .line 1696
    invoke-virtual {v2, v3, v1}, Lcom/android/server/pm/WatchedIntentResolver;->addFilter(Lcom/android/server/pm/snapshot/PackageDataSnapshot;Lcom/android/server/pm/WatchedIntentFilter;)V

    goto :goto_0

    .line 1699
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: <preferred-activity> "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v1, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    .line 1701
    invoke-virtual {v1}, Lcom/android/server/pm/PreferredComponent;->getParseError()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1702
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1699
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 1705
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <preferred-activities>: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1706
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1705
    invoke-static {v2, v1}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1707
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto/16 :goto_0

    :cond_5
    return-void
.end method

.method public readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z
    .locals 19

    move-object/from16 v1, p0

    .line 3392
    const-string v0, "No start tag found in package manager settings"

    iget-object v2, v1, Lcom/android/server/pm/Settings;->mPendingPackages:Lcom/android/server/utils/WatchedArrayList;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayList;->clear()V

    .line 3393
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArraySet;->clear()V

    .line 3394
    invoke-virtual/range {p3 .. p3}, Landroid/util/ArrayMap;->clear()V

    .line 3396
    new-instance v4, Landroid/util/ArrayMap;

    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 3397
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3399
    invoke-virtual {v1}, Lcom/android/server/pm/Settings;->getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v7

    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 3402
    :try_start_0
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v10
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3403
    const-string/jumbo v11, "primary_physical"

    const/4 v12, 0x0

    if-nez v10, :cond_0

    .line 3405
    :try_start_1
    sget-object v0, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V

    .line 3406
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/Settings$VersionInfo;->forceCurrent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3529
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v12

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_b

    :catch_0
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v16, v8

    :goto_0
    move-object v9, v10

    goto/16 :goto_9

    .line 3409
    :cond_0
    :try_start_2
    invoke-static {v10}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v2

    .line 3412
    :goto_1
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_1

    if-eq v5, v8, :cond_1

    goto :goto_1

    .line 3417
    :cond_1
    const-string v13, "PackageManager"

    if-eq v5, v6, :cond_2

    .line 3418
    :try_start_3
    iget-object v2, v1, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No start tag found in settings file\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x5

    .line 3419
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 3421
    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 3529
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return v12

    .line 3426
    :cond_2
    :try_start_4
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 3427
    :goto_2
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v5

    if-eq v5, v8, :cond_3

    const/4 v6, 0x3

    if-ne v5, v6, :cond_4

    .line 3428
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v0, :cond_3

    goto :goto_3

    :cond_3
    move-object/from16 v5, p1

    move/from16 v16, v8

    goto/16 :goto_8

    :cond_4
    :goto_3
    if-eq v5, v6, :cond_1a

    const/4 v6, 0x4

    if-ne v5, v6, :cond_5

    goto :goto_2

    .line 3433
    :cond_5
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v14

    .line 3434
    const-string/jumbo v5, "package"

    invoke-virtual {v14, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    .line 3435
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/pm/Settings;->readPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Landroid/util/ArrayMap;Ljava/util/List;Landroid/util/ArrayMap;)V

    :cond_6
    :goto_4
    move-object/from16 v5, p1

    move-object/from16 v18, v3

    move/from16 v16, v8

    move-object v6, v9

    move/from16 v17, v12

    goto/16 :goto_7

    :cond_7
    move-object/from16 v5, p2

    .line 3437
    const-string/jumbo v6, "permissions"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 3438
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissions(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    .line 3439
    :cond_8
    const-string/jumbo v6, "permission-trees"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 3440
    iget-object v6, v1, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v6, v2}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->readPermissionTrees(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_4

    .line 3441
    :cond_9
    const-string/jumbo v6, "shared-user"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 3442
    invoke-virtual {v1, v2, v3, v5}, Lcom/android/server/pm/Settings;->readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V

    goto :goto_4

    .line 3443
    :cond_a
    const-string/jumbo v6, "preferred-packages"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    goto :goto_4

    .line 3445
    :cond_b
    const-string/jumbo v6, "preferred-activities"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_c

    .line 3448
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_4

    .line 3449
    :cond_c
    const-string/jumbo v6, "persistent-preferred-activities"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 3452
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readPersistentPreferredActivitiesLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_4

    .line 3453
    :cond_d
    const-string v6, "crossProfile-intent-filters"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_e

    .line 3456
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readCrossProfileIntentFiltersLPw(Lcom/android/modules/utils/TypedXmlPullParser;I)V

    goto :goto_4

    .line 3457
    :cond_e
    const-string v6, "default-browser"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f

    .line 3458
    invoke-virtual {v1, v2, v12}, Lcom/android/server/pm/Settings;->readDefaultAppsLPw(Lorg/xmlpull/v1/XmlPullParser;I)V

    goto :goto_4

    .line 3459
    :cond_f
    const-string/jumbo v6, "updated-package"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 3460
    invoke-virtual {v1, v2, v5}, Lcom/android/server/pm/Settings;->readDisabledSysPackageLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/List;)V

    goto :goto_4

    .line 3461
    :cond_10
    const-string/jumbo v6, "renamed-package"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 3462
    const-string/jumbo v6, "new"

    invoke-interface {v2, v9, v6}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3463
    const-string/jumbo v14, "old"

    invoke-interface {v2, v9, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v6, :cond_6

    if-eqz v14, :cond_6

    .line 3465
    iget-object v15, v1, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v15, v6, v14}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_4

    .line 3467
    :cond_11
    const-string v6, "last-platform-version"

    invoke-virtual {v14, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-string v15, "fingerprint"

    move/from16 v16, v8

    const-string v8, "buildFingerprint"

    const-string v9, "external"

    const-string v12, "internal"

    if-eqz v6, :cond_12

    .line 3469
    :try_start_5
    sget-object v6, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v6}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v6

    .line 3471
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v14

    move-object/from16 v18, v3

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 3474
    invoke-interface {v2, v3, v12, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v6, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3475
    invoke-interface {v2, v3, v9, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v9

    iput v9, v14, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3477
    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 3479
    invoke-static {v2, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v14, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    iput-object v3, v6, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v5, p1

    const/4 v6, 0x0

    const/16 v17, 0x0

    goto/16 :goto_7

    :catch_1
    move-exception v0

    move-object/from16 v5, p1

    goto/16 :goto_0

    :cond_12
    move-object/from16 v18, v3

    .line 3481
    const-string v3, "database-version"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 3483
    sget-object v3, Landroid/os/storage/StorageManager;->UUID_PRIVATE_INTERNAL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    .line 3485
    invoke-virtual {v1, v11}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    .line 3488
    invoke-interface {v2, v6, v12, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v12

    iput v12, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3489
    invoke-interface {v2, v6, v9, v8}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    iput v3, v5, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    move-object/from16 v5, p1

    move/from16 v17, v8

    :goto_5
    const/4 v6, 0x0

    goto/16 :goto_7

    :cond_13
    const/16 v17, 0x0

    .line 3491
    const-string/jumbo v3, "verifier"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 3492
    const-string v3, "device"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3493
    invoke-static {v3}, Landroid/content/pm/VerifierDeviceIdentity;->parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    :goto_6
    move-object/from16 v5, p1

    goto :goto_5

    .line 3494
    :cond_14
    const-string/jumbo v3, "read-external-storage"

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    goto :goto_6

    .line 3496
    :cond_15
    const-string v3, "keyset-settings"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 3497
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v3, v2, v4}, Lcom/android/server/pm/KeySetManagerService;->readKeySetsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Landroid/util/ArrayMap;)V

    goto :goto_6

    .line 3498
    :cond_16
    const-string/jumbo v3, "version"

    invoke-virtual {v3, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    .line 3499
    const-string/jumbo v3, "volumeUuid"

    invoke-static {v2, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3501
    invoke-virtual {v1, v3}, Lcom/android/server/pm/Settings;->findOrCreateVersion(Ljava/lang/String;)Lcom/android/server/pm/Settings$VersionInfo;

    move-result-object v3

    .line 3502
    const-string/jumbo v5, "sdkVersion"

    const/4 v6, 0x0

    invoke-interface {v2, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    .line 3503
    const-string v5, "databaseVersion"

    invoke-interface {v2, v6, v5}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    iput v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    .line 3504
    invoke-static {v2, v8}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    .line 3506
    invoke-static {v2, v15}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    move-object/from16 v5, p1

    goto :goto_7

    :cond_17
    const/4 v6, 0x0

    .line 3507
    const-string v3, "domain-verifications"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_18

    .line 3509
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object/from16 v5, p1

    :try_start_6
    invoke-interface {v3, v5, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_7

    :catch_2
    move-exception v0

    goto/16 :goto_0

    :cond_18
    move-object/from16 v5, p1

    .line 3510
    const-string v3, "domain-verifications-legacy"

    invoke-virtual {v14, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    .line 3512
    iget-object v3, v1, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v3, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->readLegacySettings(Lcom/android/modules/utils/TypedXmlPullParser;)V

    goto :goto_7

    .line 3514
    :cond_19
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown element under <packages>: "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3515
    invoke-interface {v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3514
    invoke-static {v13, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3516
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    :goto_7
    move-object v9, v6

    move/from16 v8, v16

    move/from16 v12, v17

    move-object/from16 v3, v18

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v5, p1

    goto/16 :goto_2

    .line 3520
    :goto_8
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_a

    :catch_3
    move-exception v0

    move-object/from16 v5, p1

    move/from16 v16, v8

    move-object v6, v9

    .line 3524
    :goto_9
    :try_start_7
    invoke-virtual {v7, v9, v0}, Lcom/android/server/pm/ResilientAtomicFile;->failRead(Ljava/io/FileInputStream;Ljava/lang/Exception;)V

    .line 3527
    invoke-virtual/range {p0 .. p3}, Lcom/android/server/pm/Settings;->readSettingsLPw(Lcom/android/server/pm/Computer;Ljava/util/List;Landroid/util/ArrayMap;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_a
    if-eqz v7, :cond_1b

    .line 3529
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_1b
    return v16

    :goto_b
    if-eqz v7, :cond_1c

    .line 3399
    :try_start_8
    invoke-virtual {v7}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_c
    throw v1
.end method

.method public final readSharedUserLPw(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;Ljava/util/List;)V
    .locals 6

    .line 4658
    const-string/jumbo v0, "name"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4659
    invoke-static {p1}, Lcom/android/server/pm/Settings;->parseAppId(Lcom/android/modules/utils/TypedXmlPullParser;)I

    move-result v2

    .line 4660
    const-string/jumbo v3, "system"

    const/4 v4, 0x0

    invoke-interface {p1, v1, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v3

    const/4 v5, 0x5

    if-nez v0, :cond_0

    .line 4664
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error in package manager settings: <shared-user> has no name at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4666
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4664
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    .line 4668
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in package manager settings: shared-user "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " has bad appId "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " at "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4671
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4668
    invoke-static {v5, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto :goto_0

    .line 4673
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v2, v3, v4}, Lcom/android/server/pm/Settings;->addSharedUserLPw(Ljava/lang/String;III)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v1

    if-nez v1, :cond_2

    .line 4675
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Occurred while parsing settings at "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4677
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x6

    .line 4676
    invoke-static {v2, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v1, :cond_9

    .line 4683
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v0

    .line 4685
    :cond_3
    :goto_1
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_8

    const/4 v3, 0x3

    if-ne v2, v3, :cond_4

    .line 4686
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v4

    if-le v4, v0, :cond_8

    :cond_4
    if-eq v2, v3, :cond_3

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    goto :goto_1

    .line 4691
    :cond_5
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 4692
    const-string/jumbo v3, "sigs"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 4693
    iget-object v2, v1, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/pm/PackageSignatures;->readXml(Lcom/android/modules/utils/TypedXmlPullParser;Ljava/util/ArrayList;)V

    goto :goto_1

    .line 4694
    :cond_6
    const-string/jumbo v3, "perms"

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 4695
    invoke-virtual {v1}, Lcom/android/server/pm/SettingBase;->getLegacyPermissionState()Lcom/android/server/pm/permission/LegacyPermissionState;

    move-result-object v2

    invoke-virtual {p0, p1, v2, p3}, Lcom/android/server/pm/Settings;->readInstallPermissionsLPr(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/permission/LegacyPermissionState;Ljava/util/List;)V

    goto :goto_1

    .line 4697
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown element under <shared-user>: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4698
    invoke-interface {p1}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 4697
    invoke-static {v5, v2}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 4699
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_1

    :cond_8
    return-void

    .line 4703
    :cond_9
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public final readSplitVersionsLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 4

    .line 4551
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 4552
    const-string/jumbo v1, "version"

    const/4 v2, -0x1

    invoke-interface {p1, v0, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-eqz p0, :cond_1

    if-ltz v0, :cond_1

    .line 4554
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    array-length v1, v1

    .line 4557
    const-class v2, Ljava/lang/String;

    .line 4558
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v3

    .line 4557
    invoke-static {v2, v3, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->setSplitNames([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 4562
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_0

    .line 4564
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 4565
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object v1

    .line 4566
    aput v0, v1, p0

    .line 4567
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    goto :goto_0

    .line 4570
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object p0

    const/4 v1, 0x1

    .line 4569
    invoke-static {p0, v0, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([IIZ)[I

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setSplitRevisionCodes([I)Lcom/android/server/pm/PackageSetting;

    .line 4574
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public readStoppedLPw()V
    .locals 15

    .line 2706
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x4

    const-string v2, "PackageManager"

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2708
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mBackupStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2709
    :try_start_1
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v5, "Reading from backup stopped packages file\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2710
    const-string v4, "Need to read from backup stopped packages file"

    invoke-static {v1, v4}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2712
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 2716
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cleaning up stopped packages file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2718
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    :cond_0
    move-object v0, v3

    .line 2726
    :catch_1
    :cond_1
    :goto_0
    const-string v4, "Error reading package manager stopped packages"

    const-string v5, "Error reading stopped packages: "

    const/4 v6, 0x6

    const-string v7, "Error reading: "

    const/4 v8, 0x0

    if-nez v0, :cond_3

    .line 2727
    :try_start_2
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2728
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v3, "No stopped packages file found\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2729
    const-string v0, "No stopped packages file file; assuming all started"

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2734
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 2735
    invoke-virtual {v1, v8, v8}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2736
    invoke-virtual {v1, v8, v8}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_5

    :catch_3
    move-exception v0

    goto/16 :goto_6

    .line 2740
    :cond_2
    new-instance v0, Ljava/io/FileInputStream;

    iget-object v9, p0, Lcom/android/server/pm/Settings;->mStoppedPackagesFilename:Ljava/io/File;

    invoke-direct {v0, v9}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 2742
    :cond_3
    invoke-static {v0}, Landroid/util/Xml;->resolvePullParser(Ljava/io/InputStream;)Lcom/android/modules/utils/TypedXmlPullParser;

    move-result-object v9

    .line 2745
    :goto_2
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v10

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-eq v10, v11, :cond_4

    if-eq v10, v12, :cond_4

    goto :goto_2

    :cond_4
    if-eq v10, v11, :cond_5

    .line 2751
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    const-string v1, "No start tag found in stopped packages file\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    const-string v0, "No start tag found in package manager stopped packages"

    const/4 v1, 0x5

    invoke-static {v1, v0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    goto/16 :goto_7

    .line 2757
    :cond_5
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v10

    .line 2758
    :cond_6
    :goto_3
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->next()I

    move-result v11

    if-eq v11, v12, :cond_c

    const/4 v13, 0x3

    if-ne v11, v13, :cond_7

    .line 2760
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getDepth()I

    move-result v14

    if-le v14, v10, :cond_c

    :cond_7
    if-eq v11, v13, :cond_6

    if-ne v11, v1, :cond_8

    goto :goto_3

    .line 2766
    :cond_8
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    .line 2767
    const-string/jumbo v13, "pkg"

    invoke-virtual {v11, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 2768
    const-string/jumbo v11, "name"

    invoke-interface {v9, v3, v11}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2769
    iget-object v13, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v13, v11}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/pm/PackageSetting;

    if-eqz v13, :cond_9

    .line 2771
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/PackageSetting;->setStopped(ZI)V

    .line 2772
    const-string v11, "1"

    const-string/jumbo v14, "nl"

    invoke-interface {v9, v3, v14}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v11, v14}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    .line 2773
    invoke-virtual {v13, v12, v8}, Lcom/android/server/pm/PackageSetting;->setNotLaunched(ZI)V

    goto :goto_4

    .line 2776
    :cond_9
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "No package known for stopped package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2779
    :cond_a
    :goto_4
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 2781
    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown element under <stopped-packages>: "

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2782
    invoke-interface {v9}, Lcom/android/modules/utils/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v11, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    .line 2781
    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2783
    invoke-static {v9}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    goto :goto_3

    .line 2787
    :cond_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_7

    .line 2797
    :goto_5
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2798
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2800
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_7

    .line 2790
    :goto_6
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mReadMessages:Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2791
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 2793
    invoke-static {v2, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_d
    :goto_7
    return-void
.end method

.method public readUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 7

    .line 2602
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2603
    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v1

    .line 2604
    const-string/jumbo v3, "optional"

    const/4 v4, 0x1

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz p0, :cond_1

    const-wide/16 v5, 0x0

    cmp-long v3, v1, v5

    if-ltz v3, :cond_1

    .line 2607
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    .line 2610
    const-class v5, Ljava/lang/String;

    .line 2611
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v6

    .line 2610
    invoke-static {v5, v6, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/String;

    invoke-virtual {p2, v5}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2614
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v5

    array-length v5, v5

    if-ne v3, v5, :cond_0

    .line 2616
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 2618
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    .line 2619
    aput-wide v1, v3, p0

    .line 2620
    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 2622
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v1

    .line 2623
    aput-boolean v0, v1, p0

    .line 2624
    invoke-virtual {p2, v1}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    goto :goto_0

    .line 2627
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object p0

    .line 2626
    invoke-static {p0, v1, v2, v4}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesVersionsMajor([J)Lcom/android/server/pm/PackageSetting;

    .line 2630
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object p0

    .line 2629
    invoke-static {p0, v0}, Lcom/android/internal/util/ArrayUtils;->appendBooleanDuplicatesAllowed([ZZ)[Z

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesSdkLibrariesOptional([Z)Lcom/android/server/pm/PackageSetting;

    .line 2634
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public readUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlPullParser;Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    .line 2639
    const-string/jumbo p0, "name"

    const/4 v0, 0x0

    invoke-interface {p1, v0, p0}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 2640
    const-string/jumbo v1, "version"

    const-wide/16 v2, -0x1

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeLong(Ljava/lang/String;Ljava/lang/String;J)J

    move-result-wide v0

    if-eqz p0, :cond_1

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1

    .line 2643
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    array-length v2, v2

    .line 2646
    const-class v3, Ljava/lang/String;

    .line 2647
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v4

    .line 2646
    invoke-static {v3, v4, p0}, Lcom/android/internal/util/ArrayUtils;->appendElement(Ljava/lang/Class;[Ljava/lang/Object;Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p2, v3}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibraries([Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    .line 2650
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    array-length v3, v3

    if-ne v2, v3, :cond_0

    .line 2652
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lcom/android/internal/util/ArrayUtils;->indexOf([Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 2653
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v2

    .line 2654
    aput-wide v0, v2, p0

    .line 2655
    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    goto :goto_0

    .line 2658
    :cond_0
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p0

    const/4 v2, 0x1

    .line 2657
    invoke-static {p0, v0, v1, v2}, Lcom/android/internal/util/ArrayUtils;->appendLong([JJZ)[J

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/server/pm/PackageSetting;->setUsesStaticLibrariesVersions([J)Lcom/android/server/pm/PackageSetting;

    .line 2663
    :cond_1
    :goto_0
    invoke-static {p1}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    return-void
.end method

.method public registerAppIdLPw(Lcom/android/server/pm/PackageSetting;Z)Z
    .locals 2

    .line 1346
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1352
    :cond_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/pm/AppIdSettingMap;->registerExistingAppId(ILcom/android/server/pm/SettingBase;Ljava/lang/Object;)Z

    move-result p0

    goto :goto_1

    .line 1348
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->acquireAndRegisterNewAppId(Lcom/android/server/pm/SettingBase;)I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/server/pm/PackageSetting;->setAppId(I)Lcom/android/server/pm/PackageSetting;

    const/4 p0, 0x1

    .line 1354
    :goto_1
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p2

    if-ltz p2, :cond_2

    return p0

    .line 1355
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1356
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " could not be assigned a valid UID"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x5

    .line 1355
    invoke-static {v1, p0}, Lcom/android/server/pm/PackageManagerService;->reportSettingsProblem(ILjava/lang/String;)V

    .line 1357
    new-instance p0, Lcom/android/server/pm/PackageManagerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1358
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, -0x4

    invoke-direct {p0, p2, p1}, Lcom/android/server/pm/PackageManagerException;-><init>(ILjava/lang/String;)V

    throw p0
.end method

.method public registerObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 198
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->registerObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public removeAppIdLPw(I)V
    .locals 0

    .line 1508
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mAppIds:Lcom/android/server/pm/AppIdSettingMap;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/AppIdSettingMap;->removeSetting(I)V

    return-void
.end method

.method public removeCrossProfileIntentFiltersLPw(I)V
    .locals 10

    .line 4828
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    monitor-enter v0

    .line 4830
    :try_start_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4831
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4832
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 4835
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_4

    .line 4837
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    .line 4838
    iget-object v5, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v5, v4}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/CrossProfileIntentResolver;

    .line 4840
    new-instance v6, Landroid/util/ArraySet;

    .line 4841
    invoke-virtual {v5}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    .line 4842
    invoke-virtual {v6}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v2

    :cond_1
    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 4843
    invoke-virtual {v8}, Lcom/android/server/pm/CrossProfileIntentFilter;->getTargetUserId()I

    move-result v9

    if-ne v9, p1, :cond_1

    .line 4845
    invoke-virtual {v5, v8}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    const/4 v7, 0x1

    goto :goto_2

    :cond_2
    if-eqz v7, :cond_3

    .line 4849
    invoke-virtual {p0, v4}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 4852
    :cond_4
    monitor-exit v0

    return-void

    :goto_3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public removeDisabledSystemPackageLPw(Ljava/lang/String;)V
    .locals 2

    .line 951
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/pm/PackageSetting;

    if-eqz p1, :cond_0

    .line 953
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 955
    iget-object v1, v0, Lcom/android/server/pm/SharedUserSetting;->mDisabledPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v1, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    const/4 p1, 0x0

    .line 956
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    :cond_0
    return-void
.end method

.method public final removeInstallerPackageStatus(Ljava/lang/String;)V
    .locals 2

    .line 1492
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1495
    :goto_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1496
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v1, v0}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeInstallerPackage(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1498
    :cond_1
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mInstallerPackages:Lcom/android/server/utils/WatchedArraySet;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArraySet;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removePackageAndAppIdLPw(Ljava/lang/String;)Z
    .locals 2

    .line 1471
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/PackageSetting;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 1473
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeInstallerPackageStatus(Ljava/lang/String;)V

    .line 1474
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getSharedUserSettingLPr(Lcom/android/server/pm/PackageSetting;)Lcom/android/server/pm/SharedUserSetting;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 1476
    invoke-virtual {p1, v0}, Lcom/android/server/pm/SharedUserSetting;->removePackage(Lcom/android/server/pm/PackageSetting;)Z

    .line 1477
    invoke-virtual {p0, p1, v1}, Lcom/android/server/pm/Settings;->checkAndPruneSharedUserLPw(Lcom/android/server/pm/SharedUserSetting;Z)Z

    move-result p0

    return p0

    .line 1479
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeAppIdLPw(I)V

    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public removePendingDefaultBrowserLPw(I)Ljava/lang/String;
    .locals 0

    .line 1575
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->removeReturnOld(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public removeRenamedPackageLPw(Ljava/lang/String;)V
    .locals 0

    .line 837
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeUserLPw(I)V
    .locals 2

    .line 4804
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    .line 4805
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 4806
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageSetting;->removeUser(I)V

    goto :goto_0

    .line 4808
    :cond_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    .line 4810
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4811
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/pm/ResilientAtomicFile;->delete()V

    .line 4812
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 4813
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4815
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->removeCrossProfileIntentFiltersLPw(I)V

    .line 4817
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-static {v0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->-$$Nest$monUserRemoved(Lcom/android/server/pm/Settings$RuntimePermissionPersistence;I)V

    .line 4818
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    invoke-interface {v0, p1}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->clearUser(I)V

    .line 4820
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    .line 4824
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writeKernelRemoveUserLPr(I)V

    return-void

    :catchall_0
    move-exception p0

    .line 4813
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public setBlockUninstallLPw(ILjava/lang/String;Z)V
    .locals 1

    .line 2183
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/ArraySet;

    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    .line 2186
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2187
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1, v0}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    .line 2189
    :cond_0
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    return-void

    :cond_1
    if-eqz v0, :cond_2

    .line 2191
    invoke-virtual {v0, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2192
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2193
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchedSparseArray;->remove(I)V

    :cond_2
    return-void
.end method

.method public setDefaultRuntimePermissionsVersion(II)V
    .locals 0

    .line 1646
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setVersion(II)V

    return-void
.end method

.method public setPendingDefaultBrowserLPw(Ljava/lang/String;I)V
    .locals 0

    .line 1571
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2, p1}, Lcom/android/server/utils/WatchedSparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public setPermissionControllerVersion(J)V
    .locals 0

    .line 1650
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->setPermissionControllerVersion(J)V

    return-void
.end method

.method public snapshot()Lcom/android/server/pm/Settings;
    .locals 0

    .line 803
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mSnapshot:Lcom/android/server/utils/SnapshotCache;

    invoke-virtual {p0}, Lcom/android/server/utils/SnapshotCache;->snapshot()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/Settings;

    return-object p0
.end method

.method public bridge synthetic snapshot()Ljava/lang/Object;
    .locals 0

    .line 183
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->snapshot()Lcom/android/server/pm/Settings;

    move-result-object p0

    return-object p0
.end method

.method public systemReady(Lcom/android/server/pm/resolution/ComponentResolver;)Ljava/util/ArrayList;
    .locals 9

    .line 6754
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6755
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v2, 0x0

    move v3, v2

    .line 6756
    :goto_0
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4}, Lcom/android/server/utils/WatchedSparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 6757
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PreferredIntentResolver;

    .line 6758
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 6759
    invoke-virtual {v4}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_0
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6760
    iget-object v7, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v7, v7, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {p1, v7}, Lcom/android/server/pm/resolution/ComponentResolverLocked;->isActivityDefined(Landroid/content/ComponentName;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 6761
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 6764
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    move v5, v2

    .line 6765
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 6766
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/PreferredActivity;

    .line 6767
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Removing dangling preferred activity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Lcom/android/server/pm/PreferredActivity;->mPref:Lcom/android/server/pm/PreferredComponent;

    iget-object v8, v8, Lcom/android/server/pm/PreferredComponent;->mComponent:Landroid/content/ComponentName;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "PackageSettings"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6769
    invoke-virtual {v4, v6}, Lcom/android/server/pm/WatchedIntentResolver;->removeFilter(Lcom/android/server/pm/WatchedIntentFilter;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 6771
    :cond_2
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {v4, v3}, Lcom/android/server/utils/WatchedSparseArray;->keyAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 6774
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->onChanged()V

    return-object v0
.end method

.method public unregisterObserver(Lcom/android/server/utils/Watcher;)V
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mWatchable:Lcom/android/server/utils/WatchableImpl;

    invoke-virtual {p0, p1}, Lcom/android/server/utils/WatchableImpl;->unregisterObserver(Lcom/android/server/utils/Watcher;)V

    return-void
.end method

.method public updateRuntimePermissionsFingerprint(I)V
    .locals 0

    .line 1638
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->updateRuntimePermissionsFingerprint(I)V

    return-void
.end method

.method public writeAllRuntimePermissionsLPr()V
    .locals 5

    .line 1628
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getUserIds()[I

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget v3, v0, v2

    .line 1629
    iget-object v4, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {v4, v3}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeAllUsersPackageRestrictionsLPr()V
    .locals 1

    const/4 v0, 0x0

    .line 1607
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    return-void
.end method

.method public writeAllUsersPackageRestrictionsLPr(Z)V
    .locals 3

    .line 1611
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    if-eqz p1, :cond_1

    .line 1616
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1617
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->clear()V

    .line 1618
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1619
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 1618
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    .line 1622
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 1623
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1, p1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    goto :goto_1

    :cond_2
    :goto_2
    return-void
.end method

.method public final writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    const/4 p0, 0x0

    .line 2548
    const-string v0, "archive-state"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2549
    const-string v1, "installer-title"

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getInstallerTitle()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p0, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2550
    const-string v1, "archive-time"

    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getArchiveTimeMillis()J

    move-result-wide v2

    invoke-interface {p1, p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2551
    invoke-virtual {p2}, Lcom/android/server/pm/pkg/ArchiveState;->getActivityInfos()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;

    .line 2552
    const-string v2, "archive-activity-info"

    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2553
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getTitle()Ljava/lang/String;

    move-result-object v3

    const-string v4, "activity-title"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2557
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getOriginalComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 2554
    const-string/jumbo v4, "original-component-name"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2558
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 2560
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v3

    invoke-interface {v3}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2559
    const-string v4, "icon-path"

    invoke-interface {p1, p0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2562
    :cond_1
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 2564
    invoke-virtual {v1}, Lcom/android/server/pm/pkg/ArchiveState$ArchiveActivityInfo;->getMonochromeIconBitmap()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toAbsolutePath()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v1}, Ljava/nio/file/Path;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2563
    const-string/jumbo v3, "monochrome-icon-path"

    invoke-interface {p1, p0, v3, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2566
    :cond_2
    invoke-interface {p1, p0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2568
    :cond_3
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 5

    .line 2303
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mBlockUninstallPackages:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/ArraySet;

    if-eqz p0, :cond_1

    const/4 p2, 0x0

    .line 2305
    const-string v0, "block-uninstall-packages"

    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v1, 0x0

    .line 2306
    :goto_0
    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 2307
    const-string v2, "block-uninstall"

    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2308
    invoke-virtual {p0, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string/jumbo v4, "packageName"

    invoke-interface {p1, p2, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2309
    invoke-interface {p1, p2, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2311
    :cond_0
    invoke-interface {p1, p2, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    return-void
.end method

.method public writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 3

    const/4 v0, 0x0

    .line 2272
    const-string v1, "crossProfile-intent-filters"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2273
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mCrossProfileIntentResolvers:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/CrossProfileIntentResolver;

    if-eqz p0, :cond_0

    .line 2275
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/CrossProfileIntentFilter;

    .line 2276
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2277
    invoke-virtual {p2, p1}, Lcom/android/server/pm/CrossProfileIntentFilter;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2278
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2281
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V
    .locals 0

    .line 2286
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPendingDefaultBrowser:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 2287
    invoke-static {p1, p0}, Lcom/android/server/pm/Settings;->writeDefaultApps(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;)V

    return-void
.end method

.method public writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V
    .locals 5

    const/4 v0, 0x0

    .line 3169
    const-string/jumbo v1, "updated-package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3170
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3171
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3172
    const-string/jumbo v2, "realName"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3174
    :cond_0
    const-string v2, "codePath"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3175
    const-string v2, "ft"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3176
    const-string/jumbo v2, "ut"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3177
    const-string/jumbo v2, "version"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3178
    const-string/jumbo v2, "targetSdkVersion"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3179
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3180
    const-string/jumbo v2, "restrictUpdateHash"

    .line 3181
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 3180
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 3183
    :cond_1
    const-string/jumbo v2, "scannedAsStoppedSystemApp"

    .line 3184
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v3

    .line 3183
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3185
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3186
    const-string/jumbo v2, "nativeLibraryPath"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3188
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3189
    const-string/jumbo v2, "primaryCpuAbi"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3191
    :cond_3
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3192
    const-string/jumbo v2, "secondaryCpuAbi"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3194
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3195
    const-string v2, "cpuAbiOverride"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3198
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    if-nez v2, :cond_6

    .line 3199
    const-string/jumbo v2, "userId"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 3201
    :cond_6
    const-string/jumbo v2, "sharedUserId"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3203
    :goto_0
    const-string v2, "loadingProgress"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3204
    const-string v2, "loadingCompletedTime"

    .line 3205
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v3

    .line 3204
    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3207
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 3208
    const-string v2, "appMetadataFilePath"

    .line 3209
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v3

    .line 3208
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3212
    :cond_7
    const-string v2, "appMetadataSource"

    .line 3213
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v3

    .line 3212
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3215
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 3216
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v3

    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v4

    .line 3215
    invoke-virtual {p0, p1, v2, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 3219
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v2

    .line 3220
    invoke-virtual {p2}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object p2

    .line 3219
    invoke-virtual {p0, p1, v2, p2}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3222
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeIntToFile(Ljava/io/File;I)V
    .locals 2

    .line 3016
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    .line 3017
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->US_ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 3016
    invoke-static {p0, v0}, Landroid/os/FileUtils;->bytesToFile(Ljava/lang/String;[B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 3019
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Couldn\'t write "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "PackageSettings"

    invoke-static {p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public writeKernelMappingLPr()V
    .locals 6

    .line 2935
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2937
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2938
    new-instance v1, Landroid/util/ArraySet;

    array-length v2, v0

    invoke-direct {v1, v2}, Landroid/util/ArraySet;-><init>(I)V

    .line 2939
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_1

    aget-object v5, v0, v4

    .line 2940
    invoke-virtual {v1, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 2943
    :cond_1
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/PackageSetting;

    .line 2945
    invoke-virtual {v2}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 2946
    invoke-virtual {p0, v2}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1

    .line 2950
    :cond_2
    :goto_2
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v3, v0, :cond_3

    .line 2951
    invoke-virtual {v1, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2954
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2, v0}, Lcom/android/server/utils/WatchedArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v2, v4, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    return-void
.end method

.method public writeKernelMappingLPr(Lcom/android/server/pm/PackageSetting;)V
    .locals 2

    .line 2960
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2962
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getNotInstalledUserIds()[I

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr(Ljava/lang/String;I[I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public writeKernelMappingLPr(Ljava/lang/String;I[I)V
    .locals 6

    .line 2966
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v0, p1}, Lcom/android/server/utils/WatchedArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-nez v3, :cond_2

    .line 2968
    iget-object v4, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    .line 2969
    invoke-static {p3, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v4

    if-nez v4, :cond_1

    goto :goto_1

    :cond_1
    move v2, v1

    .line 2972
    :cond_2
    :goto_1
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    invoke-direct {v4, v5, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    .line 2975
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    .line 2977
    new-instance v0, Lcom/android/server/pm/Settings$KernelPackageState;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Lcom/android/server/pm/Settings$KernelPackageState;-><init>(Lcom/android/server/pm/Settings-IA;)V

    .line 2978
    iget-object v3, p0, Lcom/android/server/pm/Settings;->mKernelMapping:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3, p1, v0}, Lcom/android/server/utils/WatchedArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2982
    :cond_3
    iget p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->appId:I

    if-eq p1, p2, :cond_4

    .line 2983
    new-instance p1, Ljava/io/File;

    const-string v3, "appid"

    invoke-direct {p1, v4, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2984
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_4
    if-eqz v2, :cond_a

    move p1, v1

    .line 2990
    :goto_2
    array-length p2, p3

    if-ge p1, p2, :cond_7

    .line 2991
    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p2, :cond_5

    aget v2, p3, p1

    invoke-static {p2, v2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p2

    if-nez p2, :cond_6

    .line 2993
    :cond_5
    new-instance p2, Ljava/io/File;

    const-string v2, "excluded_userids"

    invoke-direct {p2, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    aget v2, p3, p1

    invoke-virtual {p0, p2, v2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_6
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 2999
    :cond_7
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    if-eqz p1, :cond_9

    .line 3000
    :goto_3
    iget-object p1, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    array-length p2, p1

    if-ge v1, p2, :cond_9

    .line 3001
    aget p1, p1, v1

    invoke-static {p3, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result p1

    if-nez p1, :cond_8

    .line 3002
    new-instance p1, Ljava/io/File;

    const-string p2, "clear_userid"

    invoke-direct {p1, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iget-object p2, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    aget p2, p2, v1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 3010
    :cond_9
    iput-object p3, v0, Lcom/android/server/pm/Settings$KernelPackageState;->excludedUserIds:[I

    :cond_a
    return-void
.end method

.method public final writeKernelRemoveUserLPr(I)V
    .locals 3

    .line 2926
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2928
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/pm/Settings;->mKernelMappingFilename:Ljava/io/File;

    const-string/jumbo v2, "remove_userid"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2931
    invoke-virtual {p0, v0, p1}, Lcom/android/server/pm/Settings;->writeIntToFile(Ljava/io/File;I)V

    return-void
.end method

.method public writeKeySetAliasesLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 4

    .line 3382
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getAliases()Landroid/util/ArrayMap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    const/4 v0, 0x0

    .line 3383
    const-string v1, "defined-keyset"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3384
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "alias"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3385
    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-string p2, "identifier"

    invoke-interface {p1, v0, p2, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3386
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeLPr(Lcom/android/server/pm/Computer;Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 2809
    const-string/jumbo v1, "renamed-package"

    const-string/jumbo v2, "shared-user"

    const-string/jumbo v3, "permissions"

    const-string/jumbo v4, "permission-trees"

    const-string/jumbo v5, "verifier"

    const-string/jumbo v6, "version"

    const-string/jumbo v7, "packages"

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 2815
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2817
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 2819
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->getSettingsFile()Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v11

    const/4 v12, 0x0

    .line 2822
    :try_start_0
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2824
    :try_start_1
    invoke-static {v13}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v14

    .line 2825
    sget-object v15, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v14, v12, v15}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2826
    const-string v15, "http://xmlpull.org/v1/doc/features.html#indent-output"

    const/4 v12, 0x1

    invoke-interface {v14, v15, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    const/4 v12, 0x0

    .line 2829
    invoke-interface {v14, v12, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const/4 v15, 0x0

    .line 2831
    :goto_0
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v15, v12, :cond_0

    .line 2832
    iget-object v12, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v12, v15}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    move-wide/from16 v16, v8

    .line 2833
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mVersion:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v8, v15}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/Settings$VersionInfo;

    const/4 v9, 0x0

    .line 2835
    invoke-interface {v14, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2836
    const-string/jumbo v9, "volumeUuid"

    invoke-static {v14, v9, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2837
    const-string/jumbo v9, "sdkVersion"

    iget v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    move/from16 v18, v15

    const/4 v15, 0x0

    invoke-interface {v14, v15, v9, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2838
    const-string v9, "databaseVersion"

    iget v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    invoke-interface {v14, v15, v9, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2839
    const-string v9, "buildFingerprint"

    iget-object v12, v8, Lcom/android/server/pm/Settings$VersionInfo;->buildFingerprint:Ljava/lang/String;

    invoke-static {v14, v9, v12}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 2841
    const-string v9, "fingerprint"

    iget-object v8, v8, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    invoke-static {v14, v9, v8}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    const/4 v15, 0x0

    .line 2842
    invoke-interface {v14, v15, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v15, v18, 0x1

    move-wide/from16 v8, v16

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    move-object v12, v13

    goto/16 :goto_5

    :cond_0
    move-wide/from16 v16, v8

    .line 2845
    iget-object v6, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    if-eqz v6, :cond_1

    const/4 v15, 0x0

    .line 2846
    invoke-interface {v14, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2847
    const-string v6, "device"

    iget-object v8, v0, Lcom/android/server/pm/Settings;->mVerifierDeviceIdentity:Landroid/content/pm/VerifierDeviceIdentity;

    invoke-virtual {v8}, Landroid/content/pm/VerifierDeviceIdentity;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v14, v15, v6, v8}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2848
    invoke-interface {v14, v15, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    const/4 v15, 0x0

    .line 2851
    invoke-interface {v14, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2852
    iget-object v5, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v5, v14}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissionTrees(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2853
    invoke-interface {v14, v15, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2855
    invoke-interface {v14, v15, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2856
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissions:Lcom/android/server/pm/permission/LegacyPermissionSettings;

    invoke-virtual {v4, v14}, Lcom/android/server/pm/permission/LegacyPermissionSettings;->writePermissions(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2857
    invoke-interface {v14, v15, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2859
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2860
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    .line 2865
    :cond_2
    invoke-virtual {v0, v14, v10, v4}, Lcom/android/server/pm/Settings;->writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_1

    .line 2868
    :cond_3
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mDisabledSysPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/PackageSetting;

    .line 2869
    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2874
    :cond_4
    invoke-virtual {v0, v14, v4}, Lcom/android/server/pm/Settings;->writeDisabledSysPackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageSetting;)V

    goto :goto_2

    .line 2877
    :cond_5
    iget-object v3, v0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v3}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/SharedUserSetting;

    const/4 v15, 0x0

    .line 2878
    invoke-interface {v14, v15, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2879
    const-string/jumbo v5, "name"

    iget-object v6, v4, Lcom/android/server/pm/SharedUserSetting;->name:Ljava/lang/String;

    invoke-interface {v14, v15, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2880
    const-string/jumbo v5, "userId"

    iget v6, v4, Lcom/android/server/pm/SharedUserSetting;->mAppId:I

    invoke-interface {v14, v15, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2881
    iget-object v4, v4, Lcom/android/server/pm/SharedUserSetting;->signatures:Lcom/android/server/pm/PackageSignatures;

    const-string/jumbo v5, "sigs"

    invoke-virtual {v4, v14, v5, v10}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 2882
    invoke-interface {v14, v15, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_3

    .line 2885
    :cond_6
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 2886
    iget-object v2, v0, Lcom/android/server/pm/Settings;->mRenamedPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v2}, Lcom/android/server/utils/WatchedArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    const/4 v15, 0x0

    .line 2887
    invoke-interface {v14, v15, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2888
    const-string/jumbo v4, "new"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v14, v15, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2889
    const-string/jumbo v4, "old"

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v14, v15, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2890
    invoke-interface {v14, v15, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_4

    .line 2894
    :cond_7
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mDomainVerificationManager:Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;

    const/4 v2, -0x1

    move-object/from16 v3, p1

    const/4 v4, 0x0

    invoke-interface {v1, v3, v14, v4, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationManagerInternal;->writeSettings(Lcom/android/server/pm/Computer;Lcom/android/modules/utils/TypedXmlSerializer;ZI)V

    .line 2897
    iget-object v1, v0, Lcom/android/server/pm/Settings;->mKeySetManagerService:Lcom/android/server/pm/KeySetManagerService;

    invoke-virtual {v1, v14}, Lcom/android/server/pm/KeySetManagerService;->writeKeySetManagerServiceLPr(Lcom/android/modules/utils/TypedXmlSerializer;)V

    const/4 v15, 0x0

    .line 2899
    invoke-interface {v14, v15, v7}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2901
    invoke-interface {v14}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2903
    invoke-virtual {v11, v13}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2905
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeKernelMappingLPr()V

    .line 2906
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writePackageListLPr()V

    move/from16 v1, p2

    .line 2907
    invoke-virtual {v0, v1}, Lcom/android/server/pm/Settings;->writeAllUsersPackageRestrictionsLPr(Z)V

    .line 2908
    invoke-virtual {v0}, Lcom/android/server/pm/Settings;->writeAllRuntimePermissionsLPr()V

    .line 2909
    const-string/jumbo v0, "package"

    .line 2910
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long v1, v1, v16

    .line 2909
    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2920
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catch_1
    move-exception v0

    move-object v15, v12

    .line 2914
    :goto_5
    :try_start_2
    const-string v1, "PackageManager"

    const-string v2, "Unable to write package manager settings, current changes will be lost at reboot"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v12, :cond_8

    .line 2917
    invoke-virtual {v11, v12}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_8
    if-eqz v11, :cond_9

    .line 2920
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    :cond_9
    return-void

    :goto_6
    if-eqz v11, :cond_a

    .line 2819
    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_a
    :goto_7
    throw v1
.end method

.method public final writeMimeGroupLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Map;)V
    .locals 6

    if-nez p2, :cond_0

    goto :goto_2

    .line 4535
    :cond_0
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    .line 4536
    const-string/jumbo v2, "mime-group"

    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4537
    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4539
    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 4540
    const-string/jumbo v4, "mime-type"

    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4541
    const-string/jumbo v5, "value"

    invoke-interface {p1, v1, v5, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4542
    invoke-interface {p1, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 4545
    :cond_1
    invoke-interface {p1, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public writePackageLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/ArrayList;Lcom/android/server/pm/PackageSetting;)V
    .locals 7

    const/4 v0, 0x0

    .line 3228
    const-string/jumbo v1, "package"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3229
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-interface {p1, v0, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3230
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3231
    const-string/jumbo v2, "realName"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRealName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3233
    :cond_0
    const-string v2, "codePath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPathString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3235
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 3236
    const-string/jumbo v2, "nativeLibraryPath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLegacyNativeLibraryPath()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3238
    :cond_1
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 3239
    const-string/jumbo v2, "primaryCpuAbi"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPrimaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3241
    :cond_2
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 3242
    const-string/jumbo v2, "secondaryCpuAbi"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSecondaryCpuAbiLegacy()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3244
    :cond_3
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 3245
    const-string v2, "cpuAbiOverride"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCpuAbiOverride()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3248
    :cond_4
    const-string/jumbo v2, "publicFlags"

    invoke-virtual {p3}, Lcom/android/server/pm/SettingBase;->getFlags()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3249
    const-string/jumbo v2, "privateFlags"

    invoke-virtual {p3}, Lcom/android/server/pm/SettingBase;->getPrivateFlags()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3250
    const-string v2, "ft"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLastModifiedTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3251
    const-string/jumbo v2, "ut"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLastUpdateTime()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3252
    const-string/jumbo v2, "version"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVersionCode()J

    move-result-wide v3

    invoke-interface {p1, v0, v2, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3253
    const-string/jumbo v2, "targetSdkVersion"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getTargetSdkVersion()I

    move-result v3

    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3254
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3255
    const-string/jumbo v2, "restrictUpdateHash"

    .line 3256
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getRestrictUpdateHash()[B

    move-result-object v3

    .line 3255
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBytesBase64(Ljava/lang/String;Ljava/lang/String;[B)Lorg/xmlpull/v1/XmlSerializer;

    .line 3258
    :cond_5
    const-string/jumbo v2, "scannedAsStoppedSystemApp"

    .line 3259
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isScannedAsStoppedSystemApp()Z

    move-result v3

    .line 3258
    invoke-interface {p1, v0, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3260
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->hasSharedUser()Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_7

    .line 3261
    const-string/jumbo v2, "userId"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3264
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAndroidPackage()Lcom/android/server/pm/pkg/AndroidPackage;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/server/pm/pkg/AndroidPackage;->isSdkLibrary()Z

    move-result v2

    if-eqz v2, :cond_6

    move v2, v3

    goto :goto_0

    :cond_6
    const/4 v2, 0x0

    .line 3263
    :goto_0
    const-string v4, "isSdkLibrary"

    invoke-interface {p1, v0, v4, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    .line 3266
    :cond_7
    const-string/jumbo v2, "sharedUserId"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v4

    invoke-interface {p1, v0, v2, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3268
    :goto_1
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v2

    .line 3269
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 3270
    const-string v5, "installer"

    invoke-interface {p1, v0, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3272
    :cond_8
    iget v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerPackageUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_9

    .line 3273
    const-string v6, "installerUid"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3275
    :cond_9
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mUpdateOwnerPackageName:Ljava/lang/String;

    if-eqz v4, :cond_a

    .line 3276
    const-string/jumbo v6, "updateOwner"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3278
    :cond_a
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInstallerAttributionTag:Ljava/lang/String;

    if-eqz v4, :cond_b

    .line 3279
    const-string v6, "installerAttributionTag"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3282
    :cond_b
    const-string/jumbo v4, "packageSource"

    iget v6, v2, Lcom/android/server/pm/InstallSource;->mPackageSource:I

    invoke-interface {p1, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3284
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->mIsOrphaned:Z

    if-eqz v4, :cond_c

    .line 3285
    const-string v4, "isOrphaned"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3287
    :cond_c
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_d

    .line 3288
    const-string v6, "installInitiator"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3290
    :cond_d
    iget-boolean v4, v2, Lcom/android/server/pm/InstallSource;->mIsInitiatingPackageUninstalled:Z

    if-eqz v4, :cond_e

    .line 3291
    const-string v4, "installInitiatorUninstalled"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3293
    :cond_e
    iget-object v4, v2, Lcom/android/server/pm/InstallSource;->mOriginatingPackageName:Ljava/lang/String;

    if-eqz v4, :cond_f

    .line 3294
    const-string v6, "installOriginator"

    invoke-interface {p1, v0, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3296
    :cond_f
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 3297
    const-string/jumbo v4, "volumeUuid"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getVolumeUuid()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v0, v4, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3299
    :cond_10
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v4

    if-eq v4, v5, :cond_11

    .line 3300
    const-string v4, "categoryHint"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getCategoryOverride()I

    move-result v5

    invoke-interface {p1, v0, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3302
    :cond_11
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isUpdateAvailable()Z

    move-result v4

    if-eqz v4, :cond_12

    .line 3303
    const-string/jumbo v4, "updateAvailable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3305
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isForceQueryableOverride()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 3306
    const-string v4, "forceQueryable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3308
    :cond_13
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isPendingRestore()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 3309
    const-string/jumbo v4, "pendingRestore"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3311
    :cond_14
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isDebuggable()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 3312
    const-string v4, "debuggable"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3314
    :cond_15
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->isLoading()Z

    move-result v4

    if-eqz v4, :cond_16

    .line 3315
    const-string v4, "isLoading"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 3317
    :cond_16
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getBaseRevisionCode()I

    move-result v3

    if-eqz v3, :cond_17

    .line 3318
    const-string v3, "baseRevisionCode"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getBaseRevisionCode()I

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3320
    :cond_17
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v3

    if-eqz v3, :cond_18

    .line 3322
    const-string/jumbo v3, "pageSizeCompat"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPageSizeAppCompatFlags()I

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3325
    :cond_18
    const-string v3, "loadingProgress"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLoadingProgress()F

    move-result v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeFloat(Ljava/lang/String;Ljava/lang/String;F)Lorg/xmlpull/v1/XmlSerializer;

    .line 3326
    const-string v3, "loadingCompletedTime"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getLoadingCompletedTime()J

    move-result-wide v4

    invoke-interface {p1, v0, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3328
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getDomainSetId()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "domainSetId"

    invoke-interface {p1, v0, v4, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3330
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_19

    .line 3331
    const-string v3, "appMetadataFilePath"

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataFilePath()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3333
    :cond_19
    const-string v3, "appMetadataSource"

    .line 3334
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getAppMetadataSource()I

    move-result v4

    .line 3333
    invoke-interface {p1, v0, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 3336
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3337
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesVersionsMajor()[J

    move-result-object v4

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesSdkLibrariesOptional()[Z

    move-result-object v5

    .line 3336
    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/pm/Settings;->writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V

    .line 3339
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibraries()[Ljava/lang/String;

    move-result-object v3

    .line 3340
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getUsesStaticLibrariesVersions()[J

    move-result-object v4

    .line 3339
    invoke-virtual {p0, p1, v3, v4}, Lcom/android/server/pm/Settings;->writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V

    .line 3342
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSignatures()Lcom/android/server/pm/PackageSignatures;

    move-result-object v3

    const-string/jumbo v4, "sigs"

    invoke-virtual {v3, p1, v4, p2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3344
    iget-object v2, v2, Lcom/android/server/pm/InstallSource;->mInitiatingPackageSignatures:Lcom/android/server/pm/PackageSignatures;

    if-eqz v2, :cond_1a

    .line 3345
    const-string v3, "install-initiator-sigs"

    invoke-virtual {v2, p1, v3, p2}, Lcom/android/server/pm/PackageSignatures;->writeXml(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3349
    :cond_1a
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeSigningKeySetLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3350
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeUpgradeKeySetsLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3351
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getKeySetData()Lcom/android/server/pm/PackageKeySetData;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeKeySetAliasesLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V

    .line 3352
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getMimeGroups()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/Settings;->writeMimeGroupLPr(Lcom/android/modules/utils/TypedXmlSerializer;Ljava/util/Map;)V

    .line 3356
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object p2

    if-nez p2, :cond_1b

    .line 3357
    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSplitNames()[Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3}, Lcom/android/server/pm/PackageSetting;->getSplitRevisionCodes()[I

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/Settings;->writeSplitVersionsLPr(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[I)V

    .line 3359
    :cond_1b
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePackageListLPr()V
    .locals 1

    const/4 v0, -0x1

    .line 3024
    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->writePackageListLPr(I)V

    return-void
.end method

.method public writePackageListLPr(I)V
    .locals 4

    .line 3028
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3029
    invoke-static {v0}, Landroid/os/SELinux;->fileSelabelLookup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3030
    const-string v1, "PackageSettings"

    if-nez v0, :cond_0

    .line 3031
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get SELinux context for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    .line 3032
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3031
    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3035
    :cond_0
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3036
    const-string v0, "Failed to set packages.list SELinux context"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x0

    .line 3039
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/pm/Settings;->writePackageListLPrInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3041
    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0}, Landroid/os/SELinux;->setFSCreateContext(Ljava/lang/String;)Z

    .line 3042
    throw p0
.end method

.method public final writePackageListLPrInternal(I)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 3047
    const-string v2, "PackageSettings"

    const-string v3, " "

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/pm/Settings;->getActiveUsers(Lcom/android/server/pm/UserManagerService;Z)Ljava/util/List;

    move-result-object v4

    .line 3048
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    new-array v7, v6, [I

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v6, :cond_0

    .line 3050
    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/UserInfo;

    iget v10, v10, Landroid/content/pm/UserInfo;->id:I

    aput v10, v7, v9

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, -0x1

    if-eq v1, v4, :cond_1

    .line 3053
    invoke-static {v7, v1}, Lcom/android/internal/util/ArrayUtils;->appendInt([II)[I

    move-result-object v7

    .line 3057
    :cond_1
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ".tmp"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3058
    new-instance v4, Lcom/android/internal/util/JournaledFile;

    iget-object v6, v0, Lcom/android/server/pm/Settings;->mPackageListFilename:Ljava/io/File;

    invoke-direct {v4, v6, v1}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    .line 3060
    invoke-virtual {v4}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v1

    const/4 v6, 0x0

    .line 3064
    :try_start_0
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 3065
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v10, Ljava/io/OutputStreamWriter;

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v11

    invoke-direct {v10, v9, v11}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v10}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 3066
    :try_start_1
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    const/16 v10, 0x3e8

    const/16 v11, 0x408

    const/16 v12, 0x1a0

    invoke-static {v6, v12, v10, v11}, Landroid/os/FileUtils;->setPermissions(Ljava/io/FileDescriptor;III)I

    .line 3068
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 3069
    iget-object v10, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v10}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_10

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/PackageSetting;

    .line 3070
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    if-nez v12, :cond_3

    .line 3071
    :try_start_2
    const-string v12, "android"

    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_2

    .line 3072
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skipping "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, " due to missing metadata"

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v2, v11}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v6, v1

    :goto_2
    move-object/from16 p1, v4

    goto/16 :goto_a

    .line 3076
    :cond_3
    :try_start_3
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isApex()Z

    move-result v12

    if-eqz v12, :cond_4

    goto :goto_1

    .line 3083
    :cond_4
    invoke-static {v11, v8}, Lcom/android/server/pm/parsing/PackageInfoUtils;->getDataDir(Lcom/android/server/pm/pkg/PackageStateInternal;I)Ljava/io/File;

    move-result-object v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    if-nez v12, :cond_5

    .line 3084
    :try_start_4
    const-string/jumbo v12, "null"
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :cond_5
    :try_start_5
    invoke-virtual {v12}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    .line 3086
    :goto_3
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v13

    invoke-interface {v13}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isDebuggable()Z

    move-result v13

    .line 3087
    new-instance v14, Landroid/util/IntArray;

    invoke-direct {v14}, Landroid/util/IntArray;-><init>()V

    .line 3088
    array-length v15, v7

    move v5, v8

    :goto_4
    if-ge v5, v15, :cond_6

    aget v8, v7, v5
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    move-object/from16 p1, v4

    .line 3089
    :try_start_6
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    .line 3090
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getAppId()I

    move-result v0

    .line 3089
    invoke-static {v8, v0}, Landroid/os/UserHandle;->getUid(II)I

    move-result v0

    invoke-interface {v4, v0}, Lcom/android/server/pm/permission/LegacyPermissionDataProvider;->getGidsForUid(I)[I

    move-result-object v0

    invoke-virtual {v14, v0}, Landroid/util/IntArray;->addAll([I)V

    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v8, 0x0

    goto :goto_4

    :catch_1
    move-exception v0

    :goto_5
    move-object v6, v1

    goto/16 :goto_a

    :catch_2
    move-exception v0

    move-object/from16 p1, v4

    goto :goto_5

    :cond_6
    move-object/from16 p1, v4

    const/16 v0, 0x20

    .line 3094
    invoke-virtual {v12, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_7

    move-object/from16 v0, p0

    move-object/from16 v4, p1

    const/4 v5, 0x1

    const/4 v8, 0x0

    goto/16 :goto_1

    :cond_7
    const/4 v0, 0x0

    .line 3117
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 3118
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3119
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3120
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getUid()I

    move-result v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz v13, :cond_8

    .line 3121
    const-string v0, " 1 "

    goto :goto_6

    :cond_8
    const-string v0, " 0 "

    :goto_6
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3122
    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3123
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3124
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getSeInfo()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3125
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3126
    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    move-result v0

    .line 3127
    invoke-virtual {v14}, Landroid/util/IntArray;->size()I

    move-result v4

    if-lez v4, :cond_9

    const/4 v4, 0x0

    .line 3128
    invoke-virtual {v14, v4}, Landroid/util/IntArray;->get(I)I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    :goto_7
    if-ge v5, v0, :cond_a

    .line 3130
    const-string v8, ","

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3131
    invoke-virtual {v14, v5}, Landroid/util/IntArray;->get(I)I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    .line 3134
    const-string/jumbo v0, "none"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3136
    :cond_a
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3137
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileableByShell()Z

    move-result v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    const-string v5, "0"

    const-string v8, "1"

    if-eqz v0, :cond_b

    move-object v0, v8

    goto :goto_8

    :cond_b
    move-object v0, v5

    :goto_8
    :try_start_7
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3138
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3139
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->getLongVersionCode()J

    move-result-wide v12

    invoke-virtual {v6, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 3140
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3141
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getPkg()Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/pm/parsing/pkg/AndroidPackageInternal;->isProfileable()Z

    move-result v0

    if-eqz v0, :cond_c

    move-object v5, v8

    :cond_c
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3142
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3143
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 3144
    const-string v0, "@system"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3145
    :cond_d
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->isProduct()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3146
    const-string v0, "@product"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3147
    :cond_e
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    if-eqz v0, :cond_f

    .line 3148
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 3149
    invoke-virtual {v11}, Lcom/android/server/pm/PackageSetting;->getInstallSource()Lcom/android/server/pm/InstallSource;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/pm/InstallSource;->mInstallerPackageName:Ljava/lang/String;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 3151
    :cond_f
    const-string v0, "@null"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3153
    :goto_9
    const-string v0, "\n"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3154
    invoke-virtual {v1, v6}, Ljava/io/BufferedWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-object/from16 v0, p0

    move v8, v4

    const/4 v5, 0x1

    move-object/from16 v4, p1

    goto/16 :goto_1

    :cond_10
    move-object/from16 p1, v4

    .line 3156
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 3157
    invoke-static {v9}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 3158
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    .line 3159
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    return-void

    :catch_3
    move-exception v0

    goto/16 :goto_2

    .line 3161
    :goto_a
    const-string v1, "Failed to write packages.list"

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3162
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 3163
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/util/JournaledFile;->rollback()V

    return-void
.end method

.method public writePackageRestrictions(IJZ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p1

    .line 2354
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/pm/Settings;->getUserPackagesStateFile(I)Lcom/android/server/pm/ResilientAtomicFile;

    move-result-object v2

    const/4 v3, 0x0

    .line 2356
    :try_start_0
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez p4, :cond_1

    .line 2358
    :try_start_1
    iget-object v7, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v7, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    move-result v7

    sub-int/2addr v7, v6

    if-gez v7, :cond_0

    .line 2360
    const-string v0, "PackageSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cancel writing package restrictions for user="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2361
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1b

    .line 2539
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_0
    move-exception v0

    goto/16 :goto_7

    .line 2363
    :cond_0
    :try_start_2
    iget-object v8, v0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v8, v1, v7}, Landroid/util/SparseIntArray;->put(II)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2367
    :cond_1
    :try_start_3
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v7
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2374
    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 2376
    :try_start_5
    iget-object v4, v0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->boostPriorityForPackageManagerTracedLockedSection()V

    monitor-enter v4
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2377
    :try_start_6
    invoke-static {v7}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    move-result-object v8

    .line 2378
    sget-object v9, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {v8, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 2379
    const-string v9, "http://xmlpull.org/v1/doc/features.html#indent-output"

    invoke-interface {v8, v9, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->setFeature(Ljava/lang/String;Z)V

    .line 2382
    const-string/jumbo v9, "package-restrictions"

    invoke-interface {v8, v3, v9}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2388
    iget-object v9, v0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    invoke-virtual {v9}, Lcom/android/server/utils/WatchedArrayMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_19

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/pm/PackageSetting;

    .line 2389
    invoke-virtual {v10, v1}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v11

    .line 2396
    const-string/jumbo v12, "pkg"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2397
    const-string/jumbo v12, "name"

    invoke-virtual {v10}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v8, v3, v12, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2398
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmp-long v10, v12, v14

    if-eqz v10, :cond_2

    .line 2399
    const-string v10, "ceDataInode"

    .line 2400
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getCeDataInode()J

    move-result-wide v12

    .line 2399
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :catchall_1
    move-exception v0

    goto/16 :goto_5

    .line 2402
    :cond_2
    :goto_1
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    cmp-long v10, v12, v14

    if-eqz v10, :cond_3

    .line 2403
    const-string v10, "deDataInode"

    .line 2404
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDeDataInode()J

    move-result-wide v12

    .line 2403
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2406
    :cond_3
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstalled()Z

    move-result v10

    if-nez v10, :cond_4

    .line 2407
    const-string v10, "inst"

    invoke-interface {v8, v3, v10, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2409
    :cond_4
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isStopped()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 2410
    const-string/jumbo v10, "stopped"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2412
    :cond_5
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isNotLaunched()Z

    move-result v10

    if-eqz v10, :cond_6

    .line 2413
    const-string/jumbo v10, "nl"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2415
    :cond_6
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isHidden()Z

    move-result v10

    if-eqz v10, :cond_7

    .line 2416
    const-string v10, "hidden"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2418
    :cond_7
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v10

    if-eqz v10, :cond_8

    .line 2419
    const-string v10, "distraction_flags"

    .line 2420
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDistractionFlags()I

    move-result v12

    .line 2419
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2422
    :cond_8
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_9

    .line 2423
    const-string/jumbo v10, "suspended"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2425
    :cond_9
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isInstantApp()Z

    move-result v10

    if-eqz v10, :cond_a

    .line 2426
    const-string v10, "instant-app"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2428
    :cond_a
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isVirtualPreload()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 2429
    const-string/jumbo v10, "virtual-preload"

    invoke-interface {v8, v3, v10, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2431
    :cond_b
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v10

    if-eqz v10, :cond_c

    .line 2432
    const-string v10, "enabled"

    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledState()I

    move-result v12

    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2434
    :cond_c
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    .line 2435
    const-string v10, "enabledCaller"

    .line 2436
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getLastDisableAppCaller()Ljava/lang/String;

    move-result-object v12

    .line 2435
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2438
    :cond_d
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v10

    if-eqz v10, :cond_e

    .line 2439
    const-string v10, "install-reason"

    .line 2440
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getInstallReason()I

    move-result v12

    .line 2439
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2442
    :cond_e
    const-string v10, "first-install-time"

    .line 2443
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getFirstInstallTimeMillis()J

    move-result-wide v12

    .line 2442
    invoke-interface {v8, v3, v10, v12, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLongHex(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2444
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v10

    if-eqz v10, :cond_f

    .line 2446
    const-string/jumbo v10, "uninstall-reason"

    .line 2447
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getUninstallReason()I

    move-result v12

    .line 2446
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2449
    :cond_f
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_10

    .line 2450
    const-string v10, "harmful-app-warning"

    .line 2451
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getHarmfulAppWarning()Ljava/lang/String;

    move-result-object v12

    .line 2450
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2453
    :cond_10
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 2454
    const-string/jumbo v10, "splash-screen-theme"

    .line 2455
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getSplashScreenTheme()Ljava/lang/String;

    move-result-object v12

    .line 2454
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2457
    :cond_11
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v10

    if-eqz v10, :cond_12

    .line 2459
    const-string/jumbo v10, "min-aspect-ratio"

    .line 2460
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getMinAspectRatio()I

    move-result v12

    .line 2459
    invoke-interface {v8, v3, v10, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 2462
    :cond_12
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->isSuspended()Z

    move-result v10

    if-eqz v10, :cond_14

    move v10, v5

    .line 2463
    :goto_2
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/utils/WatchedArrayMap;->size()I

    move-result v12

    if-ge v10, v12, :cond_14

    .line 2465
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/utils/WatchedArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/UserPackage;

    .line 2466
    const-string/jumbo v13, "suspend-params"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2467
    const-string/jumbo v13, "suspending-package"

    iget-object v12, v12, Landroid/content/pm/UserPackage;->packageName:Ljava/lang/String;

    invoke-interface {v8, v3, v13, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2474
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getSuspendParams()Lcom/android/server/utils/WatchedArrayMap;

    move-result-object v12

    invoke-virtual {v12, v10}, Lcom/android/server/utils/WatchedArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/pm/pkg/SuspendParams;

    if-eqz v12, :cond_13

    .line 2476
    invoke-virtual {v12, v8}, Lcom/android/server/pm/pkg/SuspendParams;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2478
    :cond_13
    const-string/jumbo v12, "suspend-params"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 2481
    :cond_14
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getEnabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_16

    .line 2482
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_16

    .line 2483
    const-string v12, "enabled-components"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v5

    .line 2484
    :goto_3
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_15

    .line 2485
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2486
    const-string/jumbo v13, "name"

    .line 2487
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2486
    invoke-interface {v8, v3, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2488
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 2490
    :cond_15
    const-string v10, "enabled-components"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2492
    :cond_16
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getDisabledComponents()Landroid/util/ArraySet;

    move-result-object v10

    if-eqz v10, :cond_18

    .line 2493
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v12

    if-lez v12, :cond_18

    .line 2494
    const-string v12, "disabled-components"

    invoke-interface {v8, v3, v12}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    move v12, v5

    .line 2495
    :goto_4
    invoke-virtual {v10}, Landroid/util/ArraySet;->size()I

    move-result v13

    if-ge v12, v13, :cond_17

    .line 2496
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2497
    const-string/jumbo v13, "name"

    .line 2498
    invoke-virtual {v10, v12}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    .line 2497
    invoke-interface {v8, v3, v13, v14}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2499
    const-string v13, "item"

    invoke-interface {v8, v3, v13}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 2501
    :cond_17
    const-string v10, "disabled-components"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2503
    :cond_18
    invoke-interface {v11}, Lcom/android/server/pm/pkg/PackageUserState;->getArchiveState()Lcom/android/server/pm/pkg/ArchiveState;

    move-result-object v10

    invoke-virtual {v0, v8, v10}, Lcom/android/server/pm/Settings;->writeArchiveStateLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/pkg/ArchiveState;)V

    .line 2505
    const-string/jumbo v10, "pkg"

    invoke-interface {v8, v3, v10}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto/16 :goto_0

    .line 2508
    :cond_19
    invoke-virtual {v0, v8, v1, v6}, Lcom/android/server/pm/Settings;->writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V

    .line 2509
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2510
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeCrossProfileIntentFiltersLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2511
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeDefaultAppsLPr(Lorg/xmlpull/v1/XmlSerializer;I)V

    .line 2512
    invoke-virtual {v0, v8, v1}, Lcom/android/server/pm/Settings;->writeBlockUninstallPackagesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V

    .line 2514
    const-string/jumbo v0, "package-restrictions"

    invoke-interface {v8, v3, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2516
    invoke-interface {v8}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 2517
    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    .line 2519
    invoke-virtual {v2, v7}, Lcom/android/server/pm/ResilientAtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 2526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package-user-"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2527
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long v3, v3, p2

    .line 2526
    invoke-static {v0, v3, v4}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 2539
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    return-void

    :catchall_2
    move-exception v0

    move-object v1, v0

    goto :goto_a

    :catch_0
    move-exception v0

    move-object v3, v7

    goto :goto_8

    .line 2517
    :goto_5
    :try_start_8
    monitor-exit v4
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->resetPriorityAfterPackageManagerTracedLockedSection()V

    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_3
    move-exception v0

    move-object v3, v7

    goto :goto_7

    :catch_1
    move-exception v0

    .line 2369
    :try_start_a
    const-string v1, "PackageManager"

    const-string v5, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v5, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2372
    monitor-exit v4
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    if-eqz v2, :cond_1b

    .line 2539
    :goto_6
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V

    goto :goto_9

    .line 2374
    :goto_7
    :try_start_b
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catch_2
    move-exception v0

    .line 2532
    :goto_8
    :try_start_d
    const-string v1, "PackageManager"

    const-string v4, "Unable to write package manager package restrictions,  current changes will be lost at reboot"

    invoke-static {v1, v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    if-eqz v3, :cond_1a

    .line 2536
    invoke-virtual {v2, v3}, Lcom/android/server/pm/ResilientAtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    :cond_1a
    if-eqz v2, :cond_1b

    goto :goto_6

    :cond_1b
    :goto_9
    return-void

    :goto_a
    if-eqz v2, :cond_1c

    .line 2354
    :try_start_e
    invoke-virtual {v2}, Lcom/android/server/pm/ResilientAtomicFile;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    goto :goto_b

    :catchall_4
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1c
    :goto_b
    throw v1
.end method

.method public writePackageRestrictions([Ljava/lang/Integer;)V
    .locals 6

    .line 2341
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2342
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 2343
    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, p1, v3

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v5, 0x1

    .line 2344
    invoke-virtual {p0, v4, v0, v1, v5}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writePackageRestrictionsLPr(I)V
    .locals 1

    const/4 v0, 0x0

    .line 2317
    invoke-virtual {p0, p1, v0}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(IZ)V

    return-void
.end method

.method public writePackageRestrictionsLPr(IZ)V
    .locals 6

    .line 2321
    invoke-virtual {p0}, Lcom/android/server/pm/Settings;->invalidatePackageCache()V

    .line 2323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    if-eqz p2, :cond_0

    .line 2326
    invoke-virtual {p0, p1, v3, v4, p2}, Lcom/android/server/pm/Settings;->writePackageRestrictions(IJZ)V

    return-void

    .line 2331
    :cond_0
    iget-object v1, p0, Lcom/android/server/pm/Settings;->mPackageRestrictionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 2332
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 2333
    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPendingAsyncPackageRestrictionsWrites:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v0}, Landroid/util/SparseIntArray;->put(II)V

    .line 2334
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2335
    new-instance v0, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;

    move-object v1, p0

    move v2, p1

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/pm/Settings$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/pm/Settings;IJZ)V

    .line 2336
    iget-object p0, v1, Lcom/android/server/pm/Settings;->mHandler:Landroid/os/Handler;

    const/16 p1, 0x1e

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void

    :catchall_0
    move-exception v0

    move-object p0, v0

    .line 2334
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public writePermissionStateForUserLPr(IZ)V
    .locals 8

    if-eqz p2, :cond_0

    .line 6004
    iget-object v0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    iget-object v2, p0, Lcom/android/server/pm/Settings;->mPermissionDataProvider:Lcom/android/server/pm/permission/LegacyPermissionDataProvider;

    iget-object v3, p0, Lcom/android/server/pm/Settings;->mPackages:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v4, p0, Lcom/android/server/pm/Settings;->mSharedUsers:Lcom/android/server/utils/WatchedArrayMap;

    iget-object v6, p0, Lcom/android/server/pm/Settings;->mLock:Lcom/android/server/pm/PackageManagerTracedLock;

    const/4 v7, 0x1

    const/4 v5, 0x0

    move v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUser(ILcom/android/server/pm/permission/LegacyPermissionDataProvider;Lcom/android/server/utils/WatchedArrayMap;Lcom/android/server/utils/WatchedArrayMap;Landroid/os/Handler;Lcom/android/server/pm/PackageManagerTracedLock;Z)V

    return-void

    :cond_0
    move v1, p1

    .line 6007
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mRuntimePermissionsPersistence:Lcom/android/server/pm/Settings$RuntimePermissionPersistence;

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings$RuntimePermissionPersistence;->writeStateForUserAsync(I)V

    return-void
.end method

.method public writePersistentPreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;I)V
    .locals 3

    const/4 v0, 0x0

    .line 2258
    const-string/jumbo v1, "persistent-preferred-activities"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2259
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPersistentPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PersistentPreferredIntentResolver;

    if-eqz p0, :cond_0

    .line 2261
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PersistentPreferredActivity;

    .line 2262
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2263
    invoke-virtual {p2, p1}, Lcom/android/server/pm/PersistentPreferredActivity;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 2264
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2267
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writePreferredActivitiesLPr(Lcom/android/modules/utils/TypedXmlSerializer;IZ)V
    .locals 3

    const/4 v0, 0x0

    .line 2244
    const-string/jumbo v1, "preferred-activities"

    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2245
    iget-object p0, p0, Lcom/android/server/pm/Settings;->mPreferredActivities:Lcom/android/server/utils/WatchedSparseArray;

    invoke-virtual {p0, p2}, Lcom/android/server/utils/WatchedSparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/pm/PreferredIntentResolver;

    if-eqz p0, :cond_0

    .line 2247
    invoke-virtual {p0}, Lcom/android/server/IntentResolver;->filterSet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/server/pm/PreferredActivity;

    .line 2248
    const-string v2, "item"

    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2249
    invoke-virtual {p2, p1, p3}, Lcom/android/server/pm/PreferredActivity;->writeToXml(Lcom/android/modules/utils/TypedXmlSerializer;Z)V

    .line 2250
    invoke-interface {p1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    .line 2253
    :cond_0
    invoke-interface {p1, v0, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public writeSigningKeySetLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 4

    const/4 p0, 0x0

    .line 3364
    const-string/jumbo v0, "proper-signing-keyset"

    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3365
    const-string v1, "identifier"

    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getProperSigningKeySet()J

    move-result-wide v2

    invoke-interface {p1, p0, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3366
    invoke-interface {p1, p0, v0}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public final writeSplitVersionsLPr(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[I)V
    .locals 6

    .line 4579
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result p0

    if-nez p0, :cond_1

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 4583
    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 4585
    aget-object v1, p2, v0

    .line 4586
    aget v2, p3, v0

    const/4 v3, 0x0

    .line 4587
    const-string/jumbo v4, "split-version"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4588
    const-string/jumbo v5, "name"

    invoke-interface {p1, v3, v5, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4589
    const-string/jumbo v1, "version"

    invoke-interface {p1, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4590
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public writeUpgradeKeySetsLPr(Lcom/android/modules/utils/TypedXmlSerializer;Lcom/android/server/pm/PackageKeySetData;)V
    .locals 6

    .line 3371
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->isUsingUpgradeKeySets()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 3372
    invoke-virtual {p2}, Lcom/android/server/pm/PackageKeySetData;->getUpgradeKeySets()[J

    move-result-object p0

    array-length p2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    aget-wide v1, p0, v0

    const/4 v3, 0x0

    .line 3373
    const-string/jumbo v4, "upgrade-keyset"

    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 3374
    const-string v5, "identifier"

    invoke-interface {p1, v3, v5, v1, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 3375
    invoke-interface {p1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public writeUserRestrictionsLPw(Lcom/android/server/pm/PackageSetting;Lcom/android/server/pm/PackageSetting;)V
    .locals 4

    .line 1369
    invoke-virtual {p1}, Lcom/android/server/pm/PackageSetting;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/pm/Settings;->getPackageLPr(Ljava/lang/String;)Lcom/android/server/pm/PackageSetting;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 1373
    :cond_0
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/pm/Settings;->getAllUsers(Lcom/android/server/pm/UserManagerService;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_2

    .line 1377
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    if-nez p2, :cond_3

    .line 1379
    sget-object v2, Lcom/android/server/pm/pkg/PackageUserState;->DEFAULT:Lcom/android/server/pm/pkg/PackageUserState;

    goto :goto_1

    .line 1380
    :cond_3
    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p2, v2}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v2

    .line 1381
    :goto_1
    iget v3, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1382
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v1}, Lcom/android/server/pm/Settings;->writePackageRestrictionsLPr(I)V

    goto :goto_0

    :cond_4
    :goto_2
    return-void
.end method

.method public writeUsesSdkLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J[Z)V
    .locals 8

    .line 2668
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_1

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 2672
    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2674
    aget-object v1, p2, v0

    .line 2675
    aget-wide v2, p3, v0

    .line 2676
    aget-boolean v4, p4, v0

    const/4 v5, 0x0

    .line 2677
    const-string/jumbo v6, "uses-sdk-lib"

    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2678
    const-string/jumbo v7, "name"

    invoke-interface {p1, v5, v7, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2679
    const-string/jumbo v1, "version"

    invoke-interface {p1, v5, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2680
    const-string/jumbo v1, "optional"

    invoke-interface {p1, v5, v1, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 2681
    invoke-interface {p1, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public writeUsesStaticLibLPw(Lcom/android/modules/utils/TypedXmlSerializer;[Ljava/lang/String;[J)V
    .locals 7

    .line 2687
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    invoke-static {p3}, Lcom/android/internal/util/ArrayUtils;->isEmpty([J)Z

    move-result p0

    if-nez p0, :cond_1

    array-length p0, p2

    array-length v0, p3

    if-eq p0, v0, :cond_0

    goto :goto_1

    .line 2691
    :cond_0
    array-length p0, p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_1

    .line 2693
    aget-object v1, p2, v0

    .line 2694
    aget-wide v2, p3, v0

    const/4 v4, 0x0

    .line 2695
    const-string/jumbo v5, "uses-static-lib"

    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2696
    const-string/jumbo v6, "name"

    invoke-interface {p1, v4, v6, v1}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 2697
    const-string/jumbo v1, "version"

    invoke-interface {p1, v4, v1, v2, v3}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 2698
    invoke-interface {p1, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method
